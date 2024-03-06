import 'package:certenz/src/config/constant.dart';
import 'package:certenz/src/config/theme/colors.dart';
import 'package:flutter/material.dart';

class TextColum extends StatelessWidget {
  const TextColum({
    super.key,
    this.title,
    this.value,
    this.image,
    this.subtitleTextDecoration = TextDecoration.none,
  });
  final String? title;
  final String? image;
  final String? value;
  final TextDecoration subtitleTextDecoration;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title ?? "",
            style: const TextStyle(
              fontSize: AppConstants.kFontSizeS,
              color: AppColors.neutralN60,
            ),
          ),
          if (image != null)
            Image.asset(
              image!,
              width: 45,
              height: 32,
            ),
          const SizedBox(height: 5),
          Text(
            value ?? "",
            textAlign: TextAlign.end,
            style: TextStyle(
              decoration: subtitleTextDecoration,
              fontSize: AppConstants.kFontSizeS,
              fontWeight: FontWeight.bold,
              color: AppColors.neutralN30,
            ),
          ),
        ],
      ),
    );
  }
}
