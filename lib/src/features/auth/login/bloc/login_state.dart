part of 'login_bloc.dart';

@freezed
class LoginState with _$LoginState {
  const factory LoginState.initial() = _Initial;
  const factory LoginState.loading() = _Loading;
  const factory LoginState.isAuthenticated(AuthModel data) = _IsAuthenticated;
  const factory LoginState.unAuthenticated() = _UnAuthenticated;
  const factory LoginState.fetchUser(UserModel user) = _FetchUser;
  const factory LoginState.error(NetworkExceptions error) = _Error;
}
