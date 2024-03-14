import 'dart:io';

import 'package:certenz/l10n/locale_keys.g.dart';
import 'package:certenz/src/blocs/auth/auth_bloc.dart';
import 'package:certenz/src/config/constant.dart';
import 'package:certenz/src/config/screen.dart';
import 'package:certenz/src/config/theme/colors.dart';
import 'package:certenz/src/data/models/user/user_card.dart';
import 'package:certenz/src/data/services/dummy_service.dart';
import 'package:certenz/src/utils/logger.dart';
import 'package:certenz/src/utils/utils.dart';
import 'package:certenz/src/widgets/buttons/button_primary.dart';
import 'package:certenz/src/widgets/dialogs/dialog_custom.dart';
import 'package:certenz/src/widgets/dialogs/hide_dialog.dart';
import 'package:certenz/src/widgets/dialogs/loading_dialog.dart';
import 'package:certenz/src/widgets/dialogs/ux_toast_wrapper.dart';
import 'package:certenz/src/widgets/forms/dropdown_custom.dart';
import 'package:certenz/src/widgets/forms/textfield_custom.dart';
import 'package:dio/dio.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:image_picker/image_picker.dart';

class KtpVerificationPage extends StatefulWidget {
  const KtpVerificationPage({super.key});

  @override
  State<KtpVerificationPage> createState() => _KtpVerificationPageState();
}

class _KtpVerificationPageState extends State<KtpVerificationPage> {
  TextEditingController nikController = TextEditingController();
  TextEditingController nameController = TextEditingController();
  TextEditingController addressController = TextEditingController();
  TextEditingController rtController = TextEditingController();
  TextEditingController rwController = TextEditingController();
  TextEditingController villageController = TextEditingController();
  TextEditingController districtController = TextEditingController();
  TextEditingController occupationController = TextEditingController();

  String? religion;
  String? maritalStatus;
  String? nationality;

  File? _imageFiles;
  final picker = ImagePicker();

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  Future<void> _pickImage(ImageSource source) async {
    final pickedFile = await picker.pickImage(source: source);
    XFile? xFilePick = pickedFile;

    if (xFilePick != null) {
      setState(() {
        _imageFiles = File(xFilePick.path);
      });

      if (context.mounted) {
        context
            .read<AuthBloc>()
            .add(AuthEvent.getUploadKtp(imageFile: _imageFiles!));
      }
    } else {
      if (context.mounted) {
        ScaffoldMessenger.of(context)
            .showSnackBar(const SnackBar(content: Text('Nothing is selected')));
      }
    }
  }

