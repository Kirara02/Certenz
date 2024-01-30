// import 'package:certenz/src/blocs/history/history_bloc.dart';
// import 'package:certenz/src/config/theme/colors.dart';
// import 'package:certenz/src/data/models/history/history_model.dart';
// import 'package:certenz/src/features/history/widget/history_list_tile.dart';
// import 'package:certenz/src/widgets/common/empty_list.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:flutter_spinkit/flutter_spinkit.dart';
//
// class HistorySection extends StatefulWidget {
//   const HistorySection({super.key});
//
//   @override
//   State<HistorySection> createState() => _HistorySectionState();
// }
//
// class _HistorySectionState extends State<HistorySection> {
//   int page = 1;
//   final ScrollController _scrollController = ScrollController();
//   late HistoryBloc _historyBloc;
//   bool hasReachedMax = false;
//
//   List<HistoryModel> listData = [];
//
//   @override
//   void initState() {
//     super.initState();
//     _historyBloc = context.read<HistoryBloc>();
//     _scrollController.addListener(_onScroll);
//     _historyBloc.add(HistoryEvent.getAllHistories(page: page, pagination: 15));
//   }
//
//   void _onScroll() {
//     if (_scrollController.position.atEdge &&
//         _scrollController.position.pixels != 0 &&
//         !hasReachedMax) {
//       page++;
//       _historyBloc
//           .add(HistoryEvent.getAllHistories(page: page, pagination: 15));
//     }
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return RefreshIndicator(
//       onRefresh: _refreshData,
//       child: BlocListener<HistoryBloc, HistoryState>(
//         bloc: _historyBloc,
//         listener: (context, state) {
//           state.maybeWhen(
//             success: (data, hasReachedMaxFlag) {
//               hasReachedMax = hasReachedMaxFlag;
//               setState(() {
//                 listData.addAll(data);
//               });
//             },
//             orElse: () {},
//           );
//         },
//         child: ListView.separated(
//           controller: _scrollController,
//           padding: const EdgeInsets.symmetric(horizontal: 23, vertical: 12),
//           shrinkWrap: true,
//           physics: const AlwaysScrollableScrollPhysics(),
//           itemCount: listData.length + (hasReachedMax ? 0 : 1),
//           separatorBuilder: (context, index) => const SizedBox(height: 10),
//           itemBuilder: (context, index) {
//             if (index >= listData.length) {
//               return hasReachedMax
//                   ? const SizedBox()
//                   : SpinKitCircle(color: AppColors.primaryColors);
//             }
//             if (listData.isEmpty) {
//               return const EmptyList(message: "No items found");
//             }
//             return HistoryListTile(data: listData[index]);
//           },
//         ),
//       ),
//     );
//   }
//
//   Future<void> _refreshData() async {
//     // Reset page counter and data
//     setState(() {
//       page = 1;
//       listData.clear();
//       hasReachedMax = false;
//     });
//
//     // Call the bloc event to reload data
//     _historyBloc.add(HistoryEvent.getAllHistories(page: page, pagination: 15));
//   }
//
//   @override
//   void dispose() {
//     _scrollController.removeListener(_onScroll);
//     _scrollController.dispose();
//     super.dispose();
//   }
// }

import 'package:certenz/src/blocs/history/history_bloc.dart';
import 'package:certenz/src/config/theme/colors.dart';
import 'package:certenz/src/data/models/history/history_model.dart';
import 'package:certenz/src/features/history/widget/history_list_tile.dart';
import 'package:certenz/src/widgets/common/empty_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';

class HistorySection extends StatefulWidget {
  const HistorySection({super.key});

  @override
  State<HistorySection> createState() => _HistorySectionState();
}

class _HistorySectionState extends State<HistorySection> {
  final PagingController<int, HistoryModel> _pagingController =
      PagingController(firstPageKey: 1);

  List<HistoryModel> listData = [];

  @override
  void initState() {
    _pagingController.addPageRequestListener((pageKey) {
      context.read<HistoryBloc>().add(HistoryEvent.getAllHistories(
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
