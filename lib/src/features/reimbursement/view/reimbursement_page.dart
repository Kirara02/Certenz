import 'dart:io';

import 'package:certenz/l10n/locale_keys.g.dart';
import 'package:certenz/src/blocs/reimbursement/reimbursement_bloc.dart';
import 'package:certenz/src/config/constant.dart';
import 'package:certenz/src/config/theme/colors.dart';
import 'package:certenz/src/features/reimbursement/widget/detail_activity.dart';
import 'package:certenz/src/utils/date_picker.dart';
import 'package:certenz/src/utils/dismiss_keyboard.dart';
import 'package:certenz/src/utils/formatters.dart';
import 'package:certenz/src/utils/image_compress.dart';
import 'package:certenz/src/utils/logger.dart';
import 'package:certenz/src/utils/utils.dart';
import 'package:certenz/src/widgets/buttons/button_primary.dart';
import 'package:certenz/src/widgets/common/custom_appbar.dart';
import 'package:certenz/src/widgets/dialogs/bill_alert_dialog.dart';
import 'package:certenz/src/widgets/dialogs/hide_dialog.dart';
import 'package:certenz/src/widgets/dialogs/loading_dialog.dart';
// import 'package:certenz/src/widgets/dialogs/modal_bottom_select_account_bank.dart';
import 'package:certenz/src/widgets/dialogs/ux_toast_wrapper.dart';
import 'package:certenz/src/widgets/forms/image_form_file.dart';
import 'package:certenz/src/widgets/forms/textfield_custom.dart';
import 'package:dio/dio.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class ReimbursementPage extends StatefulWidget {
  const ReimbursementPage({super.key});

  @override
  State<ReimbursementPage> createState() => _ReimbursementPageState();
}

