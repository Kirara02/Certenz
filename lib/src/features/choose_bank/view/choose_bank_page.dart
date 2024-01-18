// import 'package:certenz/gen/assets.gen.dart';
// import 'package:certenz/src/config/constant.dart';
// import 'package:certenz/src/config/screen.dart';
// import 'package:certenz/src/config/theme/colors.dart';
// import 'package:certenz/src/data/models/bank/bank_model.dart';
// import 'package:certenz/src/data/services/dummy_service.dart';
// import 'package:certenz/src/features/choose_bank/widget/radio_expansion_tile.dart';
// import 'package:certenz/src/features/detail_bill/view/detail_bill_page.dart';
// import 'package:certenz/src/utils/logger.dart';
// import 'package:certenz/src/widgets/buttons/button_primary.dart';
// import 'package:certenz/src/widgets/common/custom_appbar.dart';
// import 'package:certenz/src/widgets/common/share_bill_to.dart';
// import 'package:flutter/material.dart';
//
// class ChooseBankPage extends StatefulWidget {
//   const ChooseBankPage({super.key});
//
//   @override
//   State<ChooseBankPage> createState() => _ChooseBankPageState();
// }
//
// class _ChooseBankPageState extends State<ChooseBankPage> {
//   BankModel _selectedBank = DummyService.listBank[0];
//
//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: Scaffold(
//         appBar: AppbarCustom(
//           onPressed: () => Navigator.pop(context),
//           title: "Create Bill",
//           backgroundColor: AppColors.orange,
//           type: "x",
//         ),
//         body: SingleChildScrollView(
//           child: Column(
//             children: [
//               Container(
//                 padding: const EdgeInsets.symmetric(
//                   horizontal: 24,
//                   vertical: 24,
//                 ),
//                 decoration: const BoxDecoration(
//                   color: AppColors.orange,
//                   borderRadius: BorderRadius.only(
//                     bottomLeft: Radius.circular(33),
//                     bottomRight: Radius.circular(33),
//                   ),
//                 ),
//                 child: Container(
//                   width: AppScreens.width,
//                   padding:
//                       const EdgeInsets.symmetric(horizontal: 17, vertical: 24),
//                   decoration: const BoxDecoration(
//                     color: Colors.white,
//                     borderRadius: BorderRadius.all(
//                       Radius.circular(8),
//                     ),
//                   ),
//                   child: Column(
//                     children: [
//                       Container(
//                         alignment: Alignment.center,
//                         width: AppScreens.width,
//                         child: Stack(
//                           children: [
//                             Image.asset(
//                               Assets.images.logo.path,
//                               height: 24,
//                               width: AppScreens.width * 0.2,
//                             ),
//                             const Center(
//                               child: Text(
//                                 "Create Bill",
//                                 style: TextStyle(
//                                   fontSize: AppConstants.kFontSizeXL,
//                                   fontWeight: FontWeight.w500,
//                                 ),
//                               ),
//                             )
//                           ],
//                         ),
//                       ),
//                       const SizedBox(
//                         height: 12,
//                       ),
//                       const Column(
//                         children: [
//                           Text(
//                             "From",
//                             style: TextStyle(
//                               fontSize: AppConstants.kFontSizeS,
//                             ),
//                           ),
//                           Text(
//                             "Rental Motor Perkasa",
//                             style: TextStyle(
//                               fontWeight: FontWeight.bold,
//                             ),
//                           ),
//                           SizedBox(
//                             height: 12,
//                           ),
//                           Text(
//                             "Amount",
//                             style: TextStyle(
//                               fontSize: AppConstants.kFontSizeS,
//                             ),
//                           ),
//                           Text(
//                             "Rp 1.500.000",
//                             style: TextStyle(
//                               fontSize: AppConstants.kFontSizeX,
//                               fontWeight: FontWeight.bold,
//                             ),
//                           ),
//                         ],
//                       ),
//                       const SizedBox(
//                         height: 25,
//                       ),
//                       Column(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           const Text(
//                             "Select Payment Method",
//                             style: TextStyle(
//                               fontSize: AppConstants.kFontSizeXS,
//                             ),
//                           ),
//                           RadioExpansionTile(
//                             initialTitle: 'Select a Bank',
//                             options: DummyService.listBank,
//                             selectedOption: _selectedBank,
//                             onChanged: (selectedBank) {
//                               setState(() {
//                                 _selectedBank = selectedBank;
//                               });
//                             },
//                           )
//                         ],
//                       ),
//                       const SizedBox(
//                         height: 120,
//                       ),
//                       BtnPrimary(
//                         title: "Proceed",
//                         onTap: () {
//                           vLog(_selectedBank);
//                           Navigator.push(
//                             context,
//                             MaterialPageRoute(
//                               builder: (context) => const DetailBillPage(),
//                             ),
//                           );
//                         },
//                       )
//                     ],
//                   ),
//                 ),
//               ),
//               const SizedBox(height: 30),
//               const ShareBillTo(),
//               const SizedBox(height: 30),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
