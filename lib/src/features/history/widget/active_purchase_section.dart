import 'package:certenz/src/blocs/history/history_bloc.dart';
import 'package:certenz/src/config/theme/colors.dart';
import 'package:certenz/src/data/models/history/history_model.dart';
import 'package:certenz/src/features/history/widget/history_list_tile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class ActivePurchaseSection extends StatefulWidget {
  const ActivePurchaseSection({super.key});

  @override
  State<ActivePurchaseSection> createState() => _ActivePurchaseSectionState();
}

class _ActivePurchaseSectionState extends State<ActivePurchaseSection> {
  int page = 1;
  final ScrollController _scrollController = ScrollController();
  late HistoryBloc _historyBloc;
  bool hasReachedMax = false;

  List<HistoryModel> listData = [];

  @override
  void initState() {
    super.initState();
    _historyBloc = context.read<HistoryBloc>();
    _scrollController.addListener(_onScroll);
    _historyBloc
        .add(HistoryEvent.getAllPendingHistories(page: page, pagination: 15));
  }

  void _onScroll() {
    if (_scrollController.position.atEdge &&
        _scrollController.position.pixels != 0 &&
        !hasReachedMax) {
      page++;
      _historyBloc
          .add(HistoryEvent.getAllPendingHistories(page: page, pagination: 15));
    }
  }

  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
      onRefresh: _refreshData,
      child: BlocListener<HistoryBloc, HistoryState>(
        bloc: _historyBloc,
        listener: (context, state) {
          state.maybeWhen(
            success: (data, hasReachedMaxFlag) {
              hasReachedMax = hasReachedMaxFlag;
              setState(() {
                listData.addAll(data);
              });
            },
            orElse: () {},
          );
        },
        child: ListView.separated(
          controller: _scrollController,
          padding: const EdgeInsets.symmetric(horizontal: 23, vertical: 12),
          shrinkWrap: true,
          physics: const AlwaysScrollableScrollPhysics(),
          itemCount: listData.length + (hasReachedMax ? 0 : 1),
          separatorBuilder: (context, index) => const SizedBox(height: 10),
          itemBuilder: (context, index) {
            if (index >= listData.length) {
              return hasReachedMax
                  ? const SizedBox()
                  : SpinKitCircle(color: AppColors.primaryColors);
            }
            return HistoryListTile(data: listData[index]);
          },
        ),
      ),
    );
  }

  Future<void> _refreshData() async {
    // Reset page counter and data
    setState(() {
      page = 1;
      listData.clear();
      hasReachedMax = false;
    });

    // Call the bloc event to reload data
    _historyBloc
        .add(HistoryEvent.getAllPendingHistories(page: page, pagination: 15));
  }

  @override
  void dispose() {
    _scrollController.removeListener(_onScroll);
    _scrollController.dispose();
    super.dispose();
  }
}
