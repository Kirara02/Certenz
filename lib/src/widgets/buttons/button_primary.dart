import 'package:certenz/src/config/constant.dart';
import 'package:certenz/src/config/screen.dart';
import 'package:certenz/src/config/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BtnPrimary extends StatelessWidget {
  const BtnPrimary({super.key, this.title, this.onTap});
  final String? title;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        elevation: 0,
        backgroundColor: AppColors.orange,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
        minimumSize: Size(
          AppScreens.width,
          48,
        ),
      ),
      onPressed: onTap,
      child: Text(
        title ?? "",
        style: const TextStyle(
          fontSize: AppConstants.kFontSizeS,
          fontWeight: FontWeight.bold,
          color: AppColors.neutralN140,
        ),
      ),
    );
  }
}
