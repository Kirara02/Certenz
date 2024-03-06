import 'package:certenz/l10n/locale_keys.g.dart';
import 'package:certenz/src/blocs/history/history_bloc.dart';
import 'package:certenz/src/blocs/notification/notification_bloc.dart';
import 'package:certenz/src/config/theme/colors.dart';
import 'package:certenz/src/features/notification/widget/notification_information_section.dart';
import 'package:certenz/src/features/notification/widget/notification_transaction_section.dart';
import 'package:certenz/src/widgets/common/custom_appbar.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class NotificationPage extends StatefulWidget {
  const NotificationPage({super.key});

  @override
  State<NotificationPage> createState() => _NotificationPageState();
}

class _NotificationPageState extends State<NotificationPage> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => NotificationBloc(),
      child: Builder(builder: (context) {
        return Scaffold(
          appBar: AppbarCustom(
            onPressed: () => context.pop(),
            title: LocaleKeys.notification_title.tr(),
          ),
          body: DefaultTabController(
            length: 2,
            child: Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: const Color(0xffFFFBFE),
                    boxShadow: [
                      BoxShadow(
                        color: AppColors.black2.withOpacity(0.2),
                        offset: const Offset(0, 2),
                        blurRadius: 2,
                      ),
                    ],
                  ),
                  child: TabBar(
                    unselectedLabelColor: AppColors.grey8,
                    labelColor: AppColors.orange,
                    labelPadding: const EdgeInsets.symmetric(vertical: 16),
                    indicatorColor: AppColors.orange,
                    indicator: const UnderlineTabIndicator(
                      borderSide: BorderSide(width: 3, color: AppColors.orange),
                      insets: EdgeInsets.symmetric(horizontal: 48),
                    ),
                    tabs: [
                      Text(LocaleKeys.notification_transaction.tr()),
                      Text(LocaleKeys.notification_information.tr()),
                    ],
                  ),
                ),
                const Expanded(
                  child: TabBarView(
                    children: [
                      NotificationTransactionSection(),
                      NotificationInformationSection(),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      }),
    );
  }
}
