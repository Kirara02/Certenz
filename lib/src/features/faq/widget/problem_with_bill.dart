import 'package:certenz/src/config/constant.dart';
import 'package:certenz/src/config/theme/colors.dart';
import 'package:certenz/src/utils/formatters.dart';
import 'package:flutter/material.dart';

class ProblemWithBill extends StatelessWidget {
  final String name;
  final String img;
  final double amount;
  final String status;
  final String type;
  const ProblemWithBill(
      {super.key,
      required this.name,
      required this.img,
      required this.amount,
      required this.status,
      required this.type});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 20),
      padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(6),
        border: Border.all(
          color: AppColors.orange,
        ),
      ),
      child: Row(
        children: [
          Align(
            alignment: Alignment.center,
            child: ClipOval(
              child: Image.asset(
                img,
                fit: BoxFit.cover,
                width: 25,
                height: 25,
              ),
            ),
          ),
          const SizedBox(
            width: 6,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: const TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: AppConstants.kFontSizeS,
                    ),
                  ),
                  const SizedBox(
                    height: 4,
                  ),
                  Text(
                    formatCurrency(amount),
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: AppConstants.kFontSizeXS,
                    ),
                  ),
                  const SizedBox(
                    height: 4,
                  ),
                  Text(
                    type,
                    textAlign: TextAlign.start,
                    style: const TextStyle(
                      color: AppColors.neutralN40,
                      fontSize: AppConstants.kFontSizeXS,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                width: 8,
              ),
              Text(
                status,
                style: const TextStyle(
                  fontSize: AppConstants.kFontSizeXS,
                  color: AppColors.yellow,
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
