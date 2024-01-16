import 'package:certenz/gen/assets.gen.dart';
import 'package:certenz/src/config/constant.dart';
import 'package:certenz/src/config/theme/colors.dart';
import 'package:certenz/src/features/home/widget/balance_home.dart';
import 'package:certenz/src/features/home/widget/card_home.dart';
import 'package:certenz/src/features/home/widget/header_home.dart';
import 'package:certenz/src/features/home/widget/history_home.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

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
