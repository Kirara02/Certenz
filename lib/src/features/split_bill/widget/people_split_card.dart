import 'package:certenz/src/config/constant.dart';
import 'package:certenz/src/config/theme/colors.dart';
import 'package:certenz/src/utils/formatters.dart';
import 'package:certenz/src/widgets/images/cached_network.dart';
import 'package:flutter/material.dart';

class PeopleSplitCard extends StatelessWidget {
  final String name;
  final String email;
  final String phoneNumber;
  final double amount;
  final String status;
  final VoidCallback onTap;
  final bool disabled;
  final bool isPayment;
  const PeopleSplitCard({
    super.key,
    required this.name,
    required this.email,
    required this.phoneNumber,
    required this.amount,
    required this.status,
    required this.onTap,
    this.disabled = false,
    this.isPayment = false,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 8),
        decoration: BoxDecoration(
          color: isPayment == true
              ? (disabled == true
                  ? const Color(0xffFF8A8A).withOpacity(0.15)
                  : const Color(0xffBFBFBF).withOpacity(0.4))
              : const Color(0xffFF8A8A).withOpacity(0.15),
          border: const Border(
            bottom: BorderSide(
              color: AppColors.neutralN120,
              width: 1.0,
            ),
          ),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: 32,
              height: 32,
              padding: EdgeInsets.all(4),
              decoration: const BoxDecoration(
                color: AppColors.orange,
                shape: BoxShape.circle,
              ),
              child: ClipOval(
                  child:
                      UICacheNetworkImage(imageUrl: generateAvatarUrl(name))),
            ),
            const SizedBox(width: 8),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            email,
                            style: const TextStyle(
                              fontWeight: FontWeight.w600,
                              color: AppColors.neutralN40,
                            ),
                            overflow: TextOverflow.ellipsis,
                          ),
                          const SizedBox(height: 12),
                          Text(
                            phoneNumber,
                            style: const TextStyle(
                              color: AppColors.neutralN40,
                            ),
                          ),
                        ],
                      ),
                      const Spacer(),
                      Text(
                        formatCurrencyNonDecimal(amount),
                        style: const TextStyle(
                          fontSize: AppConstants.kFontSizeL,
                          fontWeight: FontWeight.w600,
                          color: AppColors.neutralN40,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 16),
                  Container(
                    padding:
                        const EdgeInsets.symmetric(vertical: 4, horizontal: 10),
                    decoration: BoxDecoration(
                      color: status == "Success"
                          ? const Color(0xff3EF54B).withOpacity(0.28)
                          : const Color(0xffFFAB0A).withOpacity(0.28),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Text(
                      status,
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        color: status == "Pending"
                            ? AppColors.yellow2
                            : const Color(0xff018B0A),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