  _selectImage() async {
    showModalBottomSheet(
      context: context,
      builder: (context) {
        return Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ListTile(
              leading: const Icon(Icons.camera_alt),
              title: Text(
                LocaleKeys.text_image_camera.tr(),
              ),
              onTap: () {
                _pickImage(ImageSource.camera);
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.image),
              title: Text(
                LocaleKeys.text_image_galery.tr(),
              ),
              onTap: () {
                _pickImage(ImageSource.gallery);
                Navigator.pop(context);
              },
            ),
          ],
        );
      },
    );
  }

  _dialog(BuildContext context) {
    return DialogCustom(
      width: .9,
      height: .5,
      title: LocaleKeys.privacy_terms_title.tr(),
      child: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              LocaleKeys.privacy_terms_subtitle.tr(),
              style: GoogleFonts.manrope(
                fontSize: AppConstants.kFontSizeS,
                color: AppColors.neutralN30,
              ),
            ),
            const SizedBox(height: 24),
            Text(
              LocaleKeys.privacy_terms_description.tr(),
              style: const TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: AppConstants.kFontSizeS,
                color: AppColors.neutralN20,
              ),
            ),
            Markdown(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              styleSheet: MarkdownStyleSheet(
                  p: const TextStyle(
                    color: AppColors.neutralN30,
                  ),
                  listBullet: const TextStyle(
                    color: AppColors.neutralN30,
                  )),
              data: DummyService.privacy.map((e) => "- $e").join("\n"),
            ),
            const SizedBox(height: 40),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text(
                    LocaleKeys.button_cancel.tr(),
                    style: const TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: AppConstants.kFontSizeS,
                      color: AppColors.orange,
                    ),
                  ),
                ),
                const SizedBox(width: 10),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.30,
                  child: BtnPrimary(
                    onTap: () {
                      Navigator.pop(context);
                      if (context.mounted) {
                        _handleSubmit().then((value) {
                          if (value != null) {
                            context
                                .read<AuthBloc>()
                                .add(AuthEvent.verifUser(formData: value));
                          }
                        });
                      }
                    },
                    title: LocaleKeys.button_agree.tr(),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  void _autoFillData(UserCard user) {
    String? rtRw = user.rtRw;
    String rt = '';
    String rw = '';

    if (rtRw != null) {
      List<String> rtRwParts = rtRw.split("/");
      if (rtRwParts.length >= 2) {
        rt = rtRwParts[0]; // Ambil bagian pertama (RT)
        rw = rtRwParts[1]; // Ambil bagian kedua (RW)
      }
    }

    nikController.text = user.nik ?? "";
    nameController.text = user.fullName ?? "";
    addressController.text = user.address ?? "";
    rtController.text = rt;
    rwController.text = rw;
    villageController.text = user.administrativeVillage ?? "";
    districtController.text = user.district ?? "";
    occupationController.text = user.occupation ?? "";
  }

  Future<FormData?> _handleSubmit() async {
    if (_imageFiles == null) {
      UXToast.show(
        message: LocaleKeys.validation_input_is_not_empty.tr(args: [
          LocaleKeys.form_hint_text_id_card.tr(),
        ]),
      );
      return null;
    }

    FormData formData = FormData.fromMap({
      "card_image": await MultipartFile.fromFile(_imageFiles!.path),
      "fullname": nameController.text,
      "nik": nikController.text,
      "address": addressController.text,
      "rt": rtController.text,
      "rw": rwController.text,
      "village": villageController.text,
      "district": districtController.text,
      "job": occupationController.text,
      "religion": religion,
      "status": maritalStatus,
      "nationality": nationality,
    });

    return formData;
  }

  @override
  void dispose() {
    nikController.dispose();
    addressController.dispose();
    rtController.dispose();
    rwController.dispose();
    villageController.dispose();
    districtController.dispose();
    occupationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthBloc, AuthState>(
      bloc: context.read<AuthBloc>(),
      listener: (context, state) {
        state.maybeWhen(
          orElse: () {},
          loading: () => showLoadingDialog(context),
          loadedKtpData: (response) {
            hideDialog(context);

            _autoFillData(response);
          },
          successVerif: (response) {
            hideDialog(context);
            UXToast.show(
                message:
                    "Successful account verification, Please refresh your home page!");
            if (context.mounted) {
              context.goNamed("home");
            }
          },
          error: (error) => UXToast.show(message: error.toString()),
        );
      },
      child: SafeArea(
        child: Scaffold(
          body: SingleChildScrollView(
            padding: const EdgeInsets.symmetric(vertical: 32),
            child: Form(
              key: _formKey,
              child: Column(
                children: [
                  Row(
                    children: [
                      IconButton(
                        onPressed: () {
                          context.pop();
                        },
                        icon: const Icon(Icons.arrow_back),
                      ),
                      Text(
                        LocaleKeys.register_page_title.tr(),
                        style: const TextStyle(
                          fontSize: AppConstants.kFontSizeXXL,
                          fontWeight: FontWeight.w500,
                          color: AppColors.neutralN20,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 24),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Center(
                          child: Text(
                            LocaleKeys.register_page_input_id_title.tr(),
                            style: const TextStyle(
                              fontSize: AppConstants.kIconsXS,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Center(
                          child: Text(
                            LocaleKeys.register_page_input_id_subtitle.tr(),
                            style: const TextStyle(
                              fontSize: AppConstants.kIconsXS,
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        Text(
                          LocaleKeys.form_hint_text_id_card.tr(),
                          style: const TextStyle(
                            fontSize: AppConstants.kFontSizeS,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        const SizedBox(height: 8),
                        InkWell(
                          onTap: () => _selectImage(),
                          child: DottedBorder(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 20, vertical: 16),
                            radius: const Radius.circular(12),
                            borderType: BorderType.RRect,
                            dashPattern: const [4, 4],
                            child: _imageFiles != null
                                ? Image.file(
                                    _imageFiles!,
                                    width: AppScreens.width,
                                    fit: BoxFit.fill,
                                  )
                                : SizedBox(
                                    width: AppScreens.width,
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Container(
                                          padding: const EdgeInsets.all(4),
                                          decoration: BoxDecoration(
                                            color: AppColors.grey3,
                                            borderRadius:
                                                BorderRadius.circular(4),
                                          ),
                                          child: const Icon(
                                              Icons.file_upload_outlined),
                                        ),
                                        const SizedBox(height: 16),
                                        const Text(
                                          "Click to upload",
                                          textAlign: TextAlign.center,
                                        ),
                                      ],
                                    ),
                                  ),
                          ),
                        ),
                        const SizedBox(height: 24),
                        TextfieldCustom(
                          controller: nikController,
                          label: LocaleKeys.form_hint_text_nik.tr(),
                          hintText: LocaleKeys.form_hint_text_nik.tr(),
                          keyboardType: TextInputType.number,
                          maxLength: 16,
                          validator: (p0) {
                            if (p0!.isEmpty) {
                              return LocaleKeys.validation_input_is_not_empty
                                  .tr(args: [
                                LocaleKeys.form_hint_text_name.tr(),
                              ]);
                            }
                            if (!p0.isValidNIK) {
                              return LocaleKeys.validation_invalid_nik.tr();
                            }
                            return null;
                          },
                        ),
                        const SizedBox(height: 14),
                        TextfieldCustom(
                          controller: nameController,
                          label: LocaleKeys.form_hint_text_full_name.tr(),
                          hintText: LocaleKeys.form_hint_text_full_name.tr(),
                          keyboardType: TextInputType.text,
                          validator: (p0) {
                            if (p0!.isEmpty) {
                              return LocaleKeys.validation_input_is_not_empty
                                  .tr(args: [
                                LocaleKeys.form_hint_text_full_name.tr(),
                              ]);
                            }
                            return null;
                          },
                        ),
                        const SizedBox(height: 14),
                        TextfieldCustom(
                          controller: addressController,
                          label: LocaleKeys.form_hint_text_address.tr(),
                          hintText: LocaleKeys.form_hint_text_address.tr(),
                          keyboardType: TextInputType.multiline,
                          validator: (p0) {
                            if (p0!.isEmpty) {
                              return LocaleKeys.validation_input_is_not_empty
                                  .tr(args: [
                                LocaleKeys.form_hint_text_address.tr(),
                              ]);
                            }
                            return null;
                          },
                        ),
                        const SizedBox(height: 14),
                        Row(
                          children: [
                            Expanded(
                              child: TextfieldCustom(
                                controller: rtController,
                                hintText: LocaleKeys.form_hint_text_rt.tr(),
                                label: LocaleKeys.form_hint_text_rt.tr(),
                                keyboardType: TextInputType.number,
                                validator: (p0) {
                                  if (p0!.isEmpty) {
                                    return LocaleKeys
                                        .validation_input_is_not_empty
                                        .tr(args: [
                                      LocaleKeys.form_hint_text_rt.tr(),
                                    ]);
                                  }
                                  return null;
                                },
                              ),
                            ),
                            const SizedBox(width: 16),
                            Expanded(
                              child: TextfieldCustom(
                                controller: rwController,
                                label: LocaleKeys.form_hint_text_rw.tr(),
                                hintText: LocaleKeys.form_hint_text_rw.tr(),
                                keyboardType: TextInputType.number,
                                validator: (p0) {
                                  if (p0!.isEmpty) {
                                    return LocaleKeys
                                        .validation_input_is_not_empty
                                        .tr(args: [
                                      LocaleKeys.form_hint_text_rw.tr(),
                                    ]);
                                  }
                                  return null;
                                },
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 14,
                        ),
                        TextfieldCustom(
                          controller: villageController,
                          hintText: LocaleKeys.form_hint_text_village.tr(),
                          label: LocaleKeys.form_hint_text_village.tr(),
                          validator: (p0) {
                            if (p0!.isEmpty) {
                              return LocaleKeys.validation_input_is_not_empty
                                  .tr(args: [
                                LocaleKeys.form_hint_text_village.tr(),
                              ]);
                            }
                            return null;
                          },
                        ),
                        const SizedBox(height: 14),
                        TextfieldCustom(
                          controller: districtController,
                          hintText: LocaleKeys.form_hint_text_sub_district.tr(),
                          label: LocaleKeys.form_hint_text_sub_district.tr(),
                          validator: (p0) {
                            if (p0!.isEmpty) {
                              return LocaleKeys.validation_input_is_not_empty
                                  .tr(args: [
                                LocaleKeys.form_hint_text_sub_district.tr(),
                              ]);
                            }
                            return null;
                          },
                        ),
                        const SizedBox(
                          height: 14,
                        ),
                        DropdownTextfield(
                          onChanged: (value) {
                            setState(() {
                              religion = value;
                            });
                            vLog(religion);
                          },
                          items: DummyService.listReligions,
                          label: LocaleKeys.form_hint_text_religion.tr(),
                          hintText: LocaleKeys.form_hint_text_religion.tr(),
                          isRegister: true,
                          validator: (p0) {
                            if (p0 == null) {
                              return LocaleKeys.validation_input_is_not_empty
                                  .tr(args: [
                                LocaleKeys.form_hint_text_religion.tr(),
                              ]);
                            }
                            return null;
                          },
                        ),
                        const SizedBox(
                          height: 14,
                        ),
                        DropdownTextfield(
                          onChanged: (value) {
                            setState(() {
                              maritalStatus = value;
                            });
                            vLog(maritalStatus);
                          },
                          items: DummyService.listMaritalStatus,
                          label: LocaleKeys.form_hint_text_marital_status.tr(),
                          hintText:
                              LocaleKeys.form_hint_text_marital_status.tr(),
                          isRegister: true,
                          validator: (p0) {
                            if (p0 == null) {
                              return LocaleKeys.validation_input_is_not_empty
                                  .tr(args: [
                                LocaleKeys.form_hint_text_marital_status.tr(),
                              ]);
                            }
                            return null;
                          },
                        ),
                        const SizedBox(height: 14),
                        TextfieldCustom(
                          controller: occupationController,
                          label: LocaleKeys.form_hint_text_occupation.tr(),
                          hintText: LocaleKeys.form_hint_text_occupation.tr(),
                          validator: (p0) {
                            if (p0!.isEmpty) {
                              return LocaleKeys.validation_input_is_not_empty
                                  .tr(args: [
                                LocaleKeys.form_hint_text_occupation.tr(),
                              ]);
                            }
                            return null;
                          },
                        ),
                        const SizedBox(
                          height: 14,
                        ),
                        DropdownTextfield(
                          onChanged: (value) {
                            setState(() {
                              nationality = value;
                            });
                            vLog(nationality);
                          },
                          items: DummyService.listNationality,
                          hintText: LocaleKeys.form_hint_text_nationality.tr(),
                          label: LocaleKeys.form_hint_text_nationality.tr(),
                          isRegister: true,
                          validator: (p0) {
                            if (p0 == null) {
                              return LocaleKeys.validation_input_is_not_empty
                                  .tr(args: [
                                LocaleKeys.form_hint_text_nationality.tr(),
                              ]);
                            }
                            return null;
                          },
                        ),
                        const SizedBox(height: 32),
                        BtnPrimary(
                          onTap: () {
                            if (_formKey.currentState!.validate()) {
                              showDialog(
                                context: context,
                                builder: (context) {
                                  return _dialog(context);
                                },
                              );
                            }
                          },
                          title: LocaleKeys.button_finish.tr(),
                        ),
                        const SizedBox(height: 32),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
