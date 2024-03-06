// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables

import 'package:certenz/src/widgets/common/custom_appbar.dart';
import 'package:certenz/src/widgets/common/ux_development.dart';
import 'package:flutter/material.dart';

class WalletPage extends StatelessWidget {
  const WalletPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppbarCustom(
        title: "Wallet ",
        showLeading: false,
      ),
      body: Container(
        padding: const EdgeInsets.all(10.0),
        child: const UXDevelopment(showButton: false),
      ),
    );
  }
}
