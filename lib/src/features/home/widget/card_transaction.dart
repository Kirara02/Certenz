import 'package:certenz/gen/assets.gen.dart';
import 'package:certenz/src/config/constant.dart';
import 'package:certenz/src/config/theme/colors.dart';
import 'package:certenz/src/data/models/recent_transaction/recent_transaction_model.dart';
import 'package:certenz/src/utils/formatters.dart';
import 'package:flutter/material.dart';

class CardTransaction extends StatelessWidget {
  final RecentTransactionModel data;
  const CardTransaction({
    super.key,
    required this.data,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              ClipOval(
                child: Image.asset(
                  data.imgProfile,
                  width: 32,
                  height: 32,
                ),
              ),
              const SizedBox(width: 10),
              Text(
                data.name,
                style: const TextStyle(
                  fontSize: AppConstants.kFontSizeS,
                  fontWeight: FontWeight.bold,
                  color: AppColors.neutralN40,
                ),
              ),
            ],
          ),
          Text(
            formatCurrency(data.amount),
            style: const TextStyle(
              fontSize: AppConstants.kFontSizeS,
              color: AppColors.neutralN40,
            ),
          ),
        ],
      ),
    );
  }
}
