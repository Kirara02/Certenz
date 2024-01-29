import 'package:certenz/src/blocs/history/history_bloc.dart';
import 'package:certenz/src/config/theme/colors.dart';
import 'package:certenz/src/data/models/history/history_model.dart';
import 'package:certenz/src/features/history/widget/history_list_tile.dart';
import 'package:certenz/src/widgets/common/empty_list.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';

class BillSection extends StatefulWidget {
  const BillSection({super.key});

  @override
  State<BillSection> createState() => _BillSectionState();
}

class _BillSectionState extends State<BillSection> {
  final PagingController<int, HistoryModel> _pagingController =
      PagingController(firstPageKey: 1);

  List<HistoryModel> listData = [];

  @override
  void initState() {
    _pagingController.addPageRequestListener((pageKey) {
      context.read<HistoryBloc>().add(HistoryEvent.getAllSuccessHistories(
            page: pageKey,
            pagination: 15,
          ));
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
      onRefresh: () async => _pagingController.refresh(),
      child: BlocConsumer<HistoryBloc, HistoryState>(
        listener: (context, state) {
          state.maybeWhen(
            successPagination: (response) {
              listData = response.data;
              final isLastPage = response.pagination.currentPage ==
                  response.pagination.lastPage;
              if (isLastPage) {
                _pagingController.appendLastPage(listData);
              } else {
                final nextPageKey = response.pagination.currentPage! + 1;
                _pagingController.appendPage(listData, nextPageKey);
              }
            },
            orElse: () {},
          );
        },
        builder: (context, state) {
          return PagedListView(
            physics: const BouncingScrollPhysics(
                decelerationRate: ScrollDecelerationRate.fast),
            padding: const EdgeInsets.symmetric(horizontal: 23, vertical: 12),
            pagingController: _pagingController,
            builderDelegate: PagedChildBuilderDelegate<HistoryModel>(
              firstPageProgressIndicatorBuilder: (context) => SpinKitCircle(
                color: AppColors.primaryColors,
              ),
              noItemsFoundIndicatorBuilder: (context) =>
                  const EmptyList(message: "No Items found"),
              newPageProgressIndicatorBuilder: (context) => SpinKitCircle(
                color: AppColors.primaryColors,
              ),
              newPageErrorIndicatorBuilder: (context) =>
                  const Text('Error loading new page'),
              itemBuilder: (context, item, index) {
                return HistoryListTile(data: item);
              },
            ),
          );
        },
      ),
    );
  }

  @override
  void dispose() {
    _pagingController.dispose();
    super.dispose();
  }
}
