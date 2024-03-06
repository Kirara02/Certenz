import 'package:bloc/bloc.dart';
import 'package:certenz/src/core/api_result.dart';
import 'package:certenz/src/core/network_exceptions.dart';
import 'package:certenz/src/data/models/reimbursement/reimbursement_model.dart';
import 'package:certenz/src/data/services/reimbursement_service.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:logger/logger.dart';
import 'package:dio/dio.dart';
part 'reimbursement_event.dart';
part 'reimbursement_state.dart';
part 'reimbursement_bloc.freezed.dart';

class ReimbursementBloc extends Bloc<ReimbursementEvent, ReimbursementState> {
  ReimbursementBloc() : super(const ReimbursementState.initial()) {
    on<ReimbursementEvent>((event, emit) async {
      await event.when(
        createReimbursement: (formData) async {
          emit(const ReimbursementState.loading());
          ApiResult<ReimbursementModel> result = await ReimbursementService()
              .postReimbursement(formData: formData);

          result.when(
            success: (data) => emit(ReimbursementState.success(data)),
            failure: (error) => emit(ReimbursementState.error(error)),
          );
        },
      );
    });
  }

  @override
  void onEvent(ReimbursementEvent event) {
    Logger().d(event);
    super.onEvent(event);
  }

  @override
  void onChange(Change<ReimbursementState> change) {
    Logger().d(change);
    super.onChange(change);
  }
}
