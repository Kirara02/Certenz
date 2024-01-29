import 'dart:developer';
import 'dart:io';

import 'package:certenz/gen/assets.gen.dart';
import 'package:certenz/l10n/locale_keys.g.dart';
import 'package:certenz/src/blocs/user/user_bloc.dart';
import 'package:certenz/src/config/theme/colors.dart';
import 'package:certenz/src/data/services/dummy_service.dart';
import 'package:certenz/src/utils/date_picker.dart';
import 'package:certenz/src/utils/gender_converter.dart';
import 'package:certenz/src/utils/image_compress.dart';
import 'package:certenz/src/utils/logger.dart';
import 'package:certenz/src/utils/province_converter.dart';
import 'package:certenz/src/utils/utils.dart';
import 'package:certenz/src/widgets/buttons/button_primary.dart';
import 'package:certenz/src/widgets/common/custom_appbar.dart';
import 'package:certenz/src/widgets/dialogs/hide_dialog.dart';
import 'package:certenz/src/widgets/dialogs/loading_dialog.dart';
import 'package:certenz/src/widgets/dialogs/ux_toast_wrapper.dart';
import 'package:certenz/src/widgets/forms/dropdown_custom.dart';
import 'package:certenz/src/widgets/forms/textfield_custom.dart';
import 'package:certenz/src/widgets/images/cached_network.dart';
import 'package:dio/dio.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:image_picker/image_picker.dart';

class EditProfilePage extends StatefulWidget {
  const EditProfilePage({super.key});

  @override
  State<EditProfilePage> createState() => _EditProfilePageState();
}

