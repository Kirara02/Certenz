import 'package:certenz/src/config/theme/colors.dart';
import 'package:flutter/material.dart';

class EmptyList extends StatelessWidget {
  final String message;
  final IconData iconData;
  final double iconSize;
  final double textSize;

  const EmptyList({
    Key? key,
    required this.message,
    this.iconData = Icons.inbox,
    this.iconSize = 64.0,
    this.textSize = 16.0,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            iconData,
            size: iconSize,
            color: Colors.grey,
          ),
          const SizedBox(height: 16),
          Text(
            message,
            style: TextStyle(
              fontSize: textSize,
              color: AppColors.neutralN80,
            ),
          ),
        ],
      ),
    );
  }
}
