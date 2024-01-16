import 'package:bloc/bloc.dart';
import 'package:certenz/src/core/api_result.dart';
import 'package:certenz/src/core/network_exceptions.dart';
import 'package:certenz/src/data/models/bill/bill_model.dart';
import 'package:certenz/src/data/models/create_bill/create_bill_model.dart';
import 'package:certenz/src/data/services/create_bill/create_bill_service.dart';
import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:logger/logger.dart';

part 'create_bill_event.dart';
part 'create_bill_state.dart';
part 'create_bill_bloc.freezed.dart';

class CreateBillBloc extends Bloc<CreateBillEvent, CreateBillState> {
  CreateBillBloc() : super(const CreateBillState.initial()) {
    on<CreateBillEvent>((event, emit) async {
      await event.when(
        createBill: (formData) async {
          emit(const CreateBillState.loading());
          ApiResult<BillModel> result =
              await CreateBillService().createBill(formData: formData);

          result.when(
            success: (data) => emit(CreateBillState.success(data)),
            failure: (error) => emit(CreateBillState.error(error)),
          );
        },
      );
    });
  }

  @override
  void onEvent(CreateBillEvent event) {
    Logger().d(event);
    super.onEvent(event);
  }

  @override
  void onChange(Change<CreateBillState> change) {
    Logger().d(change);
    super.onChange(change);
  }
}
