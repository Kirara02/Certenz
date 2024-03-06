import 'package:certenz/gen/assets.gen.dart';
import 'package:certenz/l10n/locale_keys.g.dart';
import 'package:certenz/src/config/constant.dart';
import 'package:certenz/src/config/screen.dart';
import 'package:certenz/src/config/theme/colors.dart';
import 'package:certenz/src/data/models/bill/bill_model.dart';
import 'package:certenz/src/utils/formatters.dart';
import 'package:certenz/src/utils/logger.dart';
import 'package:certenz/src/widgets/common/custom_appbar.dart';
import 'package:certenz/src/widgets/common/share_bill_to.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';

class QRBillPage extends StatefulWidget {
  final BillModel data;
  const QRBillPage({super.key, required this.data});

  @override
  State<QRBillPage> createState() => _QRBillPageState();
}

class _QRBillPageState extends State<QRBillPage> {
  double fee = 2500;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppbarCustom(
        onPressed: () {
          if (context.canPop()) {
            context.pop();
          } else {
            context.goNamed("home");
          }
        },
        shape: LinearBorder.none,
        title: "Bill Account",
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.symmetric(
                horizontal: 24,
                vertical: 24,
              ),
              decoration: const BoxDecoration(
                color: AppColors.orange,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(33),
                  bottomRight: Radius.circular(33),
                ),
              ),
              child: Container(
                width: AppScreens.width,
                padding:
                    const EdgeInsets.symmetric(horizontal: 17, vertical: 24),
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(
                    Radius.circular(8),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      alignment: Alignment.center,
                      width: AppScreens.width,
                      child: Stack(
                        children: [
                          Image.asset(
                            Assets.images.logo.path,
                            height: 24,
                            width: AppScreens.width * 0.2,
                          ),
                          const Center(
                            child: Text(
                              "Bill Account",
                              style: TextStyle(
                                fontSize: AppConstants.kFontSizeXL,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 32,
                    ),
                    SizedBox(
                      width: AppScreens.width,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(LocaleKeys.qr_from.tr()),
                          const SizedBox(
                            height: 4,
                          ),
                          Text(
                            widget.data.fromName,
                            style: const TextStyle(
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          const SizedBox(
                            height: 12,
                          ),
                          Text(
                            LocaleKeys.qr_tr_number.tr(),
                            style: const TextStyle(
                              fontSize: AppConstants.kFontSizeS,
                            ),
                          ),
                          const SizedBox(
                            height: 4,
                          ),
                          Text(
                            widget.data.billNumber,
                            style: const TextStyle(
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          const SizedBox(
                            height: 12,
                          ),
                          Text(
                            LocaleKeys.qr_amount.tr(),
                            style: const TextStyle(
                              fontSize: AppConstants.kFontSizeS,
                            ),
                          ),
                          const SizedBox(
                            height: 4,
                          ),
                          Text(
                            formatCurrencyNonDecimal(
                                widget.data.totalAmountBill),
                            style: const TextStyle(
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          const SizedBox(
                            height: 12,
                          ),
                          Text(
                            LocaleKeys.qr_fee.tr(),
                            style: const TextStyle(
                              fontSize: AppConstants.kFontSizeS,
                            ),
                          ),
                          const SizedBox(
                            height: 4,
                          ),
                          Text(
                            formatCurrencyNonDecimal(fee),
                            style: TextStyle(
                                fontWeight: FontWeight.w600,
                                decoration: fee != 0
                                    ? TextDecoration.none
                                    : TextDecoration.lineThrough),
                          ),
                          const SizedBox(
                            height: 12,
                          ),
                          widget.data.tenantPeriod == null
                              ? Column(
                                  children: [
                                    Text(
                                      LocaleKeys.qr_status.tr(),
                                      style: const TextStyle(
                                        fontSize: AppConstants.kFontSizeS,
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 4,
                                    ),
                                    IntrinsicWidth(
                                      child: Container(
                                        padding: const EdgeInsets.symmetric(
                                          horizontal: 12,
                                          vertical: 6,
                                        ),
                                        decoration: BoxDecoration(
                                          color: AppColors.yellow,
                                          borderRadius:
                                              BorderRadius.circular(14),
                                        ),
                                        child: Text(
                                          widget.data.status!,
                                          style: const TextStyle(
                                            fontWeight: FontWeight.w600,
                                            color: AppColors.neutralN140,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                )
                              : Column(
                                  children: [
                                    const Text(
                                      "Tenant",
                                      style: TextStyle(
                                        fontSize: AppConstants.kFontSizeS,
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 4,
                                    ),
                                    IntrinsicWidth(
                                      child: Container(
                                        padding: const EdgeInsets.symmetric(
                                          horizontal: 12,
                                          vertical: 6,
                                        ),
                                        decoration: BoxDecoration(
                                          color: AppColors.yellow,
                                          borderRadius:
                                              BorderRadius.circular(14),
                                        ),
                                        child: Text(
                                          widget.data.tenantPeriod!,
                                          style: const TextStyle(
                                            fontWeight: FontWeight.w600,
                                            color: AppColors.neutralN140,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                          const SizedBox(
                            height: 24,
                          ),
                          SvgPicture.network(widget.data.qrCode ?? "",
                              width: 180),
                          const SizedBox(
                            height: 12,
                          ),
                          Text(
                            LocaleKeys.qr_t_amount.tr(),
                            style: const TextStyle(
                              fontSize: AppConstants.kFontSizeS,
                            ),
                          ),
                          const SizedBox(
                            height: 4,
                          ),
                          Text(
                            formatCurrencyNonDecimal(
                                widget.data.totalAmountBill + fee),
                            style: const TextStyle(
                              fontSize: AppConstants.kFontSizeX,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 30),
            SizedBox(
                width: AppScreens.width * 0.5,
                child: const ShareBillTo(text: "Share bill to")),
            const SizedBox(height: 30),
          ],
        ),
      ),
    );
  }
}
