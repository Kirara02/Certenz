import 'package:certenz/gen/assets.gen.dart';
import 'package:certenz/src/app/app_root.dart';

import 'package:certenz/src/config/constant.dart';
import 'package:certenz/src/config/screen.dart';
import 'package:certenz/src/config/theme/colors.dart';
import 'package:certenz/src/features/history/view/history_page.dart';
import 'package:certenz/src/widgets/buttons/button_primary.dart';
import 'package:certenz/src/widgets/common/custom_appbar.dart';
import 'package:certenz/src/widgets/common/powered_widget.dart';
import 'package:certenz/src/widgets/common/text_column.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class PaymentPendingJobPage extends StatefulWidget {
  const PaymentPendingJobPage({super.key});

  @override
  State<PaymentPendingJobPage> createState() => _PaymentPendingJobPageState();
}

class _PaymentPendingJobPageState extends State<PaymentPendingJobPage> {
  _dialogFinishJob(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) {
        return Dialog(
          insetPadding:
              const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
          child: Container(
            height: AppScreens.height,
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "Are you sure you want to complete this work?",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: AppConstants.kFontSizeX,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: BtnPrimary(
                        title: 'YES',
                        onTap: () => Navigator.pushAndRemoveUntil(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const AppRoot(),
                            ),
                            (route) => false),
                      ),
                    ),
                    const SizedBox(
                      width: 25,
                    ),
                    Expanded(
                      flex: 1,
                      child: BtnPrimary(
                        title: 'NO',
                        onTap: () => Navigator.pop(context),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppbarCustom(
        type: "x",
        title: "",
        onPressed: () {
          Navigator.pushAndRemoveUntil(
              context,
              MaterialPageRoute(
                builder: (context) => const AppRoot(),
              ),
              (route) => false);
        },
      ),
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
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                decoration: const BoxDecoration(
                  color: AppColors.neutralN140,
                ),
                child: Column(
                  children: [
                    const Center(
                      child: Text(
                        "Total Amount Job",
                        style: TextStyle(
                          fontSize: AppConstants.kFontSizeXXL,
                          fontWeight: FontWeight.bold,
                          color: AppColors.neutralN30,
                        ),
                      ),
                    ),
                    const SizedBox(height: 8),
                    Center(
                      child: SvgPicture.asset(
                        Assets.icons.pending.path,
                      ),
                    ),
                    const SizedBox(height: 8),
                    const Center(
                      child: Text(
                        "Rp. 1.500.000",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: AppConstants.kFontSizeX,
                          fontWeight: FontWeight.bold,
                          color: AppColors.neutralN40,
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    const SizedBox(height: 15),
                    const Center(
                      child: Text(
                        "Transaction Details",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: AppColors.neutralN30,
                        ),
                      ),
                    ),
                    const SizedBox(height: 12),
                    const TextColum(
                        title: "Date", subTitle: "23 October 2023   12:20 WIB"),
                    const TextColum(
                        title: "Payment to", subTitle: "PRABUJATI ADISTYA"),
                    const TextColum(
                        title: "Account Number",
                        subTitle: "123-4567-89097-6543-1"),
                    const TextColum(
                        title: "Payment Method", subTitle: "BI-FAST"),
                    const TextColum(title: "From", subTitle: "JOHN DOE"),
                    TextColum(
                      title: "Account Number",
                      image: Assets.images.bni.path,
                      subTitle: "123-4567-89097-6543-1",
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    BtnPrimary(
                      title: 'Finish Job',
                      onTap: () => _dialogFinishJob(context),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    BtnPrimary(
                      title: 'Cancel Job',
                      onTap: () {},
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 35),
              const PoweredWidget(),
              const SizedBox(height: 35),
            ],
          ),
        ),
      ),
    );
  }
}
