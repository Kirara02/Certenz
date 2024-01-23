// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables

import 'package:certenz/gen/assets.gen.dart';
import 'package:certenz/l10n/locale_keys.g.dart';
import 'package:certenz/src/blocs/history/history_bloc.dart';
import 'package:certenz/src/config/constant.dart';
import 'package:certenz/src/config/screen.dart';
import 'package:certenz/src/config/theme/colors.dart';
import 'package:certenz/src/features/history/widget/active_purchase_section.dart';
import 'package:certenz/src/features/history/widget/bill_section.dart';
import 'package:certenz/src/features/history/widget/history_section.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HistoryPage extends StatefulWidget {
  const HistoryPage({Key? key}) : super(key: key);

  @override
  State<HistoryPage> createState() => _HistoryPageState();
}

class _HistoryPageState extends State<HistoryPage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  int page = 1;

  @override
  void initState() {
    _tabController = TabController(length: 3, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    _tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => HistoryBloc(),
      child: Builder(builder: (context) {
        return Scaffold(
          body: Column(
            children: [
              Container(
                height: AppScreens.height * 0.15,
                padding: const EdgeInsets.only(left: 13, right: 13, top: 43),
                decoration: const BoxDecoration(
                  color: AppColors.orange,
                  borderRadius: BorderRadius.vertical(
                    bottom: Radius.circular(32),
                  ),
                ),
                alignment: Alignment.topCenter,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        ClipOval(
                          child: Image.asset(
                            Assets.images.user1.path,
                            width: 32,
                            height: 32,
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        const Text(
                          "Ajie Kusuma",
                          style: TextStyle(
                            fontSize: AppConstants.kFontSizeS,
                            fontWeight: FontWeight.bold,
                            color: AppColors.neutralN140,
                          ),
                        )
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: Row(
                        children: [
                          Material(
                            color: Colors.transparent,
                            child: InkWell(
                              onTap: () {},
                              child: SvgPicture.asset(
                                Assets.icons.notification.path,
                              ),
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 32,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 23),
                child: TabBar(
                  controller: _tabController,
                  padding: const EdgeInsets.symmetric(
                    horizontal: 8,
                    vertical: 2,
                  ),
                  tabs: [
                    Tab(
                      child: Text(
                        LocaleKeys.history_history.tr(),
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          fontSize: AppConstants.kFontSizeS,
                        ),
                      ),
                    ),
                    Tab(
                      child: Text(
                        LocaleKeys.history_active_purchase.tr(),
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          fontSize: AppConstants.kFontSizeS,
                        ),
                      ),
                    ),
                    Tab(
                      child: Text(
                        LocaleKeys.history_bill.tr(),
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          fontSize: AppConstants.kFontSizeS,
                        ),
                      ),
                    ),
                  ],
                  unselectedLabelColor: AppColors.black,
                  labelColor: AppColors.neutralN140,
                  indicator: BoxDecoration(
                    borderRadius: BorderRadius.circular(80.0),
                    color: AppColors.orange,
                  ),
                ),
              ),
              const SizedBox(
                height: 22,
              ),
              Expanded(
                child: TabBarView(
                  controller: _tabController,
                  physics: const NeverScrollableScrollPhysics(),
                  children: const [
                    HistorySection(),
                    ActivePurchaseSection(),
                    BillSection(),
                  ],
                ),
              ),
            ],
          ),
        );
      }),
    );
  }
}
