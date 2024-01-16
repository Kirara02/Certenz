import 'package:certenz/gen/assets.gen.dart';
import 'package:certenz/l10n/locale_keys.g.dart';
import 'package:certenz/src/config/constant.dart';
import 'package:certenz/src/config/screen.dart';
import 'package:certenz/src/config/theme/colors.dart';
import 'package:certenz/src/data/models/split_bill/split_bill_item_model.dart';
import 'package:certenz/src/data/models/split_bill/split_bill_model.dart';
import 'package:certenz/src/data/services/dummy_service.dart';
import 'package:certenz/src/features/create_split_bill/view/create_split_bill_page.dart';
import 'package:certenz/src/features/split_bill/widget/people_split_card.dart';
import 'package:certenz/src/utils/formatters.dart';
import 'package:certenz/src/widgets/common/powered_widget.dart';
import 'package:certenz/src/widgets/common/share_bill_to.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import '../../../widgets/common/custom_appbar.dart';

class DetailSplitBillPage extends StatelessWidget {
  final SplitBillModel splitBillData;
  final List<SplitBillItemModel> splitBillItems;
  const DetailSplitBillPage({
    super.key,
    required this.splitBillData,
    required this.splitBillItems,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppbarCustom(
        onPressed: () {
          Navigator.pushAndRemoveUntil(
              context,
              MaterialPageRoute(
                builder: (context) => const CreateSplitBillPage(),
              ),
              (route) => false);
        },
        title: LocaleKeys.detail_split_bill_title.tr(),
        backgroundColor: AppColors.orange,
        type: "x",
      ),
      body: WillPopScope(
        onWillPop: () async {
          Navigator.pushAndRemoveUntil(
              context,
              MaterialPageRoute(
                builder: (context) => const CreateSplitBillPage(),
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
                  padding: const EdgeInsets.symmetric(
                    horizontal: 17,
                    vertical: 24,
                  ),
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
                            Center(
                              child: Text(
                                LocaleKeys.detail_split_bill_title.tr(),
                                style: const TextStyle(
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
                      Center(
                        child: Text(
                          LocaleKeys.detail_split_bill_t_amount.tr(),
                          style: const TextStyle(
                            fontSize: AppConstants.kFontSizeS,
                            color: AppColors.neutralN20,
                          ),
                        ),
                      ),
                      const SizedBox(height: 4),
                      Center(
                        child: Text(
                          formatCurrencyNonDecimal(
                              double.parse(splitBillData.amountTotal)),
                          style: const TextStyle(
                            fontSize: AppConstants.kFontSizeXXL,
                            fontWeight: FontWeight.bold,
                            color: AppColors.neutralN20,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 32,
                      ),
                      SizedBox(
                        width: double.infinity,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const SizedBox(height: 12),
                            Text(
                              LocaleKeys.detail_split_bill_split_with.tr(),
                              style: const TextStyle(
                                fontSize: AppConstants.kFontSizeS,
                                fontWeight: FontWeight.bold,
                                color: AppColors.neutralN40,
                              ),
                            ),
                            const SizedBox(height: 10),
                            ListView.builder(
                              shrinkWrap: true,
                              physics: const NeverScrollableScrollPhysics(),
                              itemCount: splitBillItems.length,
                              itemBuilder: (context, index) {
                                var item = splitBillItems[index];
                                return PeopleSplitCard(
                                  splitData: splitBillData,
                                  splitItemData: item,
                                );
                              },
                            )
                          ],
                        ),
                      ),
                      const SizedBox(height: 30),
                      const PoweredWidget(),
                      const SizedBox(height: 30),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 30),
              SizedBox(
                width: AppScreens.width * 0.5,
                child: ShareBillTo(
                  text: LocaleKeys.detail_split_bill_share_split.tr(),
                ),
              ),
              const SizedBox(height: 30),
            ],
          ),
        ),
      ),
    );
  }
}
