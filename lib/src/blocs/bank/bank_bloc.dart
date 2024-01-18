import 'package:bloc/bloc.dart';
import 'package:certenz/src/core/api_result.dart';
import 'package:certenz/src/core/network_exceptions.dart';
import 'package:certenz/src/data/models/bank/bank_model.dart';
import 'package:certenz/src/data/services/bank/bank_service.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:logger/logger.dart';

part 'bank_event.dart';
part 'bank_state.dart';
part 'bank_bloc.freezed.dart';

class BankBloc extends Bloc<BankEvent, BankState> {
  BankBloc() : super(const BankState.initial()) {
    on<BankEvent>((event, emit) async {
      await event.when(
        getBanks: () async {
          emit(const BankState.loading());
          ApiResult<List<BankModel>> results = await BankService().getBanks();

          results.when(
            success: (data) => emit(BankState.success(data)),
            failure: (error) => emit(BankState.error(error)),
          );
        },
      );
    });
  }

  @override
  void onEvent(BankEvent event) {
    Logger().d(event);
    super.onEvent(event);
  }

  @override
  void onChange(Change<BankState> change) {
    Logger().d(change);
    super.onChange(change);
  }
}
