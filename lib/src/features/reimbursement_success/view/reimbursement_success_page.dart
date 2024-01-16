import 'dart:async';

import 'package:certenz/gen/assets.gen.dart';
import 'package:certenz/l10n/locale_keys.g.dart';
import 'package:certenz/src/app/app_root.dart';
import 'package:certenz/src/config/constant.dart';
import 'package:certenz/src/config/screen.dart';
import 'package:certenz/src/config/theme/colors.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class ReimbursementSuccessPage extends StatefulWidget {
  const ReimbursementSuccessPage({super.key});

  @override
  State<ReimbursementSuccessPage> createState() =>
      _ReimbursementSuccessPageState();
}

class _ReimbursementSuccessPageState extends State<ReimbursementSuccessPage> {
  @override
  void initState() {
    super.initState();

    Timer(
      const Duration(seconds: 5),
      () => Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(
            builder: (context) => const AppRoot(),
          ),
          (route) => false),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 50),
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Assets.images.emailReport.image(width: 200),
            const SizedBox(
              height: 40,
            ),
            Text(
              LocaleKeys.reimbursement_success_report_success.tr(),
              style: const TextStyle(
                fontSize: AppConstants.kFontSizeXL,
                fontWeight: FontWeight.w600,
                color: AppColors.orange,
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            Text(
              LocaleKeys.reimbursement_success_desc.tr(),
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.w500,
                color: AppColors.orange.withOpacity(0.8),
              ),
            )
          ],
        ),
      ),
    );
  }
}
