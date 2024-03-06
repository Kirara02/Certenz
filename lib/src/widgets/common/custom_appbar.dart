import 'package:certenz/src/config/constant.dart';
import 'package:certenz/src/config/theme/colors.dart';
import 'package:flutter/material.dart';

class AppbarCustom extends StatelessWidget implements PreferredSizeWidget {
  const AppbarCustom({
    super.key,
    this.title,
    this.onPressed,
    this.type,
    this.actions,
    this.centerTitle,
    this.widgetTitle,
    this.backgroundColor,
    this.color = AppColors.black,
    this.toolbarHeight = kToolbarHeight,
    this.shape,
    this.bottom,
    this.showLeading = true,
  });
  final String? title;
  final VoidCallback? onPressed;
  final String? type;
  final List<Widget>? actions;
  final bool? centerTitle;
  final Widget? widgetTitle;
  final Color? backgroundColor;
  final Color color;
  final double toolbarHeight;
  final ShapeBorder? shape;
  final PreferredSizeWidget? bottom;
  final bool showLeading;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: centerTitle ?? false,
      backgroundColor: backgroundColor ?? AppColors.primaryColors,
      shape: shape ??
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      actions: actions,
      elevation: 0,
      toolbarHeight: toolbarHeight,
      title: widgetTitle ??
          Text(
            title ?? '',
            style: const TextStyle(
              fontSize: AppConstants.kFontSizeL,
              fontWeight: FontWeight.w500,
              color: UIColors.white,
            ),
          ),
      leading: IconButton(
        icon: type == "x"
            ? Container(
                padding: EdgeInsets.all(4),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: UIColors.white),
                child: Icon(
                  Icons.close,
                  color: backgroundColor != null
                      ? AppColors.neutralN140
                      : AppColors.neutralN20,
                ),
              )
            : type == "<"
                ? Container(
                    padding: EdgeInsets.all(4),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: UIColors.white),
                    child: Icon(
                      Icons.chevron_left_rounded,
                      color: backgroundColor != null
                          ? AppColors.neutralN140
                          : AppColors.orange,
                    ),
                  )
                : showLeading == true
                    ? Container(
                        padding: EdgeInsets.all(4),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: UIColors.white),
                        child: Icon(
                          Icons.arrow_back,
                          color: backgroundColor != null
                              ? AppColors.neutralN140
                              : AppColors.neutralN20,
                        ),
                      )
                    : const SizedBox(),
        onPressed: onPressed,
      ),
      bottom: bottom,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
