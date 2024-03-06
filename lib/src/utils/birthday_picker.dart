import 'dart:developer';

import 'package:certenz/src/config/theme/colors.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_holo_date_picker/flutter_holo_date_picker.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';

Future<DateTime?> selectBirthDate(
  BuildContext context, {
  String? initialDate,
}) async {
  return await DatePicker.showSimpleDatePicker(
    context,
    initialDate:
        initialDate != null ? DateTime.parse(initialDate) : DateTime.now(),
    firstDate: DateTime(1900),
    lastDate: DateTime(2100),
    dateFormat: "dd-MMMM-yyyy",
    locale: context.locale.languageCode == "en"
        ? DateTimePickerLocale.en_us
        : DateTimePickerLocale.id,
    reverse: true,
    looping: true,
  );
}

Future selectBirthDateBottom(
  BuildContext context, {
  String? initialDate,
}) {
  DateTime? selectedDate;

  return showModalBottomSheet(
    context: context,
    showDragHandle: true,
    backgroundColor: UIColors.white,
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(12),
        topRight: Radius.circular(12),
      ),
    ),
    builder: (context) {
      return Container(
        padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 20),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            DatePickerWidget(
              looping: true,
              initialDate: initialDate != null
                  ? DateTime.parse(initialDate)
                  : DateTime.now(),
              firstDate: DateTime(1900),
              lastDate: DateTime(2100),
              dateFormat: "dd-MMMM-yyyy",
              locale: context.locale.languageCode == "en"
                  ? DateTimePickerLocale.en_us
                  : DateTimePickerLocale.id,
              onChange: (DateTime newDate, _) {
                selectedDate = newDate;
              },
              pickerTheme: DateTimePickerTheme(
                dividerColor: AppColors.primaryColors,
              ),
            ),
            const SizedBox(height: 12),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                  onPressed: () {
                    context.pop();
                  },
                  child: const Text("Cancel"),
                ),
                const SizedBox(width: 8),
                TextButton(
                  onPressed: () {
                    if (selectedDate != null) {
                      log(selectedDate.toString());
                      Navigator.pop(context, selectedDate);
                    }
                  },
                  child: const Text("Oke"),
                ),
              ],
            )
          ],
        ),
      );
    },
  );
}
