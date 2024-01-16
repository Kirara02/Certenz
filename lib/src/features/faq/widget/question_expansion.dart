import 'package:certenz/l10n/locale_keys.g.dart';
import 'package:certenz/src/config/theme/colors.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class QuestionExpansion extends StatefulWidget {
  final String title;
  final String description;
  const QuestionExpansion(
      {super.key, required this.title, required this.description});

  @override
  State<QuestionExpansion> createState() => _QuestionExpansionState();
}

class _QuestionExpansionState extends State<QuestionExpansion> {
  bool isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 16,
        // vertical: 14,
      ),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          border: Border.all(color: AppColors.grey, width: 1.5)),
      child: Theme(
        data: ThemeData().copyWith(dividerColor: Colors.transparent),
        child: ExpansionTile(
          controlAffinity: ListTileControlAffinity.trailing,
          tilePadding: EdgeInsets.zero,
          childrenPadding: const EdgeInsets.only(bottom: 14),
          title: Text(
            widget.title,
            style: const TextStyle(
              color: AppColors.black,
              fontWeight: FontWeight.w600,
            ),
          ),
          expandedAlignment: Alignment.centerLeft,
          expandedCrossAxisAlignment: CrossAxisAlignment.start,
          onExpansionChanged: (bool expanded) {
            setState(() => isExpanded = expanded);
          },
          trailing: !isExpanded
              ? const Icon(
                  Icons.add_rounded,
                  color: AppColors.orange,
                )
              : const Icon(
                  Icons.remove_rounded,
                  color: AppColors.orange,
                ),
          children: [
            Text(
              widget.description,
              textAlign: TextAlign.start,
              style: const TextStyle(
                color: AppColors.grey4,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
