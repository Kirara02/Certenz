import 'package:certenz/l10n/locale_keys.g.dart';
import 'package:certenz/src/blocs/history/history_bloc.dart';
import 'package:certenz/src/config/constant.dart';
import 'package:certenz/src/config/theme/colors.dart';
import 'package:certenz/src/cubits/navigation_cubit.dart';
import 'package:certenz/src/data/models/history/history_model.dart';
import 'package:certenz/src/data/services/dummy_service.dart';
import 'package:certenz/src/features/home/widget/card_transaction.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class HistoryHome extends StatelessWidget {
  const HistoryHome({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          HistoryBloc()..add(const HistoryEvent.getAllHistories(page: 1)),
      child: Builder(builder: (context) {
        return Container(
          padding: const EdgeInsets.symmetric(horizontal: 18),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    LocaleKeys.home_page_history.tr(),
                    style: const TextStyle(
                      fontSize: AppConstants.kFontSizeS,
                      fontWeight: FontWeight.w500,
                      color: AppColors.neutralN40,
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      context.read<NavigationCubit>().changeIndex(3);
                    },
                    child: Text(
                      LocaleKeys.home_page_see_all.tr(),
                      style: const TextStyle(
                        fontSize: AppConstants.kFontSizeS,
                        fontWeight: FontWeight.bold,
                        color: AppColors.orange,
                      ),
                    ),
                  ),
                ],
              ),
              // const SizedBox(height: 6),
              BlocBuilder<HistoryBloc, HistoryState>(
                builder: (context, state) {
                  return state.maybeWhen(
                    orElse: () => const Text("hai"),
                    loading: () => SpinKitCircle(
                      color: AppColors.primaryColors,
                    ),
                    successPagination: (data) {
                      return ListView.builder(
                        padding: EdgeInsets.zero,
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        itemCount: data.data.length,
                        itemBuilder: (context, index) {
                          var item = data.data[index];
                          return CardTransaction(data: item);
                        },
                      );
                    },
                  );
                },
              ),
            ],
          ),
        );
      }),
    );
  }
}