class _ReimbursementPageState extends State<ReimbursementPage> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  TextEditingController emailController = TextEditingController();
  TextEditingController titleController = TextEditingController();
  TextEditingController amountController = TextEditingController();
  TextEditingController noteController = TextEditingController();
  TextEditingController detailActivityController = TextEditingController();
  TextEditingController startDateController = TextEditingController();
  bool withFee = false;

  // BankAccountModel? selectedAccDestination;
  List<String> imagesDocs = [];
  List<String> detailActivities = [];

  late String date;

  Future _deliveryDate({bool passDate = false}) {
    return showDialog(
      context: context,
      builder: (context) {
        return Dialog(
          insetPadding: const EdgeInsets.all(10),
          child: SelectDatePicker(
            passDate: passDate,
            tanggal_awal: date,
          ),
        );
      },
    );
  }

  // Future _selectAccount(BuildContext context) {
  //   return showModalBottomSheet(
  //     context: context,
  //     shape: const RoundedRectangleBorder(
  //       borderRadius: BorderRadius.only(
  //         topLeft: Radius.circular(24),
  //         topRight: Radius.circular(24),
  //       ),
  //     ),
  //     builder: (context) {
  //       return const ModalBottomSelectAccountBank();
  //     },
  //   );
  // }

  Future _detailActivity({required List<String> data}) {
    return showGeneralDialog(
      context: context,
      pageBuilder: (context, animation, secondaryAnimation) =>
          DetailActivity(data: data),
    );
  }

  Future _toast(String? message) {
    return UXToast.show(
        message: message ?? '',
        backgroundColor: AppColors.red,
        textColor: UIColors.white);
  }

  @override
  void initState() {
    super.initState();
    date = DateFormat("yyyy-MM-dd").format(DateTime.now());
  }

  @override
  void dispose() {
    emailController.dispose();
    titleController.dispose();
    amountController.dispose();
    noteController.dispose();
    startDateController.dispose();
    detailActivityController.dispose();
    super.dispose();
  }

  void _refresh() {
    emailController.clear();
    titleController.clear();
    amountController.clear();
    noteController.clear();
    startDateController.clear();
    detailActivityController.clear();
    // selectedAccDestination = null;
    imagesDocs.clear();
    detailActivities.clear();
  }

  Future<FormData?> _handleSubmit() async {
    // if (selectedAccDestination == null) {
    //   _toast(LocaleKeys.toast_text_required.tr(
    //     namedArgs: {"text": LocaleKeys.form_title_select_dest.tr()},
    //   ));
    //   return null;
    // }
    if (imagesDocs.isEmpty) {
      _toast(LocaleKeys.toast_text_required.tr(
        namedArgs: {"text": LocaleKeys.form_title_documentation.tr()},
      ));
      return null;
    }

    List<File> docsImagesFile = [];
    for (String item in imagesDocs) {
      File file = await compressAndGetFile(item, rotate: 360);
      docsImagesFile.add(file);
    }

    final multipartImageDocsList = docsImagesFile
        .map((image) => MultipartFile.fromFileSync(image.path,
            filename: image.path.split('/').last))
        .toList();

    Map<String, dynamic> json = {
      "email": emailController.text,
      "title": titleController.text,
      "amount": removeCurrencyFormat(amountController.text),
      "activity_details[]": detailActivities.toList(),
      "start_date": startDateController.text,
      "documentation[]": multipartImageDocsList.toList(),
    };

    // Map<String, dynamic> json = {
    //   "email": "fathul.sirnaraja92@gmail.com",
    //   "title": "hsjsb",
    //   "amount": 1000000,
    //   "activity_details[]": ["gahshbd"],
    //   "start_date": "2024-02-19"
    // };

    FormData formData = FormData.fromMap(json);

    dLog(json);

    return formData;
  }

  void _showAlertBill(
    BuildContext context, {
    VoidCallback? onSubmit,
    VoidCallback? onCancel,
  }) {
    showDialog(
      context: context,
      builder: (context) {
        return BillAlertDialog(
          onSubmit: onSubmit,
          onCancel: onCancel,
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ReimbursementBloc(),
      child: Builder(builder: (context) {
        return BlocListener<ReimbursementBloc, ReimbursementState>(
          listener: (context, state) {
            state.maybeWhen(
              orElse: () {},
              loading: () => showLoadingDialog(context),
              success: (data) {
                hideDialog(context);
                _refresh();
                context.goNamed("r-success");
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

                    _toast(fullErrorMessage);
                  },
                  badRequest: (reason) => eLog(reason),
                  notFound: (reason) => UXToast.show(message: reason),
                );
              },
            );
          },
          child: Scaffold(
            appBar: AppbarCustom(
              onPressed: () => context.pop(),
              title: LocaleKeys.reimbursement_title.tr(),
            ),
            body: SingleChildScrollView(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: Form(
                key: _formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      LocaleKeys.form_title_email.tr(),
                      style: const TextStyle(
                        fontSize: AppConstants.kFontSizeS,
                        color: AppColors.neutralN40,
                      ),
                    ),
                    const SizedBox(height: 8),
                    TextfieldCustom(
                      controller: emailController,
                      hintText: LocaleKeys.form_hint_text_email2.tr(),
                      maxLines: 1,
                      keyboardType: TextInputType.emailAddress,
                      style: const TextStyle(
                        fontSize: AppConstants.kFontSizeS,
                        color: AppColors.neutralN40,
                      ),
                      validator: (p0) {
                        if (p0!.isEmpty) {
                          return LocaleKeys.validation_input_is_not_empty
                              .tr(args: [
                            LocaleKeys.form_title_email.tr(),
                          ]);
                        }
                        if (!p0.isValidEmail) {
                          return LocaleKeys.validation_invalid_email_address
                              .tr();
                        }
                        return null;
                      },
                    ),
                    const SizedBox(
                      height: 18,
                    ),
                    Text(
                      LocaleKeys.form_title_title_activity.tr(),
                      style: const TextStyle(
                        fontSize: AppConstants.kFontSizeS,
                        color: AppColors.neutralN40,
                      ),
                    ),
                    const SizedBox(height: 8),
                    TextfieldCustom(
                      controller: titleController,
                      hintText: LocaleKeys.form_hint_text_title.tr(),
                      maxLines: 1,
                      keyboardType: TextInputType.text,
                      style: const TextStyle(
                        fontSize: AppConstants.kFontSizeS,
                        color: AppColors.neutralN40,
                      ),
                      validator: (p0) {
                        if (p0!.isEmpty) {
                          return LocaleKeys.validation_input_is_not_empty
                              .tr(args: [
                            LocaleKeys.form_title_title.tr(),
                          ]);
                        }
                        return null;
                      },
                    ),
                    const SizedBox(height: 18),
                    Text(
                      LocaleKeys.form_title_amount.tr(),
                      style: const TextStyle(
                        fontSize: AppConstants.kFontSizeS,
                        color: AppColors.neutralN40,
                      ),
                    ),
                    const SizedBox(height: 8),
                    TextfieldCustom(
                      controller: amountController,
                      format: "currency",
                      hintText: LocaleKeys.form_hint_text_amount.tr(),
                      maxLines: 1,
                      maxLength: 20,
                      keyboardType: TextInputType.number,
                      style: const TextStyle(
                        fontSize: AppConstants.kFontSizeX,
                        color: AppColors.neutralN40,
                      ),
                      validator: (p0) {
                        if (p0!.isEmpty) {
                          return LocaleKeys.validation_input_is_not_empty
                              .tr(args: [
                            LocaleKeys.form_title_amount.tr(),
                          ]);
                        }
                        return null;
                      },
                    ),
                    const SizedBox(height: 18),
                    Text(
                      LocaleKeys.form_title_start_date.tr(),
                      style: const TextStyle(
                        fontSize: AppConstants.kFontSizeS,
                        color: AppColors.neutralN40,
                      ),
                    ),
                    const SizedBox(height: 8),
                    TextfieldCustom(
                      controller: startDateController,
                      hintText: LocaleKeys.form_hint_text_date.tr(),
                      suffixIcon: const Icon(Icons.calendar_month),
                      readOnly: true,
                      onTap: () => _deliveryDate(passDate: true).then((value) {
                        if (value != null) {
                          startDateController.text = value['start_date'];
                        }
                      }),
                      validator: (p0) {
                        if (p0!.isEmpty) {
                          return LocaleKeys.validation_input_is_not_empty
                              .tr(args: [
                            LocaleKeys.form_title_start_date.tr(),
                          ]);
                        }
                        return null;
                      },
                    ),
                    const SizedBox(height: 18),
                    Text(
                      LocaleKeys.form_title_detail_activity.tr(),
                      style: const TextStyle(
                        fontSize: AppConstants.kFontSizeS,
                        color: AppColors.neutralN40,
                      ),
                    ),
                    const SizedBox(height: 8),
                    TextfieldCustom(
                      controller: detailActivityController,
                      hintText: LocaleKeys.form_hint_text_title.tr(),
                      style: const TextStyle(
                        fontSize: AppConstants.kFontSizeS,
                        color: AppColors.neutralN40,
                        overflow: TextOverflow.ellipsis,
                      ),
                      suffixIcon: detailActivities.length < 2
                          ? const Icon(Icons.chevron_right_rounded)
                          : Padding(
                              padding: const EdgeInsets.symmetric(vertical: 12),
                              child: Container(
                                height: 25,
                                margin: const EdgeInsets.only(right: 8),
                                padding: const EdgeInsets.all(4),
                                decoration: BoxDecoration(
                                  color: AppColors.orange,
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                child: const Text(
                                  "Check Detail",
                                  style: TextStyle(
                                    fontSize: AppConstants.kFontSizeS,
                                    fontWeight: FontWeight.w500,
                                    color: AppColors.neutralN140,
                                  ),
                                ),
                              ),
                            ),
                      readOnly: true,
                      validator: (p0) {
                        if (p0!.isEmpty) {
                          return LocaleKeys.validation_input_is_not_empty
                              .tr(args: [
                            LocaleKeys.form_title_detail_activity.tr(),
                          ]);
                        }
                        return null;
                      },
                      onTap: () =>
                          _detailActivity(data: detailActivities).then((value) {
                        if (value != null) {
                          setState(() {
                            detailActivities = value;
                          });
                          detailActivityController.text = "Some activities";
                          if (detailActivities.length == 1) {
                            detailActivityController.text = detailActivities[0];
                          } else if (detailActivities.isEmpty) {
                            detailActivityController.clear();
                          }
                        }
                      }),
                    ),
                    // const SizedBox(height: 18),
                    // Text(
                    //   LocaleKeys.form_title_select_dest.tr(),
                    //   style: const TextStyle(
                    //     fontSize: AppConstants.kFontSizeS,
                    //     color: AppColors.neutralN40,
                    //   ),
                    // ),
                    // const SizedBox(height: 8),
                    // SelectBankButton(
                    //   hintText: LocaleKeys.form_hint_text_select_account.tr(),
                    //   bankAccountModel: selectedAccDestination,
                    //   onTap: () => _selectAccount(context).then((value) {
                    //     if (value != null) {
                    //       setState(() {
                    //         selectedAccDestination = value;
                    //       });
                    //     }
                    //   }),
                    // ),
                    const SizedBox(height: 18),
                    Text(
                      LocaleKeys.form_title_documentation.tr(),
                      style: const TextStyle(
                        fontSize: AppConstants.kFontSizeS,
                        color: AppColors.neutralN40,
                      ),
                    ),
                    const SizedBox(height: 8),
                    ImageSelectionWidget(
                      imagesDocs: imagesDocs,
                      onImagesSelected: (selectedImages) {
                        setState(() {
                          imagesDocs.addAll(selectedImages);
                        });
                        dLog(imagesDocs);
                      },
                    ),
                    const SizedBox(height: 18),
                    Text(
                      LocaleKeys.form_title_note_optional.tr(),
                      style: const TextStyle(
                        fontSize: AppConstants.kFontSizeS,
                        color: AppColors.neutralN40,
                      ),
                    ),
                    const SizedBox(height: 8),
                    TextfieldCustom(
                      controller: noteController,
                      hintText: LocaleKeys.form_hint_text_note.tr(),
                      maxLines: 2,
                      maxLength: 50,
                      keyboardType: TextInputType.emailAddress,
                      style: const TextStyle(
                        fontSize: AppConstants.kFontSizeS,
                        color: AppColors.neutralN40,
                      ),
                    ),
                    const SizedBox(height: 18),
                    Text(
                      LocaleKeys.form_title_service_fee.tr(),
                      style: const TextStyle(
                        fontSize: AppConstants.kFontSizeS,
                        color: AppColors.neutralN40,
                      ),
                    ),
                    const SizedBox(height: 8),
                    Row(
                      children: [
                        Transform.scale(
                          scale: 1.2,
                          child: SizedBox(
                            height: 24,
                            width: 24,
                            child: Checkbox(
                              value: withFee,
                              onChanged: (value) {
                                setState(() {
                                  withFee = value!;
                                });
                              },
                              activeColor: AppColors.orange,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(4),
                                side: const BorderSide(
                                  color: AppColors.neutralN80,
                                ),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 8,
                        ),
                        Text(
                          LocaleKeys.form_title_service_fee_desk.tr(),
                          style: const TextStyle(
                            fontSize: AppConstants.kFontSizeS,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    BtnPrimary(
                      onTap: () {
                        hideKeyboard(context);
                        if (_formKey.currentState!.validate()) {
                          _showAlertBill(
                            context,
                            onCancel: () => context.pop(),
                            onSubmit: () {
                              _handleSubmit().then((value) {
                                if (value != null) {
                                  context.pop();
                                  if (context.mounted) {
                                    context.read<ReimbursementBloc>().add(
                                        ReimbursementEvent.createReimbursement(
                                            formData: value));
                                  }
                                }
                              });
                            },
                          );
                        }
                      },
                      title: LocaleKeys.button_send.tr(),
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      }),
    );
  }
}
