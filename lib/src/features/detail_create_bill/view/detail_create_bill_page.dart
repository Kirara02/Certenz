import 'package:certenz/gen/assets.gen.dart';
import 'package:certenz/src/app/app_root.dart';
import 'package:certenz/src/config/constant.dart';
import 'package:certenz/src/config/screen.dart';
import 'package:certenz/src/config/theme/colors.dart';
import 'package:certenz/src/features/payment_status/view/payment_success_page.dart';
import 'package:certenz/src/widgets/buttons/button_primary.dart';
import 'package:certenz/src/widgets/common/powered_widget.dart';
import 'package:certenz/src/widgets/common/share_bill_to.dart';
import 'package:certenz/src/widgets/common/text_column.dart';
import 'package:flutter/material.dart';

import '../../../widgets/common/custom_appbar.dart';

class DetailCreateBillPage extends StatelessWidget {
  const DetailCreateBillPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppbarCustom(
        onPressed: () {
          Navigator.pushAndRemoveUntil(
              context,
              MaterialPageRoute(
                builder: (context) => const AppRoot(),
              ),
              (route) => false);
        },
        title: "Account Billing",
        backgroundColor: AppColors.orange,
        type: "x",
      ),
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
                      const Center(
                        child: Text(
                          "Transaction Details",
                          style: TextStyle(
                            fontSize: AppConstants.kFontSizeS,
                            fontWeight: FontWeight.bold,
                            color: AppColors.neutralN20,
                          ),
                        ),
                      ),
                      const SizedBox(height: 20),
                      const TextColum(
                          title: "Date",
                          subTitle: "23 October 2023   12:20 WIB"),
                      const SizedBox(height: 10),
                      const TextColum(
                          title: "Payment to", subTitle: "PRABUJATI ADISTYA"),
                      const SizedBox(height: 10),
                      const TextColum(
                          title: "Account Number",
                          subTitle: "123-4567-89097-6543-1"),
                      const SizedBox(height: 10),
                      const TextColum(
                          title: "Payment Method", subTitle: "BI-FAST"),
                      const SizedBox(height: 20),
                      const TextColum(title: "From", subTitle: "JOHN DOE"),
                      const SizedBox(height: 10),
                      TextColum(
                          title: "Account Number",
                          image: Assets.images.bni.path,
                          subTitle: "123-4567-89097-6543-1"),
                      const SizedBox(height: 30),
                      const PoweredWidget(),
                      const SizedBox(height: 30),
                      BtnPrimary(
                        onTap: () {
                          Navigator.pushAndRemoveUntil(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    const PaymentSuccessPage(),
                              ),
                              (route) => false);
                        },
                        title: "Check Status",
                      )
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 30),
              SizedBox(
                width: AppScreens.width * 0.5,
                child: const ShareBillTo(),
              ),
              const SizedBox(height: 30),
            ],
          ),
        ),
      ),
    );
  }
}
