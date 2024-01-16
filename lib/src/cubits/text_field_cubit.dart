import 'package:bloc/bloc.dart';
import 'package:certenz/src/data/models/bank/bank_model.dart';
// import 'package:certenz/model/bank_model.dart';

class Pin extends Cubit<bool> {
  Pin() : super(true);

  void toggleObscured(bool obscured) => emit(obscured);
}

class ConfirmPin extends Cubit<bool> {
  ConfirmPin() : super(true);

  void toggleObscuredConfirm(bool obscured) => emit(obscured);
}

class PrefixIcon extends Cubit<BankModel?> {
  PrefixIcon() : super(null);

  void changePrefixIcon(BankModel prefixIcon) => emit(prefixIcon);
}

class CheckSplit extends Cubit<bool> {
  CheckSplit() : super(false);

  void toggleCheckSplit(bool checkSplit) => emit(checkSplit);
}
