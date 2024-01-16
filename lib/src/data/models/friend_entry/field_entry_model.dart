import 'package:flutter/material.dart';

class FriendEntry {
  final TextEditingController emailController;
  final TextEditingController splitAmountController;
  final TextEditingController phoneController;
  final TextEditingController noteController;

  FriendEntry({
    required this.emailController,
    required this.splitAmountController,
    required this.phoneController,
    required this.noteController,
  });
}
