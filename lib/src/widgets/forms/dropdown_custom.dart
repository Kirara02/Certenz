import 'package:certenz/src/config/constant.dart';
import 'package:certenz/src/config/theme/colors.dart';
import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/material.dart';

class DropdownTextfield extends StatelessWidget {
  const DropdownTextfield({
    this.items,
    this.selectedItem,
    this.hintText,
    this.prefixIcon,
    super.key,
    this.onChanged,
    this.label,
    this.isRegister = false,
    this.validator,
    this.showSearchBox = false,
  });

  final List<String>? items;
  final String? hintText;
  final dynamic selectedItem;
  final Widget? prefixIcon;
  final Function(dynamic)? onChanged;
  final bool isRegister;
  final String? label;
  final String? Function(dynamic?)? validator;
  final bool showSearchBox;

  @override
  Widget build(BuildContext context) {
    return DropdownSearch<String>(
      validator: validator,
      popupProps: PopupProps.menu(
        constraints: const BoxConstraints(
          maxHeight: 180,
        ),
        showSearchBox: showSearchBox,
        disabledItemFn: (String s) => s.startsWith('I'),
        menuProps: const MenuProps(),
      ),
      items: items!,
      selectedItem: selectedItem,
      dropdownDecoratorProps: DropDownDecoratorProps(
        baseStyle: const TextStyle(
          fontSize: AppConstants.kFontSizeS,
          color: AppColors.neutralN50,
        ),
        dropdownSearchDecoration: InputDecoration(
          filled: isRegister ? false : true,
          prefixIcon: prefixIcon,
          suffixIcon: const Icon(
            Icons.keyboard_arrow_down,
            color: AppColors.neutralN80,
          ),
          enabledBorder: isRegister
              ? const OutlineInputBorder(
                  borderSide: BorderSide(color: AppColors.neutralN120),
                  borderRadius: BorderRadius.all(
                    Radius.circular(4),
                  ),
                )
              : const OutlineInputBorder(
                  borderSide: BorderSide(color: AppColors.neutralN130),
                  borderRadius: BorderRadius.all(
                    Radius.circular(4),
                  ),
                ),
          border: isRegister
              ? const OutlineInputBorder(
                  borderSide: BorderSide(color: AppColors.neutralN120),
                  borderRadius: BorderRadius.all(
                    Radius.circular(4),
                  ),
                )
              : const OutlineInputBorder(
                  borderSide: BorderSide(color: AppColors.neutralN120),
                  borderRadius: BorderRadius.all(
                    Radius.circular(4),
                  ),
                ),
          focusedBorder: isRegister
              ? OutlineInputBorder(
                  borderSide: const BorderSide(color: AppColors.neutralN80),
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
          labelText: label,
          labelStyle: const TextStyle(
            fontWeight: FontWeight.w500,
          ),
          fillColor: isRegister ? Colors.white : AppColors.neutralN130,
          hintText: hintText ?? "",
          hintStyle: const TextStyle(
            fontSize: AppConstants.kFontSizeS,
            color: AppColors.neutralN80,
          ),
        ),
      ),
      onChanged: onChanged,
    );
  }
}
