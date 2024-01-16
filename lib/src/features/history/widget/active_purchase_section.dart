import 'package:certenz/src/features/history/widget/history_list_tile.dart';
import 'package:flutter/cupertino.dart';

class ActivePurchaseSection extends StatelessWidget {
  const ActivePurchaseSection({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      padding: const EdgeInsets.symmetric(horizontal: 23, vertical: 12),
      shrinkWrap: true,
      itemCount: 5,
      separatorBuilder: (context, index) => const SizedBox(
        height: 10,
      ),
      itemBuilder: (context, index) => const HistoryListTile(),
    );
  }
}
