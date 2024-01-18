import 'package:flutter/material.dart';
import 'package:certenz/src/config/theme/colors.dart';

class QuestionAbout extends StatelessWidget {
  final Widget icon;
  final String title;
  final String value;
  final Function(String) onTap;
  final bool isSelected;

  const QuestionAbout({
    super.key,
    required this.icon,
    required this.title,
    required this.value,
    required this.onTap,
    required this.isSelected,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => onTap(value),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 6),
        decoration: BoxDecoration(
          color: isSelected ? AppColors.orange : AppColors.grey6,
          borderRadius: BorderRadius.circular(4),
          border: Border.all(
            color: isSelected ? AppColors.orange : AppColors.neutralN20,
          ),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            icon,
            const SizedBox(width: 8),
            Text(
              title,
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 12, // Replace with your font size constant
                color: isSelected
                    ? Colors.white
                    : AppColors.neutralN40, // Change text color when selected
              ),
            ),
          ],
        ),
      ),
    );
  }
}
