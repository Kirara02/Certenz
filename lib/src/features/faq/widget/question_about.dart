import 'package:certenz/l10n/locale_keys.g.dart';
import 'package:certenz/src/config/constant.dart';
import 'package:certenz/src/config/theme/colors.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class QuestionAbout extends StatelessWidget {
  final SvgPicture icon;
  final String title;
  final VoidCallback onTap;
  const QuestionAbout(
      {super.key,
      required this.icon,
      required this.title,
      required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints(
        minHeight: 23,
        minWidth: 100,
      ),
      padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 4),
      decoration: const BoxDecoration(
        color: AppColors.grey6,
        border: Border(
          right: BorderSide(color: AppColors.orange, width: 1),
        ),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          icon,
          const SizedBox(
            width: 8,
          ),
          Flexible(
            child: Text(
              title,
              style: const TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: AppConstants.kFontSizeXXS,
                color: AppColors.neutralN40,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
