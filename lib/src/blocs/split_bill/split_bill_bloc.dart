import 'package:bloc/bloc.dart';
import 'package:certenz/src/core/api_result.dart';
import 'package:certenz/src/core/network_exceptions.dart';
import 'package:certenz/src/data/models/bill/bill_model.dart';
import 'package:certenz/src/data/models/split_bill/split_bill_model.dart';
import 'package:certenz/src/data/services/split_bill/split_bill_service.dart';
import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:logger/logger.dart';

part 'split_bill_event.dart';
part 'split_bill_state.dart';
part 'split_bill_bloc.freezed.dart';

class SplitBillBloc extends Bloc<SplitBillEvent, SplitBillState> {
  SplitBillBloc() : super(const SplitBillState.initial()) {
    on<SplitBillEvent>((event, emit) async {
      await event.when(
        createSplitBill: (title, amount) async {
          emit(const SplitBillState.loading());
          ApiResult<SplitBillModel> result = await SplitBillService()
              .createSplitBill(title: title, amount: amount);

          result.when(
            success: (data) => emit(SplitBillState.successCreateSplit(data)),
            failure: (error) => emit(SplitBillState.error(error)),
          );
        },
        addSplitBill: (splitId, formData) async {
          emit(const SplitBillState.loading());

          ApiResult<List<BillModel>> result = await SplitBillService()
              .createSplitBillItem(splitId: splitId, formData: formData);

          result.when(
            success: (data) => emit(SplitBillState.success(data)),
            failure: (error) => emit(SplitBillState.error(error)),
          );
        },
      );
    });
  }

  @override
  void onEvent(SplitBillEvent event) {
    Logger().d(event);
    super.onEvent(event);
  }

  @override
  void onChange(Change<SplitBillState> change) {
    Logger().d(change);
    super.onChange(change);
  }
}
