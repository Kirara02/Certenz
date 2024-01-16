import 'package:certenz/src/config/constant.dart';
import 'package:certenz/src/config/theme/colors.dart';
import 'package:flutter/material.dart';

class AppbarCustom extends StatelessWidget implements PreferredSizeWidget {
  const AppbarCustom({
    super.key,
    this.title,
    required this.onPressed,
    this.type,
    this.actions,
    this.centerTitle,
    this.widgetTitle,
    this.backgroundColor,
  });
  final String? title;
  final VoidCallback onPressed;
  final String? type;
  final List<Widget>? actions;
  final bool? centerTitle;
  final Widget? widgetTitle;
  final Color? backgroundColor;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: centerTitle ?? false,
      backgroundColor: backgroundColor ?? Colors.white,
      actions: actions,
      elevation: 0,
      title: widgetTitle ??
          Text(
            title ?? '',
            style: TextStyle(
              fontSize: AppConstants.kFontSizeL,
              fontWeight: FontWeight.w500,
              color: backgroundColor != null
                  ? AppColors.neutralN140
                  : AppColors.neutralN20,
            ),
          ),
      leading: IconButton(
        icon: type == "x"
            ? Icon(
                Icons.close,
                color: backgroundColor != null
                    ? AppColors.neutralN140
                    : AppColors.neutralN20,
              )
            : type == "<"
                ? const Icon(
                    Icons.chevron_left_rounded,
                    color: AppColors.orange,
                  )
                : const Icon(
                    Icons.arrow_back,
                    color: AppColors.neutralN20,
                  ),
        onPressed: onPressed,
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
