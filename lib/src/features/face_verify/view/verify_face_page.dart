import 'package:certenz/gen/assets.gen.dart';
import 'package:certenz/l10n/locale_keys.g.dart';
import 'package:certenz/src/config/constant.dart';
import 'package:certenz/src/config/theme/colors.dart';
import 'package:certenz/src/features/face_verify/view/success_verify_page.dart';
import 'package:certenz/src/widgets/common/custom_appbar.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class VerifyFacePage extends StatefulWidget {
  const VerifyFacePage({super.key});

  @override
  State<VerifyFacePage> createState() => _VerifyFacePageState();
}

class _VerifyFacePageState extends State<VerifyFacePage> {
  double verifyValue = 0.0;

  @override
  void initState() {
    super.initState();
    startVerificationProcess();
  }

  void startVerificationProcess() async {
    while (verifyValue < 1.0) {
      await Future.delayed(const Duration(milliseconds: 1));
      setState(() {
        verifyValue += 0.01;
      });
    }

    if (verifyValue >= 1.0) {
      if (context.mounted) {
        Navigator.of(context).pushReplacement(
          MaterialPageRoute(
            builder: (context) => const SuccessVerifyPage(),
          ),
        );
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppbarCustom(
        type: "<",
        title: "",
        onPressed: () {
          Navigator.pop(context);
        },
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 50),
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Assets.images.userVerify.image(),
            const SizedBox(height: 100),
            Text(
              "${(verifyValue * 100).toStringAsFixed(0)}% ${LocaleKeys.verify_page_validation.tr()}",
              style: TextStyle(
                fontSize: AppConstants.kFontSizeX,
                fontWeight: FontWeight.w600,
                color: AppColors.black2.withOpacity(0.8),
              ),
            ),
            const SizedBox(height: 16),
            ClipRRect(
              borderRadius: BorderRadius.circular(4),
              child: LinearProgressIndicator(
                value: verifyValue,
                minHeight: 25,
                valueColor: const AlwaysStoppedAnimation(AppColors.orange),
                backgroundColor: AppColors.grey3,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
