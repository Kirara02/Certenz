import 'package:certenz/gen/assets.gen.dart';
import 'package:certenz/l10n/locale_keys.g.dart';
import 'package:certenz/src/config/constant.dart';
import 'package:certenz/src/config/theme/colors.dart';
import 'package:certenz/src/widgets/buttons/button_primary.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class VerificationDialog extends StatelessWidget {
  const VerificationDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      child: Stack(
        children: [
          Padding(
            padding:
                const EdgeInsets.only(top: 28, right: 20, bottom: 20, left: 20),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Assets.icons.alert.svg(),
                const SizedBox(height: 20),
                Text(
                  LocaleKeys.verif_dialog_title.tr(),
                  style: const TextStyle(fontWeight: FontWeight.w600),
                ),
                const SizedBox(height: 16),
                Text(
                  LocaleKeys.verif_dialog_text.tr(),
                  textAlign: TextAlign.center,
                  style: const TextStyle(fontSize: AppConstants.kFontSizeS),
                ),
                const SizedBox(height: 16),
                BtnPrimary(
                  title: LocaleKeys.verif_dialog_button_text.tr(),
                  onTap: () {
                    context.pop();
                    if (context.mounted) context.pushNamed("ktp-verification");
                  },
                ),
              ],
            ),
          ),
          Positioned(
            right: 8,
            top: 8,
            child: InkWell(
              borderRadius: BorderRadius.circular(50),
              onTap: () => context.pop(),
              child: Container(
                padding: const EdgeInsets.all(8),
                child: Icon(
                  Icons.close_rounded,
                  color: AppColors.primaryColors,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
