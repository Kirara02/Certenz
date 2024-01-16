part of 'login_bloc.dart';

@freezed
class LoginEvent with _$LoginEvent {
  const factory LoginEvent.login({
    required String username,
    required String password,
  }) = _Login;
  const factory LoginEvent.userLogout() = _UserLogout;
  const factory LoginEvent.checkStatus() = _CheckStatus;
  const factory LoginEvent.getUser() = _GetUser;
}
