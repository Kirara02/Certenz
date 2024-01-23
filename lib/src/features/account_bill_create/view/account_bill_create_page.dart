import 'package:certenz/gen/assets.gen.dart';
import 'package:certenz/src/app/app_root.dart';
import 'package:certenz/src/config/constant.dart';
import 'package:certenz/src/config/screen.dart';
import 'package:certenz/src/config/theme/colors.dart';
import 'package:certenz/src/utils/logger.dart';
import 'package:certenz/src/widgets/common/custom_appbar.dart';
import 'package:certenz/src/widgets/common/share_bill_to.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AccountBillCreatePage extends StatefulWidget {
  const AccountBillCreatePage({super.key});

  @override
  State<AccountBillCreatePage> createState() => _AccountBillCreatePageState();
}

class _AccountBillCreatePageState extends State<AccountBillCreatePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppbarCustom(
          onPressed: () => Navigator.pop(context),
          title: "Account Billing",
          backgroundColor: AppColors.orange,
          type: "x",
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
                            )
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 12,
                      ),
                      Column(
                        children: [
                          const Text(
                            "From",
                            style: TextStyle(
                              fontSize: AppConstants.kFontSizeS,
                            ),
                          ),
                          const Text(
                            "Rental Motor Perkasa",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
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
                          const Text(
                            "123-4567-89097-6543-1",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(
                            height: 12,
                          ),
                          const Text(
                            "Tenant",
                            style: TextStyle(
                              fontSize: AppConstants.kFontSizeS,
                            ),
                          ),
                          const SizedBox(
                            height: 4,
                          ),
                          Container(
                            width: 100,
                            padding: const EdgeInsets.symmetric(
                              vertical: 4,
                            ),
                            decoration: BoxDecoration(
                              color: AppColors.orange,
                              borderRadius: BorderRadius.circular(50),
                            ),
                            child: const Center(
                              child: Text(
                                "1 Month",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: UIColors.white),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 23,
                          ),
                          Image.asset(
                            Assets.images.qr.path,
                            width: 200,
                            height: 190,
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          const Text(
                            "Amount",
                            style: TextStyle(
                              fontSize: AppConstants.kFontSizeS,
                            ),
                          ),
                          const Text(
                            "Rp 1.500.000",
                            style: TextStyle(
                              fontSize: AppConstants.kFontSizeX,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
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
