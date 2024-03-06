import 'package:certenz/gen/assets.gen.dart';
import 'package:certenz/l10n/locale_keys.g.dart';
import 'package:certenz/src/config/theme/colors.dart';
import 'package:certenz/src/widgets/buttons/button_primary.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class BillAlertDialog extends StatelessWidget {
  final VoidCallback? onSubmit;
  final VoidCallback? onCancel;
  const BillAlertDialog({super.key, this.onSubmit, this.onCancel});

  @override
  Widget build(BuildContext context) {
    return Dialog(
      insetPadding: const EdgeInsets.all(20),
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Assets.icons.alert.svg(),
            const SizedBox(height: 12),
            Text(
              LocaleKeys.text_bill_confirm.tr(),
              style: const TextStyle(
                color: AppColors.black2,
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(height: 20),
            Row(
              children: [
                Expanded(
                  child: BtnPrimary(
                    title: LocaleKeys.button_yes_continue.tr(),
                    onTap: onSubmit,
                  ),
                ),
                const SizedBox(width: 16),
                Expanded(
                  child: BtnPrimary(
                    title: LocaleKeys.button_cancel.tr(),
                    onTap: onCancel,
                    isOutlined: true,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
