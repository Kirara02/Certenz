import 'package:certenz/gen/assets.gen.dart';
import 'package:certenz/src/config/constant.dart';
import 'package:certenz/src/config/theme/colors.dart';
import 'package:certenz/src/data/models/history/history_model.dart';
import 'package:certenz/src/data/models/recent_transaction/recent_transaction_model.dart';
import 'package:certenz/src/utils/date_format_helper.dart';
import 'package:certenz/src/utils/formatters.dart';
import 'package:certenz/src/widgets/images/cached_network.dart';
import 'package:flutter/material.dart';

class CardTransaction extends StatelessWidget {
  final HistoryModel data;
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
              Container(
                width: 40,
                height: 40,
                padding: const EdgeInsets.all(4),
                decoration: BoxDecoration(
                  color: AppColors.red.withOpacity(0.35),
                  borderRadius: BorderRadius.circular(6),
                ),
                child: ClipOval(
                  child: UICacheNetworkImage(
                    imageUrl: generateAvatarUrl(data.fromName ?? "Default"),
                  ),
                ),
              ),
              const SizedBox(width: 24),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    data.fromName ?? "-",
                    style: const TextStyle(
                      fontWeight: FontWeight.w600,
                      color: AppColors.black2,
                    ),
                  ),
                  const SizedBox(height: 2),
                  Text(
                    DateTimeHelper.convertDateString(
                        data.transactionTime ?? "-"),
                    style: const TextStyle(
                      fontSize: AppConstants.kFontSizeXS,
                      color: AppColors.black2,
                    ),
                  ),
                ],
              ),
            ],
          ),
          Text(
            data.criteria == "Pembuat bill"
                ? "+ ${formatCurrencyNonDecimal(data.amountTotal!.toDouble() ?? 0)}"
                : "- ${formatCurrencyNonDecimal(data.amountTotal!.toDouble() ?? 0)}",
            style: TextStyle(
              fontWeight: FontWeight.w600,
              color: data.criteria == "Pembuat bill"
                  ? AppColors.green
                  : AppColors.red,
            ),
          ),
        ],
      ),
    );
  }
}
