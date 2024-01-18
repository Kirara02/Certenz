import 'package:bloc/bloc.dart';
import 'package:certenz/src/core/network_exceptions.dart';
import 'package:certenz/src/data/models/auth/auth_model.dart';
import 'package:certenz/src/data/models/user/user_model.dart';
import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:logger/logger.dart';

import '../../core/api_result.dart';
import '../../data/services/auth/auth_service.dart';
import '../../utils/flutter_storage.dart';

part 'auth_event.dart';
part 'auth_state.dart';
part 'auth_bloc.freezed.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc() : super(const AuthState.initial()) {
    on<AuthEvent>((event, emit) async {
      await event.when(
        login: (email, password) async {
          emit(const AuthState.loading());
          ApiResult<AuthModel> result =
              await AuthService().login(email: email, password: password);

          result.when(
            success: (data) async {
              SecureStorageHelper.saveToken(data.token);
              SecureStorageHelper.saveUser(data.user);
              emit(AuthState.isAuthenticated(data));
            },
            failure: (error) => emit(AuthState.error(error)),
          );
        },
        register: (data) async {
          emit(const AuthState.loading());
          ApiResult<UserModel> result =
              await AuthService().register(data: data);

          result.when(
            success: (data) => emit(AuthState.fetchUser(data)),
            failure: (error) => emit(AuthState.error(error)),
          );
        },
        userLogout: () async {
          emit(const AuthState.loading());
          SecureStorageHelper.removeToken();
          SecureStorageHelper.removeUser();
          emit(const AuthState.unAuthenticated());
        },
        checkStatus: () async {
          emit(const AuthState.loading());
          String? token = await SecureStorageHelper.getToken;
          String initial = await SecureStorageHelper.getInitial ?? "false";
          UserModel? user = await SecureStorageHelper.getUser();

          if (token != null && token.isNotEmpty) {
            emit(AuthState.isAuthenticated(
                AuthModel(token: token, user: user!)));
          } else if (!bool.parse(initial)) {
            emit(const AuthState.initial());
          } else {
            emit(const AuthState.unAuthenticated());
          }
        },
        getUser: () async {
          emit(const AuthState.loading());
          UserModel user = await SecureStorageHelper.getUser() ??
              UserModel(
                id: 0,
                name: "",
                email: "",
              );
          emit(AuthState.fetchUser(user));
        },
      );
    });
  }

  @override
  void onEvent(AuthEvent event) {
    Logger().d(event);
    super.onEvent(event);
  }

  @override
  void onChange(Change<AuthState> change) {
    Logger().d(change);
    super.onChange(change);
  }
}
