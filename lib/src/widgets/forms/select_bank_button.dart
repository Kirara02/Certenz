import 'package:certenz/src/config/constant.dart';
import 'package:certenz/src/config/screen.dart';
import 'package:certenz/src/config/theme/colors.dart';
import 'package:certenz/src/data/models/bank/bank_account_model.dart';
import 'package:certenz/src/widgets/common/account_bank.dart';
import 'package:flutter/material.dart';

class SelectBankButton extends StatelessWidget {
  final String hintText;
  final BankAccountModel? bankAccountModel;
  final void Function()? onTap;

  const SelectBankButton(
      {super.key,
      required this.hintText,
      this.onTap,
      required this.bankAccountModel});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: AppScreens.width,
        height: 56,
        padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 10),
        decoration: BoxDecoration(
          color: AppColors.neutralN130,
          borderRadius: BorderRadius.circular(4),
        ),
        child: bankAccountModel != null
            ? AccountBank(bankAccountModel: bankAccountModel!)
            : Padding(
                padding: const EdgeInsets.symmetric(horizontal: 4),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      hintText,
                      style: const TextStyle(
                        fontSize: AppConstants.kFontSizeS,
                        color: AppColors.neutralN50,
                      ),
                    ),
                    const Icon(Icons.arrow_drop_down)
                  ],
                ),
              ),
      ),
    );
  }
}
