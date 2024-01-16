import 'package:bloc/bloc.dart';
import 'package:certenz/src/data/models/friend_entry/field_entry_model.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';

part 'splitbill_state.dart';

class SplitbillCubit extends Cubit<SplitbillState> {
  SplitbillCubit() : super(SplitbillInitial());

  List<FriendEntry> friendEntries = [];

  void addWidgetSplit() {
    emit(SplitbillLoading());
    // Tambahkan entri baru tanpa menghapus yang lama
    final emailController = TextEditingController();
    final splitAmountController = TextEditingController();
    final phoneController = TextEditingController();
    final noteController = TextEditingController();
    final newFriendEntry = FriendEntry(
      emailController: emailController,
      splitAmountController: splitAmountController,
      phoneController: phoneController,
      noteController: noteController,
    );

    friendEntries.add(newFriendEntry);
    emit(AddWidgetSplit(friendEntries));
  }

  void removeFriendEntry(int index) {
    emit(SplitbillLoading());
    if (index >= 0 && index < friendEntries.length) {
      friendEntries.removeAt(index);
      emit(AddWidgetSplit(friendEntries));
    }
  }

  void clearFriendEntries() {
    emit(SplitbillLoading());
    friendEntries.clear();
    emit(AddWidgetSplit(friendEntries));
  }

  void isProsessed(bool isProsessed) {
    emit(SplitbillLoading());
    emit(IsProsessed(isProsessed));
  }
}
