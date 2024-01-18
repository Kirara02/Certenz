import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

import '../../config/theme/colors.dart';

void showLoadingDialog(BuildContext context,
    [String text = "Loading, please wait..."]) {
  showDialog(
    context: context,
    barrierDismissible:
        false, // Prevents the dialog from closing until you manually do so
    builder: (BuildContext context) {
      return Dialog(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              CircularProgressIndicator(
                color: AppColors.primaryColors,
              ),
              const SizedBox(width: 20),
              Text(text),
            ],
          ),
        ),
      );
    },
  );
}
