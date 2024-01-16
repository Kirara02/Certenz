import 'package:certenz/l10n/locale_keys.g.dart';
import 'package:certenz/src/config/constant.dart';
import 'package:certenz/src/config/theme/colors.dart';
import 'package:certenz/src/data/services/dummy_service.dart';
import 'package:certenz/src/features/atm/view/atm_card_page.dart';
import 'package:certenz/src/widgets/common/account_bank.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class AccountsSection extends StatelessWidget {
  const AccountsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 24,
        vertical: 32,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            LocaleKeys.profile_accounts_title.tr(),
            style: const TextStyle(
              fontWeight: FontWeight.w500,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: AppColors.neutralN130,
              borderRadius: BorderRadius.circular(6),
            ),
            child: AccountBank(
              accountBankModel: DummyService.accountBankModel,
              isForm: false,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          InkWell(
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const AtmCardPage(),
              ),
            ),
            child: Row(
              children: [
                const Icon(
                  Icons.add,
                  color: AppColors.orange,
                  size: 10,
                ),
                const SizedBox(
                  width: 5,
                ),
                Text(
                  LocaleKeys.profile_accounts_add_account.tr(),
                  style: const TextStyle(
                    fontSize: AppConstants.kFontSizeS,
                    color: AppColors.orange,
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
