import 'package:certenz/gen/assets.gen.dart';
import 'package:certenz/l10n/locale_keys.g.dart';
import 'package:certenz/src/config/constant.dart';
import 'package:certenz/src/config/screen.dart';
import 'package:certenz/src/config/theme/colors.dart';
import 'package:certenz/src/features/face_verify/view/verify_face_page.dart';
import 'package:certenz/src/widgets/buttons/button_primary.dart';
import 'package:certenz/src/widgets/common/custom_appbar.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class StartVerifyPage extends StatelessWidget {
  const StartVerifyPage({super.key});

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
            Assets.icons.verify.svg(),
            const SizedBox(
              height: 40,
            ),
            Text(
              LocaleKeys.verify_page_title.tr(),
              style: TextStyle(
                fontSize: AppConstants.kFontSizeX,
                fontWeight: FontWeight.w600,
                color: AppColors.black2.withOpacity(0.8),
              ),
            ),
            const SizedBox(
              height: 24,
            ),
            Text(
              LocaleKeys.verify_page_desc.tr(),
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
          title: LocaleKeys.button_verify.tr(),
          onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const VerifyFacePage(),
              )),
        ),
      ),
    );
  }
}
