// import 'package:certenz/gen/assets.gen.dart';
// import 'package:certenz/l10n/locale_keys.g.dart';
// import 'package:certenz/src/app/app_root.dart';
// import 'package:certenz/src/config/constant.dart';
// import 'package:certenz/src/config/screen.dart';
// import 'package:certenz/src/config/theme/colors.dart';
// import 'package:certenz/src/data/models/split_bill/split_bill_item_model.dart';
// import 'package:certenz/src/data/models/split_bill/split_bill_model.dart';
// import 'package:certenz/src/utils/formatters.dart';
// import 'package:certenz/src/widgets/buttons/button_primary.dart';
// import 'package:certenz/src/widgets/common/custom_appbar.dart';
// import 'package:certenz/src/widgets/common/custom_clip_path.dart';
// import 'package:certenz/src/widgets/common/powered_widget.dart';
// import 'package:certenz/src/widgets/common/share_bill_to.dart';
// import 'package:certenz/src/widgets/common/text_column.dart';
// import 'package:easy_localization/easy_localization.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
// import 'package:flutter_svg/flutter_svg.dart';
//
// class PaymentPendingPage extends StatelessWidget {
//   final SplitBillModel splitData;
//   final SplitBillItemModel splitItemData;
//   const PaymentPendingPage({
//     super.key,
//     required this.splitData,
//     required this.splitItemData,
//   });
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: AppColors.neutralN130,
//       body: WillPopScope(
//         onWillPop: () async {
//           Navigator.pushAndRemoveUntil(
//               context,
//               MaterialPageRoute(
//                 builder: (context) => const AppRoot(),
//               ),
//               (route) => false);
//           return false;
//         },
//         child: SingleChildScrollView(
//           child: Stack(
//             children: [
//               // ClipPath(
//               //   clipper: WaveClipperTwo(),
//               //   child: Container(
//               //     height: 302,
//               //     decoration: const BoxDecoration(
//               //       color: AppColors.orange,
//               //     ),
//               //   ),
//               // ),
//               Assets.images.paymentBg
//                   .image(width: AppScreens.width, fit: BoxFit.fill),
//               Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Container(
//                     padding: const EdgeInsets.only(left: 24, top: 24),
//                     height: 302,
//                     child: Column(
//                       children: [
//                         Row(
//                           children: [
//                             GestureDetector(
//                               onTap: () {
//                                 Navigator.of(context).pushAndRemoveUntil(
//                                     MaterialPageRoute(
//                                       builder: (context) => const AppRoot(),
//                                     ),
//                                     (route) => false);
//                               },
//                               child: const Icon(
//                                 Icons.chevron_left_rounded,
//                                 color: AppColors.neutralN140,
//                               ),
//                             )
//                           ],
//                         ),
//                         const SizedBox(height: 8),
//                         Center(
//                           child: Text(
//                             splitItemData.createBillStatus,
//                             style: const TextStyle(
//                               fontSize: AppConstants.kFontSizeXXL,
//                               fontWeight: FontWeight.bold,
//                               color: AppColors.neutralN140,
//                             ),
//                           ),
//                         ),
//                         const SizedBox(height: 8),
//                         Center(
//                           child: SvgPicture.asset(
//                             Assets.icons.pending.path,
//                             width: 84,
//                           ),
//                         ),
//                         const SizedBox(height: 8),
//                         Center(
//                           child: Text(
//                             formatCurrencyNonDecimal(splitData.amountTotal),
//                             textAlign: TextAlign.center,
//                             style: const TextStyle(
//                               fontSize: AppConstants.kFontSizeX,
//                               fontWeight: FontWeight.bold,
//                               color: AppColors.neutralN140,
//                             ),
//                           ),
//                         ),
//                         const SizedBox(height: 20),
//                       ],
//                     ),
//                   ),
//                   Padding(
//                     padding: const EdgeInsets.symmetric(horizontal: 24),
//                     child: Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       mainAxisSize: MainAxisSize.max,
//                       children: [
//                         const SizedBox(height: 38),
//                         Center(
//                           child: Text(
//                             splitData.title,
//                             style: const TextStyle(
//                               fontWeight: FontWeight.bold,
//                               color: AppColors.neutralN30,
//                             ),
//                           ),
//                         ),
//                         const SizedBox(height: 25),
//                         TextColum(
//                           title: LocaleKeys.payment_status_page_date.tr(),
//                           subTitle: splitItemData.transactionDatetime,
//                         ),
//                         TextColum(
//                           title: LocaleKeys.payment_status_page_payment_to.tr(),
//                           subTitle: splitItemData.toName,
//                         ),
//                         TextColum(
//                           title: LocaleKeys.payment_status_page_payment_method
//                               .tr(),
//                           subTitle: splitItemData.paymentMethod,
//                         ),
//                         TextColum(
//                           title: LocaleKeys.payment_status_page_from.tr(),
//                           subTitle: splitItemData.fromName,
//                         ),
//                         TextColum(
//                           title: LocaleKeys.payment_status_page_amount.tr(),
//                           subTitle: formatCurrency(splitData.amountTotal),
//                         ),
//                         TextColum(
//                           title: LocaleKeys.payment_status_page_admin_fee.tr(),
//                           subTitle: "2,500.00",
//                           subtitleTextDecoration: TextDecoration.lineThrough,
//                         ),
//                         TextColum(
//                           title: LocaleKeys.form_title_total_amount.tr(),
//                           subTitle: formatCurrency(splitData.amountTotal),
//                         ),
//                         const SizedBox(height: 8),
//                         Row(
//                           crossAxisAlignment: CrossAxisAlignment.end,
//                           mainAxisAlignment: MainAxisAlignment.center,
//                           children: [
//                             Expanded(
//                               flex: 1,
//                               child: SizedBox(
//                                 width: 150,
//                                 child: BtnPrimary(
//                                   title: "QR Code",
//                                   onTap: () {},
//                                 ),
//                               ),
//                             ),
//                             const SizedBox(
//                               width: 15,
//                             ),
//                             const Expanded(
//                               flex: 1,
//                               child: ShareBillTo(),
//                             ),
//                           ],
//                         ),
//                         const SizedBox(height: 35),
//                         const PoweredWidget(),
//                         const SizedBox(height: 35),
//                       ],
//                     ),
//                   ),
//                 ],
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
