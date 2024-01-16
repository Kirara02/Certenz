// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';

class PayPage extends StatelessWidget {
  const PayPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Pay "),
          actions: const [],
        ),
        body: Container(
          padding: const EdgeInsets.all(10.0),
          // child: const UXDevelopment(showButton: false),
        ),
      ),
    );
  }
}
