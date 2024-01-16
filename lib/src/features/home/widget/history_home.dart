import 'package:certenz/l10n/locale_keys.g.dart';
import 'package:certenz/src/config/constant.dart';
import 'package:certenz/src/config/theme/colors.dart';
import 'package:certenz/src/data/services/dummy_service.dart';
import 'package:certenz/src/features/home/widget/card_transaction.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class HistoryHome extends StatelessWidget {
  const HistoryHome({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 18),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                LocaleKeys.home_page_history.tr(),
                style: const TextStyle(
                  fontSize: AppConstants.kFontSizeS,
                  fontWeight: FontWeight.w500,
                  color: AppColors.neutralN40,
                ),
              ),
              TextButton(
                onPressed: () {},
                child: Text(
                  LocaleKeys.home_page_see_all.tr(),
                  style: const TextStyle(
                    fontSize: AppConstants.kFontSizeS,
                    fontWeight: FontWeight.bold,
                    color: AppColors.orange,
                  ),
                ),
              ),
            ],
          ),
          // const SizedBox(height: 6),
          ListView.builder(
            padding: EdgeInsets.zero,
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: DummyService.listRecentTransaction.length,
            itemBuilder: (context, index) {
              var data = DummyService.listRecentTransaction[index];
              return CardTransaction(
                data: data,
              );
            },
          ),
        ],
      ),
    );
  }
}
