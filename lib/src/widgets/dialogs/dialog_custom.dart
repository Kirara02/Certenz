import 'package:certenz/src/config/constant.dart';
import 'package:certenz/src/config/theme/colors.dart';
import 'package:flutter/material.dart';

class DialogCustom extends StatelessWidget {
  const DialogCustom({
    super.key,
    this.title,
    this.child,
    this.height,
    this.width,
  });
  final String? title;
  final Widget? child;
  final double? height;
  final double? width;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return AlertDialog(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        title: Text(
          title ?? '',
          style: const TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: AppConstants.kFontSizeL,
            color: AppColors.neutralN20,
          ),
          textAlign: TextAlign.center,
        ),
        content: SizedBox(
          height: constraints.maxHeight * width!,
          width: constraints.maxWidth * height!,
          child: child,
        ),
      );
    });
  }
}
