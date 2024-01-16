import 'package:certenz/gen/assets.gen.dart';
import 'package:certenz/l10n/locale_keys.g.dart';
import 'package:certenz/src/config/constant.dart';
import 'package:certenz/src/config/theme/colors.dart';
import 'package:certenz/src/features/faq/widget/faq_footer.dart';
import 'package:certenz/src/features/faq/widget/problem_with_bill.dart';
import 'package:certenz/src/features/faq/widget/question_about.dart';
import 'package:certenz/src/features/faq/widget/question_expansion.dart';
import 'package:certenz/src/widgets/common/custom_appbar.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class FAQPage extends StatefulWidget {
  const FAQPage({super.key});

  @override
  State<FAQPage> createState() => _FAQPageState();
}

class _FAQPageState extends State<FAQPage> {
  TextEditingController searchController = TextEditingController();

  List<Map<String, dynamic>> listQuestions = [
    {
      "title": LocaleKeys.faq_how_create_account_title.tr(),
      "desc": LocaleKeys.faq_how_create_account_description.tr(),
    },
    {
      "title": LocaleKeys.faq_how_add_payment_title.tr(),
      "desc": LocaleKeys.faq_how_add_payment_description.tr(),
    },
    {
      "title": LocaleKeys.faq_how_to_split_title.tr(),
      "desc": LocaleKeys.faq_how_to_split_description.tr(),
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Scaffold(
          appBar: AppbarCustom(
            onPressed: () => Navigator.pop(context),
            widgetTitle: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Assets.images.logo.image(width: 80),
                const SizedBox(
                  width: 6,
                ),
                Container(
                  padding: const EdgeInsets.all(4),
                  decoration: BoxDecoration(
                    color: AppColors.yellow,
                    borderRadius: BorderRadius.circular(4),
                  ),
                  child: const Text(
                    "Care",
                    style: TextStyle(
                      fontSize: AppConstants.kFontSizeXS,
                      color: UIColors.white,
                    ),
                  ),
                )
              ],
            ),
            centerTitle: true,
          ),
          floatingActionButton: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                width: 80,
                height: 80,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(Assets.images.customerService1.path),
                  ),
                ),
              ),
              const SizedBox(
                height: 4,
              ),
              Text(
                LocaleKeys.faq_cos_care.tr(),
                style: const TextStyle(
                  fontWeight: FontWeight.w500,
                ),
              )
            ],
          ),
          body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 32,
                  ),
                  Center(
                    child: Text(
                      LocaleKeys.faq_Subtitle.tr(),
                      style: const TextStyle(
                        fontSize: AppConstants.kFontSizeXXL,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  const SizedBox(height: 25),
                  TextField(
                    controller: searchController,
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: AppColors.neutralN130,
                      contentPadding: const EdgeInsets.symmetric(vertical: 12),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: BorderSide.none,
                      ),
                      prefixIcon: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 16, vertical: 9),
                        child: Assets.icons.searchFaq.svg(width: 25),
                      ),
                      hintText: LocaleKeys.faq_hint_search.tr(),
                      hintStyle: const TextStyle(
                        color: AppColors.grey4,
                      ),
                    ),
                  ),
                  const SizedBox(height: 16),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        LocaleKeys.faq_problem_bill.tr(),
                        style: const TextStyle(
                          fontSize: AppConstants.kFontSizeM,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          LocaleKeys.text_button_view_all.tr(),
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            color: AppColors.orange,
                          ),
                        ),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        ProblemWithBill(
                          name: "name",
                          img: Assets.images.user3.path,
                          amount: 500000,
                          status: "Pending",
                          type: "Account Billing",
                        ),
                        ProblemWithBill(
                          name: "name",
                          img: Assets.images.user3.path,
                          amount: 500000,
                          status: "Pending",
                          type: "Account Billing",
                        ),
                        ProblemWithBill(
                          name: "name",
                          img: Assets.images.user3.path,
                          amount: 500000,
                          status: "Pending",
                          type: "Account Billing",
                        ),
                        ProblemWithBill(
                          name: "name",
                          img: Assets.images.user3.path,
                          amount: 500000,
                          status: "Pending",
                          type: "Account Billing",
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Center(
                    child: Text(
                      LocaleKeys.faq_about_p.tr(),
                      style: const TextStyle(
                        fontSize: AppConstants.kFontSizeM,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  const SizedBox(height: 8),
                  Wrap(
                    runSpacing: 10,
                    spacing: 0,
                    alignment: WrapAlignment.center,
                    children: [
                      QuestionAbout(
                        icon: Assets.icons.profileSecurity.svg(),
                        title: LocaleKeys.faq_about_problem_account.tr(),
                        onTap: () {},
                      ),
                      QuestionAbout(
                        icon: Assets.icons.notes.svg(),
                        title: LocaleKeys.faq_about_problem_billing.tr(),
                        onTap: () {},
                      ),
                      QuestionAbout(
                        icon: Assets.icons.payment.svg(),
                        title: LocaleKeys.faq_about_problem_payment.tr(),
                        onTap: () {},
                      ),
                      QuestionAbout(
                        icon: Assets.icons.solarHandMoneyBroken.svg(),
                        title: LocaleKeys.faq_about_problem_refund.tr(),
                        onTap: () {},
                      ),
                      QuestionAbout(
                        icon: Assets.icons.mdiLoudspeaker.svg(),
                        title: LocaleKeys.faq_about_problem_promotion.tr(),
                        onTap: () {},
                      ),
                      QuestionAbout(
                        icon: Assets.icons.mingcuteDotGridFill.svg(),
                        title: LocaleKeys.faq_about_problem_others.tr(),
                        onTap: () {},
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 28,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        LocaleKeys.faq_top_questions.tr(),
                        style: const TextStyle(
                          fontSize: AppConstants.kFontSizeL,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          LocaleKeys.text_button_view_all.tr(),
                          style: const TextStyle(
                            fontWeight: FontWeight.w700,
                            color: AppColors.orange,
                          ),
                        ),
                      )
                    ],
                  ),
                  const SizedBox(height: 20),
                  Column(
                    children: listQuestions.map((item) {
                      return Container(
                        margin: const EdgeInsets.only(bottom: 16),
                        child: QuestionExpansion(
                          title: item['title'],
                          description: item['desc'],
                        ),
                      );
                    }).toList(),
                  ),
                  const SizedBox(
                    height: 60,
                  ),
                  const FaqFooter(),
                  const SizedBox(
                    height: 20,
                  ),
                ],
              ),
            ),
          ),
        ),
        Assets.images.headerWaveTop.image(),
      ],
    );
  }
}
