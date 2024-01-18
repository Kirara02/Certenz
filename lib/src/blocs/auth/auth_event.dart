part of 'auth_bloc.dart';

@freezed
class AuthEvent with _$AuthEvent {
  const factory AuthEvent.login({
    required String username,
    required String password,
  }) = _Login;
  const factory AuthEvent.register({
    required FormData data,
  }) = _Register;
  const factory AuthEvent.userLogout() = _UserLogout;
  const factory AuthEvent.checkStatus() = _CheckStatus;
  const factory AuthEvent.getUser() = _GetUser;
}
