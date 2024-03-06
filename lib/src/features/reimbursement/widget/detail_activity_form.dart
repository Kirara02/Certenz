import 'package:certenz/l10n/locale_keys.g.dart';
import 'package:certenz/src/config/constant.dart';
import 'package:certenz/src/config/theme/colors.dart';
import 'package:certenz/src/widgets/forms/textfield_custom.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class DetailActivityForm extends StatefulWidget {
  final String title;
  final TextEditingController controller;
  final VoidCallback onDelete; // Tambahkan parameter onDelete

  const DetailActivityForm({
    Key? key,
    required this.controller,
    required this.title,
    required this.onDelete, // Gunakan parameter onDelete
  }) : super(key: key);

  @override
  State<DetailActivityForm> createState() => _DetailActivityFormState();
}

class _DetailActivityFormState extends State<DetailActivityForm> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          widget.title,
          style: const TextStyle(
            fontSize: AppConstants.kFontSizeS,
            color: AppColors.neutralN40,
          ),
        ),
        const SizedBox(height: 8),
        TextfieldCustom(
          controller: widget.controller,
          hintText: LocaleKeys.form_hint_text_detail_title.tr(),
          maxLines: 1,
          keyboardType: TextInputType.text,
          style: const TextStyle(
            fontSize: AppConstants.kFontSizeS,
            color: AppColors.neutralN40,
          ),
          suffixIcon: GestureDetector(
            onTap: widget.onDelete,
            child: const Icon(
              Icons.close,
              color: AppColors.red60,
              size: 18,
            ),
          ),
        ),
        const SizedBox(
          height: 18,
        ),
      ],
    );
  }
}
