import 'package:certenz/l10n/locale_keys.g.dart';
import 'package:certenz/src/blocs/create_bill/create_bill_bloc.dart';
import 'package:certenz/src/config/constant.dart';
import 'package:certenz/src/config/theme/colors.dart';
import 'package:certenz/src/utils/dismiss_keyboard.dart';
import 'package:certenz/src/utils/formatters.dart';
import 'package:certenz/src/utils/logger.dart';
import 'package:certenz/src/utils/utils.dart';
import 'package:certenz/src/widgets/buttons/button_primary.dart';
import 'package:certenz/src/widgets/common/custom_appbar.dart';
import 'package:certenz/src/widgets/dialogs/bill_alert_dialog.dart';
import 'package:certenz/src/widgets/dialogs/hide_dialog.dart';
import 'package:certenz/src/widgets/dialogs/loading_dialog.dart';
import 'package:certenz/src/widgets/dialogs/ux_toast_wrapper.dart';
import 'package:certenz/src/widgets/forms/textfield_custom.dart';
import 'package:dio/dio.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:go_router/go_router.dart';

class CreateBillPage extends StatefulWidget {
  const CreateBillPage({super.key});

  @override
  State<CreateBillPage> createState() => _CreateBillPageState();
}

class _CreateBillPageState extends State<CreateBillPage> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  TextEditingController titleController = TextEditingController();
  TextEditingController amountController = TextEditingController();
  TextEditingController toController = TextEditingController();
  TextEditingController noteController = TextEditingController();
  bool withFee = false;

  Future _toast(String? message, [Color color = AppColors.red]) {
    return UXToast.show(
        message: message ?? '',
        backgroundColor: color,
        toastGravity: ToastGravity.BOTTOM,
        textColor: AppColors.neutralN140);
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

  Future<FormData?> handleSubmit() async {
    FormData formData = FormData.fromMap({
      "title": titleController.text,
      "total_amount_bill": removeCurrencyFormat(amountController.text),
      "to_email": toController.text,
      "note": noteController.text,
      "with_fee": withFee
    });

    return formData;
  }

  void _refresh() {
    titleController.clear();
    amountController.clear();
    toController.clear();
    noteController.clear();
    setState(() {
      withFee = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CreateBillBloc(),
      child: Builder(builder: (context) {
        return BlocListener<CreateBillBloc, CreateBillState>(
          listener: (context, state) {
            state.maybeWhen(
              orElse: () {},
              loading: () => showLoadingDialog(context),
              success: (data) {
                _refresh();
                hideDialog(context);
                if (context.mounted) {
                  context.pushNamed("qr-code", extra: data);
                }
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
              title: LocaleKeys.create_bill_title.tr(),
            ),
            body: SingleChildScrollView(
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
              child: Form(
                key: _formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      LocaleKeys.form_title_title.tr(),
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
                        fontSize: AppConstants.kFontSizeM,
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
                      LocaleKeys.form_title_total_amount.tr(),
                      style: const TextStyle(
                        fontSize: AppConstants.kFontSizeM,
                        color: AppColors.neutralN40,
                      ),
                    ),
                    const SizedBox(height: 8),
                    TextfieldCustom(
                      controller: amountController,
                      hintText: LocaleKeys.form_hint_text_amount.tr(),
                      maxLines: 1,
                      format: "currency",
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
                      LocaleKeys.form_title_to_op.tr(),
                      style: const TextStyle(
                        fontSize: AppConstants.kFontSizeS,
                        color: AppColors.neutralN40,
                      ),
                    ),
                    const SizedBox(height: 8),
                    TextfieldCustom(
                      controller: toController,
                      hintText: LocaleKeys.form_hint_text_to_email.tr(),
                      maxLines: 1,
                      keyboardType: TextInputType.emailAddress,
                      style: const TextStyle(
                        fontSize: AppConstants.kFontSizeS,
                        color: AppColors.neutralN40,
                      ),
                      validator: (p0) {
                        if (p0!.isNotEmpty) {
                          if (!p0.isValidEmail) {
                            return LocaleKeys.validation_invalid_email_address
                                .tr();
                          }
                        }
                        return null;
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
                      keyboardType: TextInputType.multiline,
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
                  ],
                ),
              ),
            ),
            bottomNavigationBar: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
              child: BtnPrimary(
                title: LocaleKeys.button_create_bill.tr(),
                onTap: () {
                  hideKeyboard(context);
                  if (_formKey.currentState!.validate()) {
                    _showAlertBill(
                      context,
                      onCancel: () => context.pop(),
                      onSubmit: () {
                        handleSubmit().then((value) {
                          if (value != null) {
                            context.pop();
                            if (context.mounted) {
                              context.read<CreateBillBloc>().add(
                                  CreateBillEvent.createBill(formData: value));
                            }
                          }
                        });
                      },
                    );
                  }
                },
              ),
            ),
          ),
        );
      }),
    );
  }

  @override
  void dispose() {
    super.dispose();
    titleController.dispose();
    amountController.dispose();
    toController.dispose();
    noteController.dispose();
    withFee = false;
  }
}
