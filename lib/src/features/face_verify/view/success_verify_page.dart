import 'package:certenz/gen/assets.gen.dart';
import 'package:certenz/l10n/locale_keys.g.dart';
import 'package:certenz/src/app/app_root.dart';
import 'package:certenz/src/config/screen.dart';
import 'package:certenz/src/config/theme/colors.dart';
import 'package:certenz/src/widgets/buttons/button_primary.dart';
import 'package:certenz/src/widgets/common/custom_appbar.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class SuccessVerifyPage extends StatelessWidget {
  const SuccessVerifyPage({super.key});

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
            Assets.icons.securityCheck.svg(),
            const SizedBox(
              height: 32,
            ),
            Text(
              LocaleKeys.verify_page_success.tr(),
              textAlign: TextAlign.center,
              style: const TextStyle(
                color: AppColors.neutralN40,
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
        height: AppScreens.height * 0.1,
        child: BtnPrimary(
          title: LocaleKeys.button_lets_continue.tr(),
          onTap: () => Navigator.pushAndRemoveUntil(
              context,
              MaterialPageRoute(
                builder: (context) => const AppRoot(),
              ),
              (route) => false),
        ),
      ),
    );
  }
}
