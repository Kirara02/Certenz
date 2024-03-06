import 'package:bloc/bloc.dart';
import 'package:certenz/src/core/api_result.dart';
import 'package:certenz/src/core/network_exceptions.dart';
import 'package:certenz/src/data/models/payment/payment_bank_va_model.dart';
import 'package:certenz/src/data/models/payment/payment_qris_model.dart';
import 'package:certenz/src/data/repository/payment_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:logger/logger.dart';

part 'payment_event.dart';
part 'payment_state.dart';
part 'payment_bloc.freezed.dart';

class PaymentBloc extends Bloc<PaymentEvent, PaymentState> {
  PaymentBloc() : super(const PaymentState.initial()) {
    on<PaymentEvent>((event, emit) async {
      await event.when(
        payWithBankAccount: (billId, bankCode, type) async {
          emit(const PaymentState.loading());
          final ApiResult<PaymentBankVaModel> result = await PaymentService()
              .payWithBankAccount(
                  billId: billId, bankCode: bankCode, type: type);

          result.when(
            success: (data) => emit(PaymentState.loadedVaBank(data)),
            failure: (error) => emit(PaymentState.error(error)),
          );
        },
        payWithQris: (billId, type) async {
          emit(const PaymentState.loading());
          final ApiResult<PaymentQrisModel> result =
              await PaymentService().payWithQris(billId: billId, type: type);

          result.when(
            success: (data) => emit(PaymentState.loadedQris(data)),
            failure: (error) => emit(PaymentState.error(error)),
          );
        },
      );
    });
  }

  @override
  void onEvent(PaymentEvent event) {
    Logger().d(event);
    super.onEvent(event);
  }

  @override
  void onChange(Change<PaymentState> change) {
    Logger().d(change);
    super.onChange(change);
  }
}
