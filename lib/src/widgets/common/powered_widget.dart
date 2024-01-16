import 'package:certenz/gen/assets.gen.dart';
import 'package:certenz/src/config/constant.dart';
import 'package:certenz/src/config/screen.dart';
import 'package:certenz/src/config/theme/colors.dart';
import 'package:flutter/material.dart';

class PoweredWidget extends StatelessWidget {
  final bool isCenter;
  const PoweredWidget({super.key, this.isCenter = true});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment:
          isCenter ? MainAxisAlignment.center : MainAxisAlignment.start,
      children: [
        const Text(
          "Powered by",
          style: TextStyle(
            fontSize: AppConstants.kFontSizeXXS,
            color: AppColors.black,
          ),
        ),
        const SizedBox(width: 4),
        Image.asset(
          Assets.images.logo.path,
          width: AppScreens.width * 0.15,
        ),
      ],
    );
  }
}
