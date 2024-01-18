import 'package:certenz/l10n/locale_keys.g.dart';
import 'package:certenz/src/blocs/card_account/card_account_bloc.dart';
import 'package:certenz/src/config/constant.dart';
import 'package:certenz/src/config/theme/colors.dart';
import 'package:certenz/src/data/services/dummy_service.dart';
import 'package:certenz/src/features/atm/view/atm_card_page.dart';
import 'package:certenz/src/widgets/common/account_bank.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class AccountsSection extends StatelessWidget {
  const AccountsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          CardAccountBloc()..add(const CardAccountEvent.getCards()),
      child: Builder(builder: (context) {
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
              BlocBuilder<CardAccountBloc, CardAccountState>(
                builder: (context, state) {
                  return state.maybeWhen(
                    orElse: () => SpinKitCircle(
                      color: AppColors.primaryColors,
                    ),
                    loading: () => SpinKitCircle(
                      color: AppColors.primaryColors,
                    ),
                    successList: (data) {
                      return Column(
                        children: data
                            .map(
                              (item) => Container(
                                margin: const EdgeInsets.only(bottom: 12),
                                padding: const EdgeInsets.all(12),
                                decoration: BoxDecoration(
                                  color: AppColors.neutralN130,
                                  borderRadius: BorderRadius.circular(6),
                                ),
                                child: AccountBank(
                                  bankAccountModel: item,
                                  isForm: false,
                                ),
                              ),
                            )
                            .toList(),
                      );
                    },
                  );
                },
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
      }),
    );
  }
}
