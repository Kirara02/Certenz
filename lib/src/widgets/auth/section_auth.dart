import 'package:certenz/gen/assets.gen.dart';
import 'package:certenz/src/config/constant.dart';
import 'package:certenz/src/config/theme/colors.dart';
import 'package:certenz/src/widgets/buttons/button_primary.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class SectionAuth extends StatelessWidget {
  const SectionAuth({
    super.key,
    required this.btnTap,
    required this.txtTap,
    this.btnText,
    this.txtText,
    this.txtText2,
    this.txtText3,
  });

  final VoidCallback btnTap;
  final VoidCallback txtTap;
  final String? btnText;
  final String? txtText;
  final String? txtText2;
  final String? txtText3;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          BtnPrimary(
            onTap: btnTap,
            title: btnText ?? "",
          ),
          const SizedBox(height: 16),
          Text.rich(
            TextSpan(
              text: txtText ?? "",
              style: const TextStyle(
                fontSize: AppConstants.kFontSizeXS,
                color: AppColors.neutralN20,
              ),
              children: [
                TextSpan(
                  text: "   $txtText2" ?? "",
                  style: const TextStyle(
                    fontSize: AppConstants.kFontSizeS,
                    fontWeight: FontWeight.bold,
                    color: AppColors.orange,
                  ),
                  recognizer: TapGestureRecognizer()..onTap = txtTap,
                ),
              ],
            ),
          ),
          const SizedBox(height: 20),
          Center(
            child: Text(
              txtText3 ?? "",
              style: const TextStyle(
                fontSize: AppConstants.kFontSizeXS,
                fontWeight: FontWeight.normal,
                color: AppColors.neutralN20,
              ),
            ),
          ),
          const SizedBox(height: 12),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkWell(
                onTap: () {},
                child: Container(
                  width: 32,
                  height: 32,
                  decoration: const BoxDecoration(
                    color: AppColors.neutralN130,
                    shape: BoxShape.circle,
                  ),
                  child: Image.asset(
                    Assets.icons.fb.path,
                  ),
                ),
              ),
              const SizedBox(width: 24),
              InkWell(
                onTap: () {},
                child: Container(
                  width: 32,
                  height: 32,
                  decoration: const BoxDecoration(
                    color: AppColors.neutralN130,
                    shape: BoxShape.circle,
                  ),
                  child: Image.asset(
                    Assets.icons.google.path,
                  ),
                ),
              ),
              const SizedBox(width: 24),
              InkWell(
                onTap: () {},
                child: Container(
                  width: 32,
                  height: 32,
                  decoration: const BoxDecoration(
                    color: AppColors.neutralN130,
                    shape: BoxShape.circle,
                  ),
                  child: const Icon(
                    Icons.apple,
                    size: 25,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
