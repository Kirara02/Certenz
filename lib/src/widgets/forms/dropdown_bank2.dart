import 'package:certenz/src/config/constant.dart';
import 'package:certenz/src/config/screen.dart';
import 'package:certenz/src/config/theme/colors.dart';
import 'package:certenz/src/data/models/bank/bank_model.dart';
import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DropdownBank2 extends StatefulWidget {
  final String? hintText;
  final dynamic selectedItem;
  final Widget? prefixIcon;
  final void Function(BankModel) onBankSelected; // Callback function
  final List<BankModel> listBank; // Pass the list of banks

  const DropdownBank2({
    super.key,
    this.selectedItem,
    this.hintText,
    this.prefixIcon,
    required this.onBankSelected, // Pass the callback function
    required this.listBank, // Pass the list of banks
  });

  @override
  State<DropdownBank2> createState() => _DropdownBank2State();
}

class _DropdownBank2State extends State<DropdownBank2> {
  BankModel? selectedBank;

  @override
  void initState() {
    super.initState();
    selectedBank = widget.listBank.firstWhere(
      (bank) => bank.name == widget.selectedItem,
      orElse: () => widget.listBank[0],
    );
  }

  @override
  Widget build(BuildContext context) {
    List<String?> listBanks = widget.listBank.map((e) => e.name).toList();
    List<String?> listBanksLogo = widget.listBank.map((e) => e.image).toList();

    return DropdownSearch<String?>(
      popupProps: const PopupProps.menu(
        constraints: BoxConstraints(
          maxHeight: 130,
        ),
        showSearchBox: false,
      ),
      items: listBanks,
      selectedItem: widget.selectedItem,
      dropdownDecoratorProps: DropDownDecoratorProps(
        baseStyle: const TextStyle(
          fontSize: AppConstants.kFontSizeS,
          color: AppColors.neutralN50,
        ),
        dropdownSearchDecoration: InputDecoration(
          filled: true,
          prefixIcon: widget.selectedItem != null
              ? Padding(
                  padding: const EdgeInsets.only(left: 10, right: 10),
                  child: Image.asset(
                    selectedBank!.image!,
                    width: AppScreens.width * 0.1,
                  ),
                )
              : null,
          suffixIcon: const Icon(
            Icons.keyboard_arrow_down,
            color: AppColors.neutralN80,
          ),
          enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: AppColors.neutralN130),
            borderRadius: BorderRadius.all(
              Radius.circular(4),
            ),
          ),
          border: const OutlineInputBorder(
            borderSide: BorderSide(color: AppColors.neutralN120),
            borderRadius: BorderRadius.all(
              Radius.circular(4),
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: AppColors.neutralN80),
            borderRadius: BorderRadius.circular(4),
          ),
          counterStyle: const TextStyle(
            fontSize: AppConstants.kFontSizeS,
            color: AppColors.neutralN80,
          ),
          fillColor: AppColors.neutralN130,
          hintText: widget.hintText ?? "",
          hintStyle: GoogleFonts.poppins(
            fontSize: AppConstants.kFontSizeS,
            color: AppColors.neutralN80,
          ),
        ),
      ),
      onChanged: (value) {
        int index = listBanks.indexOf(value);
        setState(() {
          selectedBank = BankModel(
            id: index,
            name: value!,
            image: listBanksLogo[index],
          );
        });
        // Call the callback function to notify the parent widget
        widget.onBankSelected(selectedBank!);
      },
    );
  }
}
