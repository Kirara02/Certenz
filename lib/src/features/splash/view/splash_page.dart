// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables

import 'package:certenz/gen/assets.gen.dart';
import 'package:certenz/l10n/locale_keys.g.dart';
import 'package:certenz/src/config/constant.dart';
import 'package:certenz/src/config/screen.dart';
import 'package:certenz/src/config/theme/colors.dart';
import 'package:certenz/src/utils/flutter_storage.dart';
import 'package:certenz/src/widgets/buttons/button_primary.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(vertical: 32),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.max,
            children: [
              Center(
                child: Image.asset(
                  Assets.images.logo.path,
                  width: AppScreens.width * 0.3,
                ),
              ),
              const SizedBox(height: 24),
              Image.asset(
                Assets.images.splash.path,
              ),
              const SizedBox(height: 24),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      LocaleKeys.splash_page_title.tr(),
                      style: const TextStyle(
                        fontSize: AppConstants.kFontSizeXXL,
                        fontWeight: FontWeight.bold,
                        color: AppColors.neutralN20,
                      ),
                    ),
                    const SizedBox(
                      height: 11,
                    ),
                    Text(
                      LocaleKeys.splash_page_description.tr(),
                      style: const TextStyle(
                        fontSize: AppConstants.kFontSizeS,
                        color: AppColors.neutralN50,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 60),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: BtnPrimary(
                  onTap: () {
                    SecureStorageHelper.saveInitial(true);
                    if (context.mounted) {
                      context.go("/welcome");
                    }
                  },
                  title: LocaleKeys.button_stared.tr(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
