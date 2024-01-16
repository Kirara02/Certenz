import 'package:bloc/bloc.dart';
import 'package:certenz/src/core/api_result.dart';
import 'package:certenz/src/core/network_exceptions.dart';
import 'package:certenz/src/data/models/auth/auth_model.dart';
import 'package:certenz/src/data/models/user/user_model.dart';
import 'package:certenz/src/data/services/auth/auth_service.dart';
import 'package:certenz/src/utils/flutter_storage.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:logger/logger.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'login_event.dart';
part 'login_state.dart';
part 'login_bloc.freezed.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginBloc() : super(const LoginState.initial()) {
    on<LoginEvent>((event, emit) async {
      await event.when(
        login: (email, password) async {
          emit(const LoginState.loading());
          ApiResult<AuthModel> result =
              await AuthService().login(email: email, password: password);

          result.when(
            success: (data) async {
              SecureStorageHelper.saveToken(data.token);
              SecureStorageHelper.saveUser(data.user);
              emit(LoginState.isAuthenticated(data));
            },
            failure: (error) => emit(LoginState.error(error)),
          );
        },
        userLogout: () async {
          emit(const LoginState.loading());
          SecureStorageHelper.removeToken();
          SecureStorageHelper.removeUser();
          emit(const LoginState.unAuthenticated());
        },
        checkStatus: () async {
          emit(const LoginState.loading());
          String? token = await SecureStorageHelper.getToken;
          String initial = await SecureStorageHelper.getInitial ?? "false";
          UserModel? user = await SecureStorageHelper.getUser();

          if (token != null && token.isNotEmpty) {
            emit(LoginState.isAuthenticated(
                AuthModel(token: token, user: user!)));
          } else if (!bool.parse(initial)) {
            emit(const LoginState.initial());
          } else {
            emit(const LoginState.unAuthenticated());
          }
        },
        getUser: () async {
          emit(const LoginState.loading());
          UserModel user = await SecureStorageHelper.getUser() ??
              UserModel(
                id: 0,
                name: "",
                email: "",
              );
          emit(LoginState.fetchUser(user));
        },
      );
    });
  }

  @override
  void onEvent(LoginEvent event) {
    Logger().d(event);
    super.onEvent(event);
  }

  @override
  void onChange(Change<LoginState> change) {
    Logger().d(change);
    super.onChange(change);
  }
}
