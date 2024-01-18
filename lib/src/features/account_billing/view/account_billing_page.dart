import 'package:certenz/l10n/locale_keys.g.dart';
import 'package:certenz/src/config/constant.dart';
import 'package:certenz/src/config/theme/colors.dart';
import 'package:certenz/src/data/models/account_bank/account_bank_model.dart';
import 'package:certenz/src/data/models/bank/bank_model.dart';
import 'package:certenz/src/data/services/dummy_service.dart';
import 'package:certenz/src/features/account_bill_create/view/account_bill_create_page.dart';
import 'package:certenz/src/utils/logger.dart';
import 'package:certenz/src/widgets/buttons/button_primary.dart';
import 'package:certenz/src/widgets/common/custom_appbar.dart';
import 'package:certenz/src/widgets/common/powered_widget.dart';
import 'package:certenz/src/widgets/dialogs/modal_bottom_select_account_bank.dart';
import 'package:certenz/src/widgets/forms/dropdown_bank2.dart';
import 'package:certenz/src/widgets/forms/dropdown_custom.dart';
import 'package:certenz/src/widgets/forms/field_custom.dart';
import 'package:certenz/src/widgets/forms/select_bank_button.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class AccountBillingPage extends StatefulWidget {
  const AccountBillingPage({super.key});

  @override
  State<AccountBillingPage> createState() => _AccountBillingPageState();
}

class _AccountBillingPageState extends State<AccountBillingPage> {
  TextEditingController titleController = TextEditingController();
  TextEditingController amountController = TextEditingController();
  TextEditingController noteController = TextEditingController();
  TextEditingController datePaidController = TextEditingController();

  BankModel? selectedPaymentMethod;
  AccountBankModel? selectedAccDestination;

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
  void dispose() {
    titleController.dispose();
    amountController.dispose();
    noteController.dispose();
    datePaidController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppbarCustom(
          onPressed: () => Navigator.pop(context),
          title: LocaleKeys.account_billing_title.tr(),
        ),
        body: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 19, vertical: 20),
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
                  fontSize: AppConstants.kFontSizeS,
                  color: AppColors.neutralN40,
                ),
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
                LocaleKeys.form_title_tenant_period.tr(),
                style: const TextStyle(
                  fontSize: AppConstants.kFontSizeS,
                  color: AppColors.neutralN40,
                ),
              ),
              const SizedBox(height: 8),
              DropdownTextfield(
                items: DummyService.period,
                hintText: "Period",
              ),
              const SizedBox(height: 18),
              const Text(
                "Paid on date ",
                style: TextStyle(
                  fontSize: AppConstants.kFontSizeS,
                  color: AppColors.neutralN40,
                ),
              ),
              const SizedBox(height: 8),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: 60,
                    child: FieldCustom(
                      controller: datePaidController,
                      hintText: "Enter Date",
                      maxLines: 1,
                      maxLength: 2,
                      keyboardType: TextInputType.number,
                      style: const TextStyle(
                        fontSize: AppConstants.kFontSizeS,
                        color: AppColors.neutralN40,
                      ),
                    ),
                  ),
                  const SizedBox(width: 25),
                  Expanded(
                    child: DropdownTextfield(
                      items: DummyService.onPaid,
                    ),
                  )
                ],
              ),
              const SizedBox(height: 18),
              Text(
                LocaleKeys.form_title_select_payment.tr(),
                style: const TextStyle(
                  fontSize: AppConstants.kFontSizeS,
                  color: AppColors.neutralN40,
                ),
              ),
              const SizedBox(height: 18),
              // DropdownBank2(
              //   selectedItem: selectedPaymentMethod?.name,
              //   hintText: "Pilih Bank",
              //   prefixIcon: null,
              //   listBank: DummyService.listBank, // Pass the list of banks
              //   onBankSelected: (bank) {
              //     setState(() {
              //       selectedPaymentMethod = bank;
              //     });
              //     vLog(selectedPaymentMethod);
              //   },
              // ),
              const SizedBox(height: 18),
              Text(
                LocaleKeys.form_title_select_dest.tr(),
                style: const TextStyle(
                  fontSize: AppConstants.kFontSizeS,
                  color: AppColors.neutralN40,
                ),
              ),
              const SizedBox(height: 18),
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
              const Text(
                "Note :",
                style: TextStyle(
                  fontSize: AppConstants.kFontSizeS,
                  color: AppColors.neutralN40,
                ),
              ),
              const SizedBox(height: 8),
              FieldCustom(
                controller: noteController,
                hintText: LocaleKeys.form_hint_text_note.tr(),
                maxLines: 1,
                maxLength: 20,
                keyboardType: TextInputType.emailAddress,
                style: const TextStyle(
                  fontSize: AppConstants.kFontSizeS,
                  color: AppColors.neutralN40,
                ),
              ),
              const SizedBox(height: 18),
              const PoweredWidget(
                isCenter: false,
              ),
              const SizedBox(
                height: 20,
              ),
              BtnPrimary(
                onTap: () async {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const AccountBillCreatePage(),
                    ),
                  );
                },
                title: LocaleKeys.button_next.tr(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
