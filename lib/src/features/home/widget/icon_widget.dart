import 'package:certenz/src/config/constant.dart';
import 'package:certenz/src/config/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class IconWidget extends StatelessWidget {
  const IconWidget({
    super.key,
    required this.onTap,
    required this.icon,
    required this.title,
    this.color,
    this.height = 20,
    this.width = 20,
  });
  final VoidCallback onTap;
  final String icon;
  final String title;
  final Color? color;
  final double height;
  final double width;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: onTap,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            //check extension icon png or svg
            icon.contains('.png')
                ? Image.asset(
                    icon,
                    width: width,
                    height: height,
                    color: color,
                  )
                : SvgPicture.asset(
                    icon,
                    width: width,
                    height: height,
                    colorFilter: ColorFilter.mode(
                      color ?? Colors.red,
                      BlendMode.srcIn,
                    ),
                  ),
            const SizedBox(
              height: 3,
            ),
            Text(
              title,
              style: const TextStyle(
                fontSize: AppConstants.kFontSizeXS,
                color: AppColors.black,
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
