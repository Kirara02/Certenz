import 'package:certenz/l10n/locale_keys.g.dart';
import 'package:certenz/src/app/app_root.dart';
import 'package:certenz/src/blocs/split_bill/split_bill_bloc.dart';
import 'package:certenz/src/config/constant.dart';
import 'package:certenz/src/config/screen.dart';
import 'package:certenz/src/config/theme/colors.dart';
import 'package:certenz/src/features/split_bill/view/split_bill_page.dart';
import 'package:certenz/src/utils/dismiss_keyboard.dart';
import 'package:certenz/src/utils/formatters.dart';
import 'package:certenz/src/utils/logger.dart';
import 'package:certenz/src/widgets/buttons/button_primary.dart';
import 'package:certenz/src/widgets/common/custom_appbar.dart';
import 'package:certenz/src/widgets/dialogs/hide_dialog.dart';
import 'package:certenz/src/widgets/dialogs/loading_dialog.dart';
import 'package:certenz/src/widgets/dialogs/ux_toast_wrapper.dart';
import 'package:certenz/src/widgets/forms/field_custom.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';

class CreateSplitBillPage extends StatefulWidget {
  const CreateSplitBillPage({super.key});

  @override
  State<CreateSplitBillPage> createState() => _CreateSplitBillPageState();
}

class _CreateSplitBillPageState extends State<CreateSplitBillPage> {
  TextEditingController titleController = TextEditingController();
  TextEditingController amountController = TextEditingController();

  bool isFearly = false;

  Future _toast(String? message, [Color color = AppColors.red]) {
    return UXToast.show(
        message: message ?? '',
        backgroundColor: color,
        toastGravity: ToastGravity.BOTTOM,
        textColor: AppColors.neutralN140);
  }

  void handleSubmit(BuildContext context) {
    if (titleController.text.isEmpty) {
      _toast("Title is required");
    } else if (amountController.text.isEmpty) {
      _toast("Total Amount is required");
    } else {
      context.read<SplitBillBloc>().add(
            SplitBillEvent.createSplitBill(
              title: titleController.text,
              amount: removeCurrencyFormat(amountController.text),
            ),
          );
    }
    hideKeyboard(context);
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SplitBillBloc(),
      child: Builder(builder: (context) {
        return BlocListener<SplitBillBloc, SplitBillState>(
          listener: (context, state) {
            state.maybeWhen(
              orElse: () {},
              loading: () => showLoadingDialog(context),
              successCreateSplit: (data) {
                hideDialog(context);
                Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(
                      builder: (context) => SplitBillPage(
                        isFearly: isFearly,
                        data: data,
                      ),
                    ),
                    (route) => false);
              },
              error: (error) {
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
              onPressed: () {
                Navigator.pop(context);
              },
              title: LocaleKeys.create_split_bill_title.tr(),
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
                  const Text(
                    "Set Fairly",
                    style: TextStyle(
                      fontSize: AppConstants.kFontSizeS,
                      color: AppColors.neutralN40,
                    ),
                  ),
                  const SizedBox(height: 18),
                  Transform.scale(
                    scale: 1.2,
                    child: SizedBox(
                      height: 24,
                      width: 24,
                      child: Checkbox(
                        value: isFearly,
                        onChanged: (value) {
                          setState(() {
                            isFearly = value!;
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
                ],
              ),
            ),
            bottomNavigationBar: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
              child: BtnPrimary(
                title: LocaleKeys.button_create_bill.tr(),
                onTap: () => handleSubmit(context),
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
  }
}
