import 'package:certenz/gen/assets.gen.dart';
import 'package:certenz/l10n/locale_keys.g.dart';
import 'package:certenz/src/config/constant.dart';
import 'package:certenz/src/config/screen.dart';
import 'package:certenz/src/config/theme/colors.dart';
import 'package:certenz/src/widgets/buttons/button_primary.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';

class PinPage extends StatefulWidget {
  const PinPage({super.key});

  @override
  State<PinPage> createState() => _PinPageState();
}

class _PinPageState extends State<PinPage> {
  TextEditingController pinController = TextEditingController();
  String pin = "123456";

  void handleEnter() {
    if (pinController.text == pin) {
      Navigator.pop(context, true);
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Container(
              alignment: Alignment.center,
              width: MediaQuery.of(context).size.width,
              child: Padding(
                padding: const EdgeInsets.only(top: 30),
                child: Stack(
                  children: [
                    IconButton(
                      onPressed: () => Navigator.pop(context),
                      icon: const Icon(Icons.arrow_back),
                    ),
                    Center(
                      child: Image.asset(
                        Assets.images.logo.path,
                        width: AppScreens.width * 0.25,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const Spacer(),
            Text(
              LocaleKeys.pin_page_title.tr(),
              style: const TextStyle(
                fontSize: AppConstants.kFontSizeXXL,
                fontWeight: FontWeight.bold,
                color: AppColors.neutralN30,
              ),
            ),
            const SizedBox(height: 4),
            Text(
              LocaleKeys.pin_page_subtitle.tr(),
              style: const TextStyle(
                fontSize: AppConstants.kFontSizeS,
                color: AppColors.neutralN50,
              ),
            ),
            const SizedBox(height: 32),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: PinCustom(
                controller: pinController,
              ),
            ),
            const SizedBox(height: 30),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: BtnPrimary(
                onTap: handleEnter,
                title: LocaleKeys.button_enter.tr(),
              ),
            ),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}

class PinCustom extends StatelessWidget {
  final TextEditingController controller;

  const PinCustom({
    super.key,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Pinput(
          controller: controller,
          obscureText: true,
          length: 6,
          autofocus: true,
          forceErrorState: false,
          submittedPinTheme: const PinTheme(
            height: 24,
            width: 24,
            margin: EdgeInsets.symmetric(horizontal: 10),
            textStyle: TextStyle(
              fontSize: AppConstants.kFontSizeXXS,
              fontWeight: FontWeight.w500,
              color: AppColors.orange,
            ),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: AppColors.orange,
            ),
          ),
          defaultPinTheme: const PinTheme(
            height: 24,
            width: 24,
            margin: EdgeInsets.symmetric(horizontal: 10),
            textStyle: TextStyle(
              fontSize: AppConstants.kFontSizeXXS,
              fontWeight: FontWeight.w500,
              color: AppColors.neutralN130,
            ),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: AppColors.neutralN130,
            ),
          ),
        ),
        const SizedBox(height: 10),
        TextButton(
          onPressed: () {},
          child: Text(
            LocaleKeys.pin_page_forgot_pin.tr(),
            style: const TextStyle(
              fontSize: AppConstants.kFontSizeS,
              fontWeight: FontWeight.bold,
              color: AppColors.orange,
            ),
          ),
        )
      ],
    );
  }
}
