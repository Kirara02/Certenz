import 'package:bloc/bloc.dart';
import 'package:certenz/src/core/api_result.dart';
import 'package:certenz/src/core/default_response.dart';
import 'package:certenz/src/core/network_exceptions.dart';
import 'package:certenz/src/data/models/user/user_detail_model.dart';
import 'package:certenz/src/data/services/user_service.dart';
import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:logger/logger.dart';

part 'user_event.dart';
part 'user_state.dart';
part 'user_bloc.freezed.dart';

class UserBloc extends Bloc<UserEvent, UserState> {
  UserBloc() : super(const UserState.initial()) {
    on<UserEvent>((event, emit) async {
      await event.when(
        getUser: () async {
          emit(const UserState.loading());
          ApiResult<UserDetailModel> result = await UserService().getUser();

          result.when(
            success: (data) => emit(UserState.success(data)),
            failure: (error) => emit(UserState.error(error)),
          );
        },
        changePassword: (currentPass, newPass, confirmPass) async {
          emit(const UserState.loading());
          ApiResult<DefaultResponse> result = await UserService()
              .changePassword(
                  currentPass: currentPass,
                  newPass: newPass,
                  confirmNewPass: confirmPass);

          result.when(
            success: (data) => emit(UserState.successMessage(data)),
            failure: (error) => emit(UserState.error(error)),
          );
        },
        updateUser: (formData) async {
          emit(const UserState.loading());
          ApiResult<UserDetailModel> result =
              await UserService().updateUser(formData: formData);

          result.when(
            success: (data) => emit(UserState.successUpdate(data)),
            failure: (error) => emit(UserState.error(error)),
          );
        },
      );
    });
  }

  @override
  void onEvent(UserEvent event) {
    Logger().d(event);
    super.onEvent(event);
  }

  @override
  void onChange(Change<UserState> change) {
    Logger().d(change);
    super.onChange(change);
  }
}
