part of 'user_bloc.dart';

@freezed
class UserState with _$UserState {
  const factory UserState.initial() = _Initial;
  const factory UserState.loading() = _Loading;
  const factory UserState.success(UserDetailModel data) = _Success;
  const factory UserState.successUpdate(UserDetailModel data) = _SuccessUpdate;
  const factory UserState.successMessage(DefaultResponse response) =
      _SuccessMessage;
  const factory UserState.error(NetworkExceptions error) = _Error;
}
