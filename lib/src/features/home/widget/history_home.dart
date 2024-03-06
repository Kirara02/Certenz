import 'dart:developer';

import 'package:certenz/l10n/locale_keys.g.dart';
import 'package:certenz/src/blocs/history/history_bloc.dart';
import 'package:certenz/src/config/constant.dart';
import 'package:certenz/src/config/theme/colors.dart';
import 'package:certenz/src/features/home/widget/card_transaction.dart';
import 'package:certenz/src/widgets/common/empty_list.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:go_router/go_router.dart';

class HistoryHome extends StatelessWidget {
  const HistoryHome({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                LocaleKeys.home_page_history.tr(),
                style: const TextStyle(
                  fontSize: AppConstants.kFontSizeL,
                  fontWeight: FontWeight.w600,
                ),
              ),
              TextButton(
                onPressed: () {
                  StatefulNavigationShell.of(context).goBranch(2);
                },
                child: Text(
                  LocaleKeys.home_page_see_all.tr(),
                  style: const TextStyle(
                    fontSize: AppConstants.kFontSizeS,
                    fontWeight: FontWeight.w600,
                    color: AppColors.orange,
                  ),
                ),
              ),
            ],
          ),
          // const SizedBox(height: 6),
          BlocProvider(
            create: (context) => context.read<HistoryBloc>()
              ..add(const HistoryEvent.getAllHistories(page: 1)),
            child: BlocBuilder<HistoryBloc, HistoryState>(
              builder: (context, state) {
                return state.maybeWhen(
                  orElse: () => const SizedBox.shrink(),
                  loading: () => SpinKitCircle(
                    color: AppColors.primaryColors,
                  ),
                  successPagination: (data) {
                    if (data.data.isNotEmpty) {
                      return ListView.builder(
                        padding: EdgeInsets.zero,
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        itemCount: data.data.length >= 3 ? 3 : data.data.length,
                        itemBuilder: (context, index) {
                          var item = data.data[index];

                          return CardTransaction(data: item);
                        },
                      );
                    }
                    return const EmptyList(
                        message: "Haven't made a transaction yet");
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
