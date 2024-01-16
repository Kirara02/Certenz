import 'package:certenz/gen/assets.gen.dart';
import 'package:certenz/l10n/locale_keys.g.dart';
import 'package:certenz/src/app/app_root.dart';
import 'package:certenz/src/config/constant.dart';
import 'package:certenz/src/config/screen.dart';
import 'package:certenz/src/config/theme/colors.dart';
import 'package:certenz/src/widgets/buttons/button_primary.dart';
import 'package:certenz/src/widgets/common/custom_appbar.dart';
import 'package:certenz/src/widgets/common/custom_clip_path.dart';
import 'package:certenz/src/widgets/common/powered_widget.dart';
import 'package:certenz/src/widgets/common/share_bill_to.dart';
import 'package:certenz/src/widgets/common/text_column.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:flutter_svg/flutter_svg.dart';

class PaymentSuccessPage extends StatelessWidget {
  const PaymentSuccessPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.neutralN130,
      body: WillPopScope(
        onWillPop: () async {
          Navigator.pushAndRemoveUntil(
              context,
              MaterialPageRoute(
                builder: (context) => const AppRoot(),
              ),
              (route) => false);
          return false;
        },
        child: SingleChildScrollView(
          child: Stack(
            children: [
              // ClipPath(
              //   clipper: WaveClipperTwo(),
              //   child: Container(
              //     height: 302,
              //     decoration: const BoxDecoration(
              //       color: AppColors.orange,
              //     ),
              //   ),
              // ),
              Stack(
                children: [
                  Assets.images.paymentBg.image(
                    width: AppScreens.width,
                    fit: BoxFit.fill,
                    height: 302,
                  ),
                  Positioned(
                    bottom: 0,
                    child: Container(
                      width: AppScreens.width,
                      alignment: Alignment.center,
                      child: SvgPicture.asset(
                        Assets.icons.success.path,
                        width: 84,
                      ),
                    ),
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: const EdgeInsets.only(left: 24, top: 24),
                    height: 302,
                    child: Column(
                      children: [
                        Row(
                          children: [
                            GestureDetector(
                              onTap: () {
                                Navigator.of(context).pushAndRemoveUntil(
                                    MaterialPageRoute(
                                      builder: (context) => const AppRoot(),
                                    ),
                                    (route) => false);
                              },
                              child: const Icon(
                                Icons.chevron_left_rounded,
                                color: AppColors.neutralN140,
                              ),
                            )
                          ],
                        ),
                        const SizedBox(height: 24),
                        Center(
                          child: Text(
                            LocaleKeys.payment_status_page_success_title.tr(),
                            style: const TextStyle(
                              fontSize: AppConstants.kFontSizeXXL,
                              fontWeight: FontWeight.bold,
                              color: AppColors.neutralN140,
                            ),
                          ),
                        ),
                        const SizedBox(height: 15),
                        const Center(
                          child: Text(
                            "Rp1.500.000",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: AppConstants.kFontSizeX,
                              fontWeight: FontWeight.bold,
                              color: AppColors.neutralN140,
                            ),
                          ),
                        ),
                        const SizedBox(height: 2),
                        const Center(
                          child: Text(
                            "Admin +Rp2,500",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: AppConstants.kFontSizeS,
                              color: AppColors.neutralN140,
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        const SizedBox(height: 20),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 24),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(height: 15),
                        Center(
                          child: Text(
                            LocaleKeys.payment_status_page_t_detail.tr(),
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              color: AppColors.neutralN30,
                            ),
                          ),
                        ),
                        const SizedBox(height: 5),
                        Center(
                          child: Text(
                            "${LocaleKeys.payment_status_page_t_id.tr()} : 1234567890123456",
                            style: const TextStyle(
                              fontSize: AppConstants.kFontSizeS,
                              color: AppColors.neutralN30,
                            ),
                          ),
                        ),
                        const SizedBox(height: 8),
                        TextColum(
                          title: LocaleKeys.payment_status_page_date.tr(),
                          subTitle: "23 October 2023   12:20 WIB",
                        ),
                        TextColum(
                          title: LocaleKeys.payment_status_page_payment_to.tr(),
                          subTitle: "PRABUJATI ADISTYA",
                        ),
                        TextColum(
                          title: LocaleKeys.payment_status_page_account_number
                              .tr(),
                          subTitle: "123-4567-89097-6543-1",
                        ),
                        TextColum(
                          title: LocaleKeys.payment_status_page_payment_method
                              .tr(),
                          subTitle: "BI-FAST",
                        ),
                        TextColum(
                            title: LocaleKeys.payment_status_page_from.tr(),
                            subTitle: "JOHN DOE"),
                        TextColum(
                          title: LocaleKeys.payment_status_page_account_number
                              .tr(),
                          image: Assets.images.bni.path,
                          subTitle: "123-4567-89097-6543-1",
                        ),
                        const SizedBox(height: 8),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            SizedBox(
                              width: 150,
                              child: BtnPrimary(
                                title: "QR Code",
                                onTap: () {},
                              ),
                            ),
                            const Expanded(
                              child: ShareBillTo(),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  const SizedBox(height: 35),
                  const PoweredWidget(),
                  const SizedBox(height: 35),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
