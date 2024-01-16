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
      padding: const EdgeInsets.symmetric(horizontal: 18),
      child: Container(
        width: AppScreens.width,
        padding: const EdgeInsets.all(9),
        decoration: BoxDecoration(
          color: AppColors.orange,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    padding: const EdgeInsets.all(8),
                    decoration: const BoxDecoration(
                      color: AppColors.neutralN140,
                      shape: BoxShape.circle,
                    ),
                    child: Image.asset(
                      Assets.icons.certenzPng.path,
                      width: 16,
                      height: 24,
                    ),
                  ),
                  Text(
                    "Balance",
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      color: AppColors.neutralN140,
                    ),
                  )
                ],
              ),
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    formatCurrency(24500000.0),
                    style: const TextStyle(
                      fontWeight: FontWeight.w600,
                      color: AppColors.neutralN140,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    "+37% than last month",
                    style: TextStyle(
                      fontSize: AppConstants.kFontSizeS,
                      fontWeight: FontWeight.w500,
                      color: AppColors.neutralN140,
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
