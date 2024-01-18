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
    this.color = AppColors.black,
  });
  final String? title;
  final VoidCallback onPressed;
  final String? type;
  final List<Widget>? actions;
  final bool? centerTitle;
  final Widget? widgetTitle;
  final Color? backgroundColor;
  final Color color;

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
                ? Icon(
                    Icons.chevron_left_rounded,
                    color: backgroundColor != null
                        ? AppColors.neutralN140
                        : AppColors.orange,
                  )
                : Icon(
                    Icons.arrow_back,
                    color: backgroundColor != null
                        ? AppColors.neutralN140
                        : AppColors.neutralN20,
                  ),
        onPressed: onPressed,
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
