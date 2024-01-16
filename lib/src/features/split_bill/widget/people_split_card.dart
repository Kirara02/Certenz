import 'package:certenz/src/config/constant.dart';
import 'package:certenz/src/config/theme/colors.dart';
import 'package:certenz/src/data/models/split_bill/split_bill_item_model.dart';
import 'package:certenz/src/data/models/split_bill/split_bill_model.dart';
import 'package:certenz/src/features/payment_status/view/payment_pending_page.dart';
import 'package:certenz/src/features/payment_status/view/payment_success_page.dart';
import 'package:certenz/src/utils/formatters.dart';
import 'package:flutter/material.dart';

class PeopleSplitCard extends StatelessWidget {
  final SplitBillModel splitData;
  final SplitBillItemModel splitItemData;
  const PeopleSplitCard({
    super.key,
    required this.splitData,
    required this.splitItemData,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 12),
      decoration: const BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: AppColors.neutralN120,
            width: 1.0,
          ),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Container(
                width: 32,
                height: 32,
                decoration: const BoxDecoration(
                  color: AppColors.orange,
                  shape: BoxShape.circle,
                ),
              ),
              const SizedBox(width: 8),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.4,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      splitItemData.toEmail,
                      style: const TextStyle(
                        fontSize: AppConstants.kFontSizeS,
                        fontWeight: FontWeight.bold,
                        color: AppColors.neutralN40,
                      ),
                      overflow: TextOverflow.ellipsis,
                    ),
                    const SizedBox(width: 4),
                    Text(
                      splitItemData.phoneNumber ?? "-",
                      style: const TextStyle(
                        fontSize: AppConstants.kFontSizeS,
                        color: AppColors.neutralN40,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          InkWell(
            onTap: () => splitItemData.createBillStatus == 'Success'
                ? Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(
                        builder: (context) => PaymentSuccessPage()),
                    (route) => false,
                  )
                : splitItemData.createBillStatus == 'Pending'
                    ? Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute(
                            builder: (context) => PaymentPendingPage(
                                  splitData: splitData,
                                  splitItemData: splitItemData,
                                )),
                        (route) => false,
                      )
                    : null,
            child: Column(
              children: [
                Container(
                  padding:
                      const EdgeInsets.symmetric(vertical: 4, horizontal: 10),
                  decoration: BoxDecoration(
                    color: AppColors.yellowy120,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Text(
                    splitItemData.createBillStatus,
                    style: const TextStyle(
                      fontSize: AppConstants.kFontSizeS,
                      fontWeight: FontWeight.w500,
                      color: AppColors.yellowy60,
                    ),
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  formatCurrencyNonDecimal(
                      splitItemData.totalAmountBill.toDouble()),
                  style: const TextStyle(
                    fontSize: AppConstants.kFontSizeS,
                    fontWeight: FontWeight.bold,
                    color: AppColors.neutralN40,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
