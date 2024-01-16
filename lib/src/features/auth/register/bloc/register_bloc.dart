import 'package:bloc/bloc.dart';
import 'package:certenz/src/core/api_result.dart';
import 'package:certenz/src/core/network_exceptions.dart';
import 'package:certenz/src/data/models/user/user_model.dart';
import 'package:certenz/src/data/services/auth/auth_service.dart';
import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:logger/logger.dart';

part 'register_event.dart';
part 'register_state.dart';
part 'register_bloc.freezed.dart';

class RegisterBloc extends Bloc<RegisterEvent, RegisterState> {
  RegisterBloc() : super(const RegisterState.initial()) {
    on<RegisterEvent>((event, emit) async {
      await event.when(
        register: (data) async {
          emit(const RegisterState.loading());
          ApiResult<UserModel> result =
              await AuthService().register(data: data);

          result.when(
            success: (data) => emit(RegisterState.success(data)),
            failure: (error) => emit(RegisterState.error(error)),
          );
        },
      );
    });
  }

  @override
  void onEvent(RegisterEvent event) {
    Logger().d(event);
    super.onEvent(event);
  }

  @override
  void onChange(Change<RegisterState> change) {
    Logger().d(change);
    super.onChange(change);
  }
}
