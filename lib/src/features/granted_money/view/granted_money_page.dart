import 'package:certenz/l10n/locale_keys.g.dart';
import 'package:certenz/src/config/constant.dart';
import 'package:certenz/src/config/screen.dart';
import 'package:certenz/src/config/theme/colors.dart';
import 'package:certenz/src/cubits/text_field_cubit.dart';
import 'package:certenz/src/data/models/account_bank/account_bank_model.dart';
import 'package:certenz/src/data/models/bank/bank_model.dart';
import 'package:certenz/src/data/services/dummy_service.dart';
import 'package:certenz/src/features/payment_status/view/payment_success_page.dart';
import 'package:certenz/src/features/pin/view/pin_page.dart';
import 'package:certenz/src/utils/date_picker.dart';
import 'package:certenz/src/utils/logger.dart';
import 'package:certenz/src/widgets/buttons/button_primary.dart';
import 'package:certenz/src/widgets/common/custom_appbar.dart';
import 'package:certenz/src/widgets/dialogs/modal_bottom_select_account_bank.dart';
import 'package:certenz/src/widgets/forms/date_custom.dart';
import 'package:certenz/src/widgets/forms/dropdown_account_bank.dart';
import 'package:certenz/src/widgets/forms/dropdown_bank.dart';
import 'package:certenz/src/widgets/forms/dropdown_bank2.dart';
import 'package:certenz/src/widgets/forms/field_custom.dart';
import 'package:certenz/src/widgets/forms/select_bank_button.dart';
import 'package:certenz/src/widgets/forms/textfield_custom.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class GrantedMoneyPage extends StatefulWidget {
  const GrantedMoneyPage({super.key});

  @override
  State<GrantedMoneyPage> createState() => _GrantedMoneyPageState();
}

class _GrantedMoneyPageState extends State<GrantedMoneyPage> {
  TextEditingController titleController = TextEditingController();
  TextEditingController startDateController = TextEditingController();
  TextEditingController amountController = TextEditingController();
  TextEditingController noteController = TextEditingController();

  late String date;

  @override
  void dispose() {
    titleController.dispose();
    startDateController.dispose();
    amountController.dispose();
    noteController.dispose();
    super.dispose();
  }

  AccountBankModel? selectedAccDestination;

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

  Future _selectAccount(BuildContext context) {
    return showModalBottomSheet(
      context: context,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(24),
          topRight: Radius.circular(24),
        ),
      ),
      builder: (context) {
        return const ModalBottomSelectAccountBank();
      },
    );
  }

  @override
  void initState() {
    super.initState();
    date = DateFormat("yyyy-MM-dd").format(DateTime.now());
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppbarCustom(
          onPressed: () => Navigator.pop(context),
          title: LocaleKeys.granted_money_title.tr(),
        ),
        body: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 19, vertical: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                LocaleKeys.form_title_title_project.tr(),
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
                  fontSize: AppConstants.kFontSizeS,
                  color: AppColors.neutralN40,
                ),
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
              FieldCustom(
                controller: startDateController,
                hintText: "YYYY-MM-DD",
                suffixIcon: const Icon(Icons.calendar_month),
                readOnly: true,
                style: const TextStyle(
                  fontSize: AppConstants.kFontSizeS,
                  color: AppColors.neutralN40,
                ),
                onTap: () => _deliveryDate(passDate: true).then((value) {
                  if (value != null) {
                    startDateController.text = value;
                  }
                }),
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
              FieldCustom(
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
              ),
              const SizedBox(height: 18),
              Text(
                LocaleKeys.form_title_select_dest.tr(),
                style: const TextStyle(
                  fontSize: AppConstants.kFontSizeS,
                  color: AppColors.neutralN40,
                ),
              ),
              const SizedBox(height: 8),
              // SelectBankButton(
              //   hintText: LocaleKeys.form_hint_text_select_account.tr(),
              //   selectedAccount: selectedAccDestination,
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
                LocaleKeys.form_title_note.tr(),
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
                keyboardType: TextInputType.emailAddress,
                style: const TextStyle(
                  fontSize: AppConstants.kFontSizeS,
                  color: AppColors.neutralN40,
                ),
              ),
              const SizedBox(height: 18),
              BtnPrimary(
                onTap: () async {
                  if (await Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const PinPage(),
                      )) ==
                      true) {
                    if (context.mounted) {
                      Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const PaymentSuccessPage(),
                        ),
                        (route) => false,
                      );
                    }
                  }
                },
                title: LocaleKeys.button_next.tr(),
              )
            ],
          ),
        ),
      ),
    );
  }
}
