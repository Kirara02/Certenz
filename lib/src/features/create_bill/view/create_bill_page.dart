import 'package:certenz/l10n/locale_keys.g.dart';
import 'package:certenz/src/blocs/create_bill/create_bill_bloc.dart';
import 'package:certenz/src/config/constant.dart';
import 'package:certenz/src/config/theme/colors.dart';
import 'package:certenz/src/features/bill_status/view/bill_status_page.dart';
import 'package:certenz/src/utils/formatters.dart';
import 'package:certenz/src/utils/logger.dart';
import 'package:certenz/src/widgets/buttons/button_primary.dart';
import 'package:certenz/src/widgets/common/custom_appbar.dart';
import 'package:certenz/src/widgets/dialogs/hide_dialog.dart';
import 'package:certenz/src/widgets/dialogs/loading_dialog.dart';
import 'package:certenz/src/widgets/dialogs/ux_toast_wrapper.dart';
import 'package:certenz/src/widgets/forms/field_custom.dart';
import 'package:dio/dio.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';

class CreateBillPage extends StatefulWidget {
  const CreateBillPage({super.key});

  @override
  State<CreateBillPage> createState() => _CreateBillPageState();
}

class _CreateBillPageState extends State<CreateBillPage> {
  TextEditingController titleController = TextEditingController();
  TextEditingController amountController = TextEditingController();
  TextEditingController toController = TextEditingController();
  TextEditingController noteController = TextEditingController();

  Future _toast(String? message, [Color color = AppColors.red]) {
    return UXToast.show(
        message: message ?? '',
        backgroundColor: color,
        toastGravity: ToastGravity.BOTTOM,
        textColor: AppColors.neutralN140);
  }

  Future<FormData?> handleSubmit() async {
    if (titleController.text.isEmpty) {
      _toast("Title is required");
      return null;
    } else if (amountController.text.isEmpty) {
      _toast("Amount is required");
      return null;
    } else if (toController.text.isEmpty) {
      _toast("To Email is required");
      return null;
    }

    FormData formData = FormData.fromMap({
      "title": titleController.text,
      "total_amount_bill": removeCurrencyFormat(amountController.text),
      "to_email": toController.text,
      "note": noteController.text,
    });

    return formData;
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
                hideDialog(context);
                Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(
                      builder: (context) => BillStatusPage(data: data),
                    ),
                    (route) => false);
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
                );
              },
            );
          },
          child: Scaffold(
            appBar: AppbarCustom(
              onPressed: () => Navigator.pop(context),
              title: LocaleKeys.create_bill_title.tr(),
            ),
            body: SingleChildScrollView(
              padding: const EdgeInsets.symmetric(horizontal: 24),
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
                  FieldCustom(
                    controller: titleController,
                    hintText: LocaleKeys.form_hint_text_title.tr(),
                    maxLines: 1,
                    keyboardType: TextInputType.text,
                    style: const TextStyle(
                      fontSize: AppConstants.kFontSizeM,
                      color: AppColors.neutralN40,
                    ),
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
                  FieldCustom(
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
                  ),
                  const SizedBox(height: 18),
                  Text(
                    LocaleKeys.form_title_to.tr(),
                    style: const TextStyle(
                      fontSize: AppConstants.kFontSizeS,
                      color: AppColors.neutralN40,
                    ),
                  ),
                  const SizedBox(height: 8),
                  FieldCustom(
                    controller: toController,
                    hintText: LocaleKeys.form_hint_text_to_email.tr(),
                    maxLines: 1,
                    keyboardType: TextInputType.text,
                    style: const TextStyle(
                      fontSize: AppConstants.kFontSizeS,
                      color: AppColors.neutralN40,
                    ),
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
                  FieldCustom(
                    controller: noteController,
                    hintText: LocaleKeys.form_hint_text_note.tr(),
                    maxLines: 1,
                    keyboardType: TextInputType.text,
                    style: const TextStyle(
                      fontSize: AppConstants.kFontSizeS,
                      color: AppColors.neutralN40,
                    ),
                  ),
                ],
              ),
            ),
            bottomNavigationBar: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
              child: BtnPrimary(
                title: LocaleKeys.button_create_bill.tr(),
                onTap: () => handleSubmit().then((value) {
                  if (value != null) {
                    context
                        .read<CreateBillBloc>()
                        .add(CreateBillEvent.createBill(formData: value));
                  }
                }),
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
  }
}
