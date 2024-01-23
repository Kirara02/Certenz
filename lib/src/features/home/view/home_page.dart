import 'package:certenz/src/features/home/widget/balance_home.dart';
import 'package:certenz/src/features/home/widget/card_home.dart';
import 'package:certenz/src/features/home/widget/header_home.dart';
import 'package:certenz/src/features/home/widget/history_home.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            HeaderHome(),
            SizedBox(height: 12),
            CardHome(),
            SizedBox(height: 32),
            BalanceHome(),
            SizedBox(height: 12),
            HistoryHome(),
          ],
        ),
      ),
    );
  }
}
