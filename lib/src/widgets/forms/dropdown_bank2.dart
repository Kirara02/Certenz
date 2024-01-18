import 'package:certenz/src/config/constant.dart';
import 'package:certenz/src/config/screen.dart';
import 'package:certenz/src/config/theme/colors.dart';
import 'package:certenz/src/data/models/bank/bank_model.dart';
import 'package:certenz/src/widgets/images/cached_network.dart';
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
  Widget build(BuildContext context) {
    return DropdownSearch<BankModel>(
      popupProps: PopupProps.menu(
        showSearchBox: false,
        menuProps: const MenuProps(
            borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(16),
                bottomLeft: Radius.circular(16))),
        itemBuilder: (context, item, isSelected) {
          return ListTile(
            title: Text(item.bankName),
            leading: UICacheNetworkImage(
              imageUrl: item.bankImage,
              size: const Size(60, 30),
              fit: BoxFit.fitWidth,
            ),
          );
        },
        constraints:
            BoxConstraints(maxHeight: MediaQuery.of(context).size.height * 0.3),
      ),
      items: widget.listBank,
      selectedItem: selectedBank,
      itemAsString: (BankModel? bank) => bank?.bankName ?? '',
      dropdownDecoratorProps: DropDownDecoratorProps(
        dropdownSearchDecoration: InputDecoration(
          filled: true,
          prefixIcon: widget.selectedItem != null
              ? Padding(
                  padding: const EdgeInsets.only(left: 10, right: 10),
                  child: UICacheNetworkImage(
                    imageUrl: selectedBank!.bankImage,
                    size: const Size(60, 30),
                    fit: BoxFit.fitWidth,
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
      onChanged: (BankModel? bank) {
        setState(() {
          selectedBank = bank;
        });
        if (bank != null) widget.onBankSelected(bank);
      },
    );
  }
}
