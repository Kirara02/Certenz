import 'package:certenz/gen/assets.gen.dart';
import 'package:certenz/l10n/locale_keys.g.dart';
import 'package:certenz/src/config/constant.dart';
import 'package:certenz/src/config/screen.dart';
import 'package:certenz/src/config/theme/colors.dart';
import 'package:certenz/src/widgets/auth/section_auth.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 24, right: 24, top: 40),
              child: Image.asset(
                Assets.images.logo.path,
                width: AppScreens.width * 0.25,
              ),
            ),
            const Spacer(),
            Center(
              child: Text(
                LocaleKeys.welcome_page_welcome.tr(),
                style: const TextStyle(
                  fontSize: AppConstants.kFontSizeXXL,
                  fontWeight: FontWeight.bold,
                  color: AppColors.neutralN30,
                ),
              ),
            ),
            const SizedBox(height: 22),
            Image.asset(
              Assets.images.handCard.path,
            ),
            const SizedBox(height: 22),
            SectionAuth(
              btnTap: () {
                context.pushNamed("register");
              },
              txtTap: () {
                context.pushNamed("login");
              },
              btnText: LocaleKeys.button_sign_up.tr(),
              txtText: LocaleKeys.text_ready_account.tr(),
              txtText2: LocaleKeys.button_sign_in.tr(),
              txtText3: LocaleKeys.text_login_with.tr(),
            ),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}
