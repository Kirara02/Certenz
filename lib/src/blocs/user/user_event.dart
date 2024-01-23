part of 'user_bloc.dart';

@freezed
class UserEvent with _$UserEvent {
  const factory UserEvent.getUser() = _Started;
  const factory UserEvent.changePassword({
    required String currentPass,
    required String newPass,
    required String confirmPass,
  }) = _ChangePassword;
  const factory UserEvent.updateUser({
    required FormData formData,
  }) = _UpdateUser;
}
