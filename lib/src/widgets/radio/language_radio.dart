import 'package:certenz/src/config/constant.dart';
import 'package:flutter/material.dart';

class LanguageRadio extends StatelessWidget {
  final String title;
  final String value;
  final String groupValue;
  final Function(String?)? onChanged;
  const LanguageRadio(
      {super.key,
      required this.value,
      required this.groupValue,
      this.onChanged,
      required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      // padding: const EdgeInsets.all(12),
      child: RadioListTile(
          value: value,
          groupValue: groupValue,
          title: Text(
            title,
            style: const TextStyle(
              fontSize: AppConstants.kFontSizeL,
              fontWeight: FontWeight.w600,
            ),
          ),
          onChanged: onChanged),
    );
  }
}
