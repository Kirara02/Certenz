import 'package:certenz/gen/assets.gen.dart';
import 'package:certenz/src/config/constant.dart';
import 'package:certenz/src/config/screen.dart';
import 'package:certenz/src/config/theme/colors.dart';
import 'package:certenz/src/data/models/bill/bill_model.dart';
import 'package:certenz/src/utils/formatters.dart';
import 'package:certenz/src/widgets/common/custom_appbar.dart';
import 'package:certenz/src/widgets/common/share_bill_to.dart';
import 'package:flutter/material.dart';

class QRBillPage extends StatelessWidget {
  final BillModel data;
  const QRBillPage({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppbarCustom(
        onPressed: () => Navigator.pop(context),
        backgroundColor: AppColors.orange,
        type: "<",
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
                          const Text("From"),
                          const SizedBox(
                            height: 4,
                          ),
                          Text(
                            data.fromName,
                            style: const TextStyle(
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          const SizedBox(
                            height: 12,
                          ),
                          const Text(
                            "Account Number",
                            style: TextStyle(
                              fontSize: AppConstants.kFontSizeS,
                            ),
                          ),
                          const SizedBox(
                            height: 4,
                          ),
                          Text(
                            data.fromAccount,
                            style: const TextStyle(
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          const SizedBox(
                            height: 12,
                          ),
                          const Text(
                            "Status",
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
                                borderRadius: BorderRadius.circular(14),
                              ),
                              child: Text(
                                data.createBillStatus,
                                style: const TextStyle(
                                  fontWeight: FontWeight.w600,
                                  color: AppColors.neutralN140,
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 24,
                          ),
                          Assets.images.qr.image(width: 200),
                          const SizedBox(
                            height: 12,
                          ),
                          const Text(
                            "Amount",
                            style: TextStyle(
                              fontSize: AppConstants.kFontSizeS,
                            ),
                          ),
                          const SizedBox(
                            height: 4,
                          ),
                          Text(
                            formatCurrencyNonDecimal(data.totalAmountBill),
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
