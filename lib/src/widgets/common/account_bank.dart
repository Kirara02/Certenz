import 'package:certenz/src/config/constant.dart';
import 'package:certenz/src/data/models/account_bank/account_bank_model.dart';
import 'package:flutter/material.dart';

class AccountBank extends StatelessWidget {
  final AccountBankModel accountBankModel;
  final bool isForm;
  const AccountBank({
    super.key,
    required this.accountBankModel,
    this.isForm = true,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.max,
      children: [
        Image.asset(
          accountBankModel.bankImage,
          width: 60,
          height: 32,
        ),
        const SizedBox(width: 10),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                accountBankModel.bank,
                style: const TextStyle(
                  fontSize: AppConstants.kFontSizeM,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(
                height: 2,
              ),
              Flexible(
                child: Text(
                  "${accountBankModel.norek} a.n ${accountBankModel.name}",
                  maxLines: 2,
                  style: const TextStyle(
                    fontSize: AppConstants.kFontSizeXS,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ),
            ],
          ),
        ),
        if (isForm) const Icon(Icons.arrow_drop_down)
      ],
    );
  }
}
