// import 'package:certenz/src/config/constant.dart';
// import 'package:certenz/src/config/screen.dart';
// import 'package:certenz/src/config/theme/colors.dart';
// import 'package:certenz/src/data/models/account_bank/account_bank_model.dart';
// import 'package:certenz/src/data/models/bank/bank_model.dart';
// import 'package:dropdown_search/dropdown_search.dart';
// import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';
//
// class DropdownAccountBank extends StatefulWidget {
//   final String? hintText;
//   final dynamic selectedItem;
//   final Widget? prefixIcon;
//   final void Function(AccountBankModel) onAccountSelected; // Callback function
//   final List<AccountBankModel> listAccountBank; // Pass the list of banks
//
//   const DropdownAccountBank({
//     super.key,
//     this.selectedItem,
//     this.hintText,
//     this.prefixIcon,
//     required this.onAccountSelected, // Pass the callback function
//     required this.listAccountBank, // Pass the list of banks
//   });
//
//   @override
//   State<DropdownAccountBank> createState() => _DropdownAccountBankState();
// }
//
// class _DropdownAccountBankState extends State<DropdownAccountBank> {
//   AccountBankModel? selectedAccountBank;
//
//   @override
//   void initState() {
//     super.initState();
//     selectedAccountBank = widget.listAccountBank.firstWhere(
//       (bank) => bank.name == widget.selectedItem,
//       orElse: () => widget.listAccountBank[0],
//     );
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     List<String?> listAccount =
//         widget.listAccountBank.map((e) => e.name).toList();
//     List<String?> listBank = widget.listAccountBank.map((e) => e.name).toList();
//     List<int?> listNoRek = widget.listAccountBank.map((e) => e.norek).toList();
//     List<String?> listBanksLogo =
//         widget.listAccountBank.map((e) => e.bankImage).toList();
//
//     return DropdownSearch<String?>(
//       popupProps: const PopupProps.menu(
//         constraints: BoxConstraints(
//           maxHeight: 130,
//         ),
//         showSearchBox: false,
//       ),
//       items: listAccount,
//       selectedItem: widget.selectedItem,
//       dropdownDecoratorProps: DropDownDecoratorProps(
//         baseStyle: const TextStyle(
//           fontSize: AppConstants.kFontSizeS,
//           color: AppColors.neutralN50,
//         ),
//         dropdownSearchDecoration: InputDecoration(
//           filled: true,
//           prefixIcon: widget.selectedItem != null
//               ? Padding(
//                   padding: const EdgeInsets.only(left: 10, right: 10),
//                   child: Image.asset(
//                     selectedAccountBank!.bankImage!,
//                     width: AppScreens.width * 0.1,
//                   ),
//                 )
//               : null,
//           suffixIcon: const Icon(
//             Icons.keyboard_arrow_down,
//             color: AppColors.neutralN80,
//           ),
//           enabledBorder: const OutlineInputBorder(
//             borderSide: BorderSide(color: AppColors.neutralN130),
//             borderRadius: BorderRadius.all(
//               Radius.circular(4),
//             ),
//           ),
//           border: const OutlineInputBorder(
//             borderSide: BorderSide(color: AppColors.neutralN120),
//             borderRadius: BorderRadius.all(
//               Radius.circular(4),
//             ),
//           ),
//           focusedBorder: OutlineInputBorder(
//             borderSide: const BorderSide(color: AppColors.neutralN80),
//             borderRadius: BorderRadius.circular(4),
//           ),
//           counterStyle: const TextStyle(
//             fontSize: AppConstants.kFontSizeS,
//             color: AppColors.neutralN80,
//           ),
//           fillColor: AppColors.neutralN130,
//           hintText: widget.hintText ?? "",
//           hintStyle: GoogleFonts.poppins(
//             fontSize: AppConstants.kFontSizeS,
//             color: AppColors.neutralN80,
//           ),
//         ),
//       ),
//       onChanged: (value) {
//         int index = listAccount.indexOf(value);
//         setState(() {
//           selectedAccountBank = AccountBankModel(
//             id: index,
//             name: value!,
//             norek: listNoRek[index]!,
//             bank: listBank[index]!,
//             bankImage: listBanksLogo[index]!,
//           );
//         });
//         widget.onAccountSelected(selectedAccountBank!);
//       },
//     );
//   }
// }

import 'package:certenz/l10n/locale_keys.g.dart';
import 'package:certenz/src/config/constant.dart';
import 'package:certenz/src/config/screen.dart';
import 'package:certenz/src/config/theme/colors.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:certenz/src/data/models/account_bank/account_bank_model.dart';

class DropdownAccountBank extends StatefulWidget {
  final String? hintText;
  final AccountBankModel? selectedItem;
  final void Function(AccountBankModel?) onAccountSelected; // Callback function
  final List<AccountBankModel> listAccountBank; // Pass the list of banks

  const DropdownAccountBank({
    Key? key,
    this.hintText,
    this.selectedItem,
    required this.onAccountSelected,
    required this.listAccountBank,
  }) : super(key: key);

  @override
  State<DropdownAccountBank> createState() => _DropdownAccountBankState();
}

class _DropdownAccountBankState extends State<DropdownAccountBank> {
  @override
  Widget build(BuildContext context) {
    return DropdownButtonHideUnderline(
      child: Container(
        decoration: BoxDecoration(
          color: AppColors.neutralN130,
          borderRadius: BorderRadius.circular(4),
        ),
        child: ButtonTheme(
          alignedDropdown: true,
          child: DropdownButton<AccountBankModel>(
            value: widget.selectedItem,
            isExpanded: true,
            items: widget.listAccountBank.map((item) {
              return DropdownMenuItem<AccountBankModel>(
                value: item,
                alignment: Alignment.centerLeft,
                child: SizedBox(
                  width: AppScreens.width,
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Image.asset(
                        item.bankImage,
                        width: 60,
                        height: 32,
                      ),
                      const SizedBox(width: 10),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              item.bank,
                              style: const TextStyle(
                                fontSize: AppConstants.kFontSizeM,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            const SizedBox(
                              height: 2,
                            ),
                            Flexible(
                              child: Text(
                                "${item.norek} a.n ${item.name}",
                                maxLines: 2,
                                style: const TextStyle(
                                  fontSize: AppConstants.kFontSizeXS,
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              );
            }).toList(),
            padding: const EdgeInsets.symmetric(vertical: 6, horizontal: 0),
            hint: Text(
              widget.hintText!,
              style: const TextStyle(
                fontSize: AppConstants.kFontSizeS,
                color: AppColors.neutralN50,
              ),
            ),
            onChanged: widget.onAccountSelected,
          ),
        ),
      ),
    );
  }
}
