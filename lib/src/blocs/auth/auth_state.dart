part of 'auth_bloc.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState.initial() = _Initial;
  const factory AuthState.loading() = _Loading;
  const factory AuthState.successRegister(RegisterModel response) =
      _SuccessRegister;
  const factory AuthState.successVerif(DefaultResponse response) =
      _SuccessVerif;
  const factory AuthState.loadedKtpData(UserCard response) = _LoadedKtpData;
  const factory AuthState.isAuthenticated(AuthModel data) = _IsAuthenticated;
  const factory AuthState.unAuthenticated() = _UnAuthenticated;
  const factory AuthState.fetchUser(UserModel user) = _FetchUser;
  const factory AuthState.error(NetworkExceptions error) = _Error;
}
