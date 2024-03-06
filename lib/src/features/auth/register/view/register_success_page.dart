import 'package:certenz/gen/assets.gen.dart';
import 'package:certenz/l10n/locale_keys.g.dart';
import 'package:certenz/src/config/constant.dart';
import 'package:certenz/src/config/screen.dart';
import 'package:certenz/src/config/theme/colors.dart';
import 'package:certenz/src/features/auth/login/view/login_page.dart';
import 'package:certenz/src/widgets/buttons/button_primary.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class RegisterSuccessPage extends StatefulWidget {
  const RegisterSuccessPage({super.key});

  @override
  State<RegisterSuccessPage> createState() => _RegisterSuccessPageState();
}

class _RegisterSuccessPageState extends State<RegisterSuccessPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(vertical: 33, horizontal: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(
                Assets.images.logo.path,
                width: AppScreens.width * 0.25,
              ),
              SizedBox(
                height: AppScreens.width * 0.20,
              ),
              Text(
                LocaleKeys.register_success_page_title.tr(),
                style: const TextStyle(
                  fontSize: AppConstants.kFontSizeL,
                  fontWeight: FontWeight.bold,
                  color: AppColors.neutralN20,
                ),
              ),
              Text(
                LocaleKeys.register_success_page_subtitle.tr(),
                style: const TextStyle(
                  color: AppColors.neutralN20,
                ),
              ),
              const SizedBox(height: 32),
              Text(
                LocaleKeys.register_success_page_text1.tr(),
                style: const TextStyle(
                  fontSize: AppConstants.kFontSizeS,
                  fontWeight: FontWeight.bold,
                  color: AppColors.neutralN20,
                ),
              ),
              const SizedBox(height: 8),
              Text(
                LocaleKeys.register_success_page_text2.tr(),
                style: const TextStyle(
                  fontSize: AppConstants.kFontSizeS,
                  color: AppColors.neutralN20,
                ),
              ),
              const Spacer(),
              BtnPrimary(
                title: LocaleKeys.button_continue.tr(),
                onTap: () {
                  context.goNamed("login");
                },
              ),
              const Spacer(),
              Row(
                children: [
                  Text(
                    LocaleKeys.app_name.tr(),
                    style: const TextStyle(
                      fontSize: AppConstants.kFontSizeXS,
                      fontWeight: FontWeight.bold,
                      color: AppColors.red60,
                    ),
                  ),
                  const SizedBox(width: 24),
                  Text(
                    LocaleKeys.text_privacy_terms.tr(),
                    style: const TextStyle(
                      fontSize: AppConstants.kFontSizeXS,
                      color: AppColors.neutralN20,
                    ),
                  ),
                  const SizedBox(width: 24),
                  Text(
                    LocaleKeys.text_help.tr(),
                    style: const TextStyle(
                      fontSize: AppConstants.kFontSizeXS,
                      color: AppColors.neutralN20,
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
