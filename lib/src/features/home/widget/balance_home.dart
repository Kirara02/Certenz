import 'package:certenz/gen/assets.gen.dart';
import 'package:certenz/src/config/constant.dart';
import 'package:certenz/src/config/screen.dart';
import 'package:certenz/src/config/theme/colors.dart';
import 'package:certenz/src/utils/formatters.dart';
import 'package:flutter/material.dart';

class BalanceHome extends StatelessWidget {
  const BalanceHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                "${formatCurrency(25000000)} -",
                style: const TextStyle(
                  fontSize: AppConstants.kFontSizeX,
                  color: AppColors.black2,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Text(
                "Balance",
                style: TextStyle(
                  color: AppColors.primaryColors,
                  fontWeight: FontWeight.w500,
                  fontSize: AppConstants.kFontSizeXL,
                ),
              )
            ],
          ),
          const SizedBox(height: 12),
          Text(
            "37% This Month",
            style: TextStyle(
              color: AppColors.primaryColors,
              fontWeight: FontWeight.w500,
            ),
          )
        ],
      ),
    );
  }
}
