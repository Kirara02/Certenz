import 'package:certenz/src/config/constant.dart';
import 'package:certenz/src/config/theme/colors.dart';
import 'package:certenz/src/features/payment_status/view/payment_pending_job_page.dart';
import 'package:flutter/material.dart';

class HistoryListTile extends StatelessWidget {
  const HistoryListTile({super.key});

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
            Container(
              width: 32,
              height: 32,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: AppColors.orange,
              ),
            ),
            const SizedBox(
              width: 12,
            ),
            const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "History Status job",
                  style: TextStyle(
                    fontSize: AppConstants.kFontSizeS,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Text(
                  "Membuat Bangunan Gedung",
                  style: TextStyle(
                    fontSize: AppConstants.kFontSizeS,
                    color: AppColors.neutralN50,
                  ),
                ),
                Text(
                  "Pending",
                  style: TextStyle(
                    fontSize: AppConstants.kFontSizeS,
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