class _EditProfilePageState extends State<EditProfilePage> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  TextEditingController email = TextEditingController(text: "");
  TextEditingController username = TextEditingController(text: "");
  TextEditingController name = TextEditingController(text: "");
  TextEditingController birthDate = TextEditingController(text: "");
  TextEditingController phone = TextEditingController(text: "");
  String gender = '';
  String location = '';

  late String date;
  String? imgProfileUrl;
  String? profileImg;
  bool hasProfile = false;

  Future _deliveryDate({bool passDate = false}) {
    return showDialog(
      context: context,
      builder: (context) {
        return Dialog(
          insetPadding: const EdgeInsets.all(10),
          child: DatePicker(
            passDate: passDate,
            tanggal_awal: date,
          ),
        );
      },
    );
  }

  Future<FormData?> _handleSubmit() async {
    if (imgProfileUrl == null) {
      UXToast.show(message: "Profile Image is required");
      return null;
    }

    if (context.locale.languageCode == 'id') {
      gender = convertGenderToEnglish(gender);
    }

    File? profileFile;
    if (profileImg != null) {
      profileFile = await compressAndGetFile(profileImg!, rotate: 360);
    }
    FormData formData = FormData.fromMap({
      "_method": "PUT",
      "email": email.text,
      "username": username.text,
      "telp": phone.text,
      "name": name.text,
      "birthday": birthDate.text,
      "gender": gender,
      "location": location,
      "profile_picture": profileImg != null
          ? await MultipartFile.fromFile(profileFile!.path)
          : null
    });

    return formData;
  }

  @override
  void initState() {
    super.initState();
    date = DateFormat("yyyy-MM-dd").format(DateTime.now());
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => UserBloc()..add(const UserEvent.getUser()),
      child: Builder(
        builder: (context) {
          return BlocListener<UserBloc, UserState>(
            listener: (context, state) {
              state.maybeWhen(
                orElse: () {},
                loading: () => showLoadingDialog(context),
                success: (data) {
                  hideDialog(context);
                  email.text = data.email ?? "-";
                  name.text = data.name ?? "-";
                  birthDate.text =
                      DateFormat("yyyy-MM-dd").format(data.birthday!) ?? "-";
                  phone.text = data.telp ?? "-";
                  username.text = data.username ?? "-";
                  location = data.location ?? '-';

                  if (data.profilePicture != null) {
                    hasProfile = true;
                    imgProfileUrl = data.profilePicture;
                  }

                  if (context.locale.languageCode == 'id') {
                    setState(() {
                      gender = convertGenderToIndonesian(data.gender!);
                    });
                  } else {
                    setState(() {
                      gender = data.gender!;
                    });
                  }
                  dLog(gender);
                },
                successUpdate: (data) {
                  hideDialog(context);
                  UXToast.show(message: "Success");
                },
                error: (error) {
                  hideDialog(context);
                  error.maybeWhen(
                    orElse: () {},
                    unprocessableEntity: (reasons) {
                      String errorMessage = reasons?.message ?? '';
                      List<dynamic> errorMessages = reasons?.errors?.values
                              .map((valueList) =>
                                  valueList.isNotEmpty ? valueList[0] : '')
                              .toList() ??
                          [];

                      String fullErrorMessage =
                          '$errorMessage ${errorMessages[0]}';

                      UXToast.show(
                          message: fullErrorMessage,
                          backgroundColor: AppColors.red,
                          textColor: AppColors.neutralN140);
                    },
                  );
                },
              );
            },
            child: Scaffold(
              appBar: AppbarCustom(
                onPressed: () => Navigator.of(context).pop(),
                title: LocaleKeys.edit_profile_title.tr(),
              ),
              body: SingleChildScrollView(
                padding:
                    const EdgeInsets.symmetric(vertical: 28, horizontal: 24),
                child: Form(
                  key: _formKey,
                  child: Column(
                    children: [
                      _buildProfileImage(),
                      const SizedBox(
                        height: 24,
                      ),
                      TextfieldCustom(
                        controller: email,
                        label: LocaleKeys.form_title_email.tr(),
                        hintText: LocaleKeys.form_hint_text_email2.tr(),
                        validator: (p0) {
                          if (p0!.isEmpty) {
                            return LocaleKeys.validation_input_is_not_empty
                                .tr(args: [
                              LocaleKeys.form_hint_text_email.tr(),
                            ]);
                          }
                          if (!p0.isValidEmail) {
                            return LocaleKeys.validation_invalid_email_address
                                .tr();
                          }
                          return null;
                        },
                      ),
                      const SizedBox(height: 14),
                      TextfieldCustom(
                        controller: name,
                        label: LocaleKeys.form_title_name.tr(),
                        hintText: LocaleKeys.form_hint_text_name.tr(),
                        validator: (p0) {
                          if (p0!.isEmpty) {
                            return LocaleKeys.validation_input_is_not_empty
                                .tr(args: [
                              LocaleKeys.form_hint_text_name.tr(),
                            ]);
                          }
                          return null;
                        },
                      ),
                      const SizedBox(height: 14),
                      TextfieldCustom(
                        controller: username,
                        label: LocaleKeys.form_title_username.tr(),
                        hintText: LocaleKeys.form_hint_text_username.tr(),
                        validator: (p0) {
                          if (p0!.isEmpty) {
                            return LocaleKeys.validation_input_is_not_empty
                                .tr(args: [
                              LocaleKeys.form_hint_text_username.tr(),
                            ]);
                          }
                          return null;
                        },
                      ),
                      const SizedBox(height: 14),
                      TextfieldCustom(
                        controller: birthDate,
                        label: LocaleKeys.form_title_birthday.tr(),
                        hintText: LocaleKeys.form_hint_text_birthday.tr(),
                        suffixIcon: const Icon(
                          Icons.calendar_month,
                        ),
                        readOnly: true,
                        onTap: () =>
                            _deliveryDate(passDate: true).then((value) {
                          if (value != null) {
                            birthDate.text = value;
                          }
                        }),
                        validator: (p0) {
                          if (p0!.isEmpty) {
                            return LocaleKeys.validation_input_is_not_empty
                                .tr(args: [
                              LocaleKeys.form_hint_text_birthday.tr(),
                            ]);
                          }
                          return null;
                        },
                      ),
                      const SizedBox(height: 14),
                      DropdownTextfield(
                        onChanged: (value) {
                          setState(() {
                            gender = value;
                          });
                        },
                        selectedItem: gender,
                        isRegister: true,
                        items: DummyService.gender,
                        label: LocaleKeys.form_title_gender.tr(),
                        hintText: LocaleKeys.form_hint_text_gender.tr(),
                        validator: (p0) {
                          if (p0!.isEmpty) {
                            return LocaleKeys.validation_input_is_not_empty
                                .tr(args: [
                              LocaleKeys.form_hint_text_gender.tr(),
                            ]);
                          }
                          return null;
                        },
                      ),
                      const SizedBox(height: 14),
                      TextfieldCustom(
                        controller: phone,
                        label: LocaleKeys.form_title_phone_number.tr(),
                        hintText: LocaleKeys.form_hint_text_phone_number.tr(),
                        keyboardType: TextInputType.phone,
                        validator: (p0) {
                          if (p0!.isEmpty) {
                            return LocaleKeys.validation_input_is_not_empty
                                .tr(args: [
                              LocaleKeys.form_hint_text_phone_number.tr(),
                            ]);
                          }
                          return null;
                        },
                      ),
                      const SizedBox(height: 14),
                      DropdownTextfield(
                        onChanged: (value) {
                          setState(() {
                            location = value;
                          });
                          if (context.locale.languageCode == 'en') {
                            vLog(convertProvinceToIndonesian(location));
                          }
                        },
                        showSearchBox: true,
                        items: DummyService.provinces,
                        hintText: LocaleKeys.form_hint_text_location.tr(),
                        label: LocaleKeys.form_title_location.tr(),
                        isRegister: true,
                      ),
                      const SizedBox(height: 24),
                      BtnPrimary(
                        title: LocaleKeys.button_save.tr(),
                        onTap: () {
                          if (_formKey.currentState!.validate()) {
                            _handleSubmit().then((value) {
                              if (value != null) {
                                context
                                    .read<UserBloc>()
                                    .add(UserEvent.updateUser(formData: value));
                              }
                            });
                          }
                        },
                      )
                    ],
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }

  Widget _buildProfileImage() {
    return Container(
      height: 80,
      width: 80,
      padding: const EdgeInsets.all(3),
      decoration: const BoxDecoration(
        shape: BoxShape.circle,
        color: AppColors.grey2,
      ),
      child: Stack(
        children: [
          ClipOval(
            child: imgProfileUrl != null && profileImg == null
                ? UICacheNetworkImage(
                    imageUrl: imgProfileUrl!,
                    size: const Size(100, 100),
                    fit: BoxFit.cover,
                    shimmerShape: BoxShape.circle,
                  )
                : (profileImg != null
                    ? Image.file(
                        File(profileImg!),
                        width: 100,
                        height: 100,
                        fit: BoxFit.cover,
                      )
                    : Container(
                        height: 100,
                        width: 100,
                        alignment: Alignment.center,
                        child: Assets.images.icUpload.image(width: 36))),
          ),
          Positioned(
            bottom: 0,
            right: 0,
            child: GestureDetector(
              onTap: _chooseImage,
              child: _editIcon(),
            ),
          ),
        ],
      ),
    );
  }

  Widget _editIcon() {
    return Container(
      padding: const EdgeInsets.all(5),
      decoration: const BoxDecoration(
        color: AppColors.neutralN140,
        shape: BoxShape.circle,
      ),
      child: Assets.icons.penEdit.svg(),
    );
  }

  void _chooseImage() async {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return SafeArea(
          child: Wrap(
            children: [
              ListTile(
                  leading: const Icon(Icons.photo_library),
                  title: const Text('Photo Library'),
                  onTap: () async {
                    Navigator.of(context).pop();
                    var image = await pickImage(source: ImageSource.gallery);
                    if (image != null) {
                      setState(() {
                        profileImg = image.path;
                        hasProfile = true;
                      });
                    }
                  }),
              ListTile(
                leading: const Icon(Icons.photo_camera),
                title: const Text('Camera'),
                onTap: () async {
                  Navigator.of(context).pop();
                  var image = await pickImage(source: ImageSource.camera);
                  if (image != null) {
                    setState(() {
                      profileImg = image.path;
                      hasProfile = true;
                    });
                  }
                },
              ),
            ],
          ),
        );
      },
    );
  }

  Future<XFile?> pickImage({required ImageSource source}) async {
    final ImagePicker picker = ImagePicker();

    try {
      final XFile? pickedFile = await picker.pickImage(source: source);
      return pickedFile;
    } catch (e) {
      log('Error occurred while picking image: $e');
      return null;
    }
  }

  @override
  void dispose() {
    email.dispose();
    name.dispose();
    username.dispose();
    phone.dispose();
    birthDate.dispose();
    super.dispose();
  }
}
