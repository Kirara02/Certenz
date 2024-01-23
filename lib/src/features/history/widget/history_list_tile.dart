import 'package:certenz/src/config/constant.dart';
import 'package:certenz/src/config/theme/colors.dart';
import 'package:certenz/src/data/models/history/history_model.dart';
import 'package:certenz/src/features/payment_status/view/payment_pending_job_page.dart';
import 'package:certenz/src/utils/formatters.dart';
import 'package:certenz/src/widgets/images/cached_network.dart';
import 'package:flutter/material.dart';

class HistoryListTile extends StatelessWidget {
  final HistoryModel data;
  const HistoryListTile({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const PaymentPendingJobPage(),
          ),
        );
      },
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 3),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              width: 32,
              height: 32,
              child: ClipOval(
                clipBehavior: Clip.antiAlias,
                child: UICacheNetworkImage(
                    fit: BoxFit.cover,
                    shimmerShape: BoxShape.circle,
                    imageUrl: generateAvatarUrl(data.to?.name ?? "Default")),
              ),
            ),
            const SizedBox(
              width: 12,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  data.transactionCategory ?? "-",
                  style: const TextStyle(
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Text(
                  data.transactionTitle ?? "-",
                  style: const TextStyle(
                    fontSize: AppConstants.kFontSizeS,
                    color: AppColors.neutralN50,
                  ),
                ),
                Text(
                  data.transactionStatus!,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    color: AppColors.orange,
                  ),
                ),
              ],
            ),
            const Spacer(),
            const Text(
              "-Rp.1,500,000",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: AppColors.neutralN50,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
