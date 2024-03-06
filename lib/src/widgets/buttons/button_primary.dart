import 'package:certenz/src/config/constant.dart';
import 'package:certenz/src/config/screen.dart';
import 'package:certenz/src/config/theme/colors.dart';
import 'package:flutter/material.dart';

class BtnPrimary extends StatelessWidget {
  const BtnPrimary(
      {super.key,
      this.title,
      this.onTap,
      this.radius,
      this.isOutlined = false,
      this.color = AppColors.orange});
  final String? title;
  final VoidCallback? onTap;
  final double? radius;
  final bool? isOutlined;
  final Color? color;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        elevation: 0,
        backgroundColor: isOutlined == false ? color : UIColors.white,
        shape: RoundedRectangleBorder(
          side: BorderSide(
            color: isOutlined == true ? AppColors.orange : Colors.transparent,
          ),
          borderRadius: BorderRadius.circular(radius ?? 12),
        ),
        minimumSize: Size(
          AppScreens.width,
          48,
        ),
      ),
      onPressed: onTap,
      child: Text(
        title ?? "",
        style: TextStyle(
          fontSize: AppConstants.kFontSizeS,
          fontWeight: FontWeight.bold,
          color: isOutlined == true ? AppColors.orange : UIColors.white,
        ),
      ),
    );
  }
}
