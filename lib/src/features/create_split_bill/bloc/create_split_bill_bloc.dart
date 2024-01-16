import 'package:bloc/bloc.dart';
import 'package:certenz/src/core/api_result.dart';
import 'package:certenz/src/core/network_exceptions.dart';
import 'package:certenz/src/data/models/split_bill/split_bill_model.dart';
import 'package:certenz/src/data/services/split_bill/split_bill_service.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:logger/logger.dart';

part 'create_split_bill_event.dart';
part 'create_split_bill_state.dart';
part 'create_split_bill_bloc.freezed.dart';

class CreateSplitBillBloc
    extends Bloc<CreateSplitBillEvent, CreateSplitBillState> {
  CreateSplitBillBloc() : super(const CreateSplitBillState.initial()) {
    on<CreateSplitBillEvent>((event, emit) async {
      await event.when(
        createSplitBill: (title, amount) async {
          emit(const CreateSplitBillState.loading());
          ApiResult<SplitBillModel> result = await SplitBillService()
              .createSplitBill(title: title, amount: amount);

          result.when(
            success: (data) => emit(CreateSplitBillState.success(data)),
            failure: (error) => emit(CreateSplitBillState.error(error)),
          );
        },
      );
    });
  }

  @override
  void onEvent(CreateSplitBillEvent event) {
    Logger().d(event);
    super.onEvent(event);
  }

  @override
  void onChange(Change<CreateSplitBillState> change) {
    Logger().d(change);
    super.onChange(change);
  }
}
