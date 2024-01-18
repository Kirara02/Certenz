// import 'package:certenz/src/config/constant.dart';
// import 'package:certenz/src/config/theme/colors.dart';
// import 'package:certenz/src/cubits/text_field_cubit.dart';
// import 'package:certenz/src/data/models/bank/bank_model.dart';
// import 'package:certenz/src/data/services/dummy_service.dart';
// import 'package:dropdown_search/dropdown_search.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:google_fonts/google_fonts.dart';
//
// class DropdownBank extends StatelessWidget {
//   const DropdownBank({
//     this.selectedItem,
//     this.hintText,
//     this.prefixIcon,
//     super.key,
//   });
//   final String? hintText;
//   final dynamic selectedItem;
//   final Widget? prefixIcon;
//
//   @override
//   Widget build(BuildContext context) {
//     List<int?> listBanksId = DummyService.listBank.map((e) => e.id).toList();
//     List<String?> listBanks = DummyService.listBank.map((e) => e.name).toList();
//     List<String?> listBanksLogo =
//         DummyService.listBank.map((e) => e.image).toList();
//
//     return DropdownSearch<String?>(
//       popupProps: const PopupProps.menu(
//         constraints: BoxConstraints(
//           maxHeight: 130,
//         ),
//         showSearchBox: false,
//       ),
//       items: listBanks,
//       selectedItem: selectedItem,
//       dropdownDecoratorProps: DropDownDecoratorProps(
//         baseStyle: const TextStyle(
//           fontSize: AppConstants.kFontSizeS,
//           color: AppColors.neutralN50,
//         ),
//         dropdownSearchDecoration: InputDecoration(
//           filled: true,
//           prefixIcon: prefixIcon,
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
//           hintText: hintText ?? "",
//           hintStyle: GoogleFonts.poppins(
//             fontSize: AppConstants.kFontSizeS,
//             color: AppColors.neutralN80,
//           ),
//         ),
//       ),
//       onChanged: (value) {
//         int index = listBanks.indexOf(value);
//         BlocProvider.of<PrefixIcon>(context).changePrefixIcon(
//           BankModel(
//             id: index,
//             name: value!,
//             image: listBanksLogo[index],
//           ),
//         );
//       },
//     );
//   }
// }
