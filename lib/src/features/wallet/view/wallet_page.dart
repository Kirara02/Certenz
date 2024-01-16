// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';

class WalletPage extends StatelessWidget {
  const WalletPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Wallet "),
        actions: const [],
      ),
      body: Container(
        padding: const EdgeInsets.all(10.0),
        // child: const UXDevelopment(showButton: false),
      ),
    );
  }
}
