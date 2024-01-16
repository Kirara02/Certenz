import 'package:certenz/src/config/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SettingListTile extends StatelessWidget {
  final SvgPicture icon;
  final String title;
  final VoidCallback onTap;
  const SettingListTile(
      {super.key,
      required this.icon,
      required this.title,
      required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 12,
        vertical: 18,
      ),
      decoration: BoxDecoration(
        color: AppColors.neutralN130,
        borderRadius: BorderRadius.circular(6),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              icon,
              const SizedBox(
                width: 16,
              ),
              Text(
                title,
                style: const TextStyle(
                  fontWeight: FontWeight.w600,
                ),
              )
            ],
          ),
          InkWell(
            onTap: onTap,
            child: const Icon(
              Icons.chevron_right_rounded,
            ),
          )
        ],
      ),
    );
  }
}
