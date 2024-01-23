import 'package:certenz/src/config/constant.dart';
import 'package:certenz/src/config/theme/colors.dart';
import 'package:certenz/src/utils/formatters.dart';
import 'package:flutter/material.dart';

class FieldCustom extends StatelessWidget {
  const FieldCustom(
      {super.key,
      this.hintText,
      this.obscureText = false,
      this.keyboardType,
      this.format,
      this.maxLength,
      this.textAlign,
      this.suffixIcon,
      this.maxLines,
      this.style,
      this.readOnly = false,
      this.onTap,
      required this.controller,
      this.enabled = true,
      this.validator});
  final TextEditingController controller;
  final String? hintText;
  final bool obscureText;
  final TextInputType? keyboardType;
  final Widget? suffixIcon;
  final TextAlign? textAlign;
  final int? maxLength;
  final String? format;
  final TextStyle? style;
  final int? maxLines;
  final bool readOnly;
  final bool enabled;
  final Function()? onTap;
  final String? Function(String?)? validator;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      maxLines: maxLines ?? 1,
      readOnly: readOnly,
      enabled: enabled,
      maxLength: maxLength,
      textAlign: textAlign ?? TextAlign.start,
      keyboardType: keyboardType,
      obscureText: obscureText,
      style: style,
      validator: validator,
      inputFormatters: [
        if (format == 'cardNumber') CardNumberInputFormatter(),
        if (format == 'currency') CurrencyInputFormatter(),
      ],
      onTap: onTap,
      decoration: InputDecoration(
        suffixIcon: suffixIcon,
        counter: const SizedBox.shrink(),
        border: const UnderlineInputBorder(
          borderSide: BorderSide(
            color: AppColors.neutralN120,
          ),
        ),
        focusedBorder: const UnderlineInputBorder(
          borderSide: BorderSide(
            color: AppColors.orange,
          ),
        ),
        counterStyle: const TextStyle(
          fontSize: AppConstants.kFontSizeS,
          color: AppColors.neutralN80,
        ),
        fillColor: Colors.white,
        hintText: hintText ?? '',
        hintStyle: const TextStyle(
          fontSize: AppConstants.kFontSizeS,
          color: AppColors.neutralN80,
        ),
      ),
    );
  }
}
