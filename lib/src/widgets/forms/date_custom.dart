// import 'package:certenz/src/config/constant.dart';
// import 'package:certenz/src/config/theme/colors.dart';
// import 'package:date_time_picker/date_time_picker.dart';
// import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';
//
// class DateTimeCustom extends StatelessWidget {
//   const DateTimeCustom({
//     required this.controller,
//     this.isRegister = false,
//     this.hint,
//     super.key,
//   });
//
//   final TextEditingController controller;
//   final bool isRegister;
//   final String? hint;
//
//   @override
//   Widget build(BuildContext context) {
//     return DateTimePicker(
//       controller: controller,
//       style: const TextStyle(
//         fontSize: AppConstants.kFontSizeS,
//         color: AppColors.neutralN50,
//       ),
//       decoration: InputDecoration(
//         suffixIcon: const Padding(
//           padding: EdgeInsets.only(right: 4),
//           child: Icon(
//             Icons.calendar_today_outlined,
//             color: AppColors.neutralN50,
//             size: 14,
//           ),
//         ),
//         border: isRegister
//             ? const OutlineInputBorder(
//                 borderSide: BorderSide(color: AppColors.neutralN120),
//                 borderRadius: BorderRadius.all(
//                   Radius.circular(4),
//                 ),
//               )
//             : const UnderlineInputBorder(
//                 borderSide: BorderSide(
//                   color: AppColors.neutralN120,
//                 ),
//               ),
//         enabledBorder: isRegister
//             ? OutlineInputBorder(
//                 borderSide: const BorderSide(color: AppColors.neutralN120),
//                 borderRadius: BorderRadius.circular(4),
//               )
//             : null,
//         focusedBorder: isRegister
//             ? OutlineInputBorder(
//                 borderSide: const BorderSide(color: AppColors.neutralN80),
//                 borderRadius: BorderRadius.circular(4),
//               )
//             : const UnderlineInputBorder(
//                 borderSide: BorderSide(
//                   color: AppColors.orange,
//                 ),
//               ),
//         counterStyle: const TextStyle(
//           fontSize: AppConstants.kFontSizeS,
//           color: AppColors.neutralN80,
//         ),
//         fillColor: Colors.white,
//         hintText: hint ?? "",
//         hintStyle: const TextStyle(
//           fontSize: AppConstants.kFontSizeS,
//           color: AppColors.neutralN80,
//         ),
//       ),
//       type: DateTimePickerType.date,
//       dateMask: 'd MMM, yyyy',
//       //initialValue: _initialValue,
//       firstDate: DateTime(2000),
//       lastDate: DateTime(2100),
//       dateHintText: 'Birthday',
//       timeLabelText: "Hour",
//       //use24HourFormat: false,
//       //locale: Locale('pt', 'BR'),
//       selectableDayPredicate: (date) {
//         if (date.weekday == 6 || date.weekday == 7) {
//           return false;
//         }
//         return true;
//       },
//       onChanged: (val) {},
//       validator: (val) {
//         return null;
//       },
//       onSaved: (val) {},
//     );
//   }
// }
