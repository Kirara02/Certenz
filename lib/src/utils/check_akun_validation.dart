import 'package:certenz/src/utils/flutter_storage.dart';
import 'package:certenz/src/widgets/dialogs/verification_dialog.dart';
import 'package:flutter/material.dart';

void checkAccountValidation(BuildContext context) async {
  String? verif = await SecureStorageHelper.getUserVerified;
  if (bool.tryParse(verif!) == false) {
    if (context.mounted) {
      showDialog(
        barrierDismissible: false,
        context: context,
        builder: (context) => const VerificationDialog(),
      );
    }
  }
}
