import 'package:certenz/src/config/constant.dart';
import 'package:certenz/src/config/theme/colors.dart';
import 'package:certenz/src/utils/formatters.dart';
import 'package:flutter/material.dart';

class TextfieldCustom extends StatefulWidget {
  const TextfieldCustom({
    super.key,
    required this.controller,
    this.hintText,
    this.obscureText = false,
    this.keyboardType,
    this.format,
    this.maxLength,
    this.filled,
    this.textAlign,
    this.suffixIcon,
    this.onTap,
    this.readOnly = false,
  });

  final TextEditingController controller;
  final String? hintText;
  final bool obscureText;
  final TextInputType? keyboardType;
  final Widget? suffixIcon;
  final TextAlign? textAlign;
  final int? maxLength;
  final String? format;
  final bool? filled;
  final Function()? onTap;
  final bool readOnly;

  @override
  State<TextfieldCustom> createState() => _TextfieldCustomState();
}

class _TextfieldCustomState extends State<TextfieldCustom> {
  late bool _isObscured;

  @override
  void initState() {
    super.initState();
    _isObscured = widget.obscureText;
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: widget.controller,
      maxLength: widget.maxLength,
      textAlign: widget.textAlign ?? TextAlign.start,
      keyboardType: widget.keyboardType,
      obscureText: _isObscured,
      readOnly: widget.readOnly,
      style: const TextStyle(
        fontSize: AppConstants.kFontSizeS,
        color: AppColors.neutralN50,
      ),
      inputFormatters: [
        if (widget.format == 'cardNumber') CardNumberInputFormatter(),
      ],
      onTap: widget.onTap,
      decoration: InputDecoration(
        filled: widget.filled ?? false,
        suffixIcon: widget.obscureText
            ? IconButton(
                icon: Icon(
                  _isObscured ? Icons.visibility : Icons.visibility_off,
                  color: AppColors.neutralN80,
                ),
                onPressed: () {
                  setState(() {
                    _isObscured = !_isObscured;
                  });
                },
              )
            : widget.suffixIcon,
        counter: const SizedBox.shrink(),
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: AppColors.neutralN120),
          borderRadius: BorderRadius.circular(4),
        ),
        focusedBorder: widget.filled == true
            ? UnderlineInputBorder(
                borderSide: const BorderSide(color: AppColors.neutralN120),
                borderRadius: BorderRadius.circular(4),
              )
            : OutlineInputBorder(
                borderSide: const BorderSide(color: AppColors.neutralN80),
                borderRadius: BorderRadius.circular(4),
              ),
        counterStyle: const TextStyle(
          fontSize: AppConstants.kFontSizeS,
          color: AppColors.neutralN80,
        ),
        fillColor: AppColors.neutralN120,
        hintText: widget.hintText ?? '',
        hintStyle: const TextStyle(
          fontSize: AppConstants.kFontSizeS,
          color: AppColors.neutralN80,
        ),
      ),
    );
  }
}
