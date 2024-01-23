// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$UserEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getUser,
    required TResult Function(
            String currentPass, String newPass, String confirmPass)
        changePassword,
    required TResult Function(FormData formData) updateUser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getUser,
    TResult? Function(String currentPass, String newPass, String confirmPass)?
        changePassword,
    TResult? Function(FormData formData)? updateUser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getUser,
    TResult Function(String currentPass, String newPass, String confirmPass)?
        changePassword,
    TResult Function(FormData formData)? updateUser,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) getUser,
    required TResult Function(_ChangePassword value) changePassword,
    required TResult Function(_UpdateUser value) updateUser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? getUser,
    TResult? Function(_ChangePassword value)? changePassword,
    TResult? Function(_UpdateUser value)? updateUser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? getUser,
    TResult Function(_ChangePassword value)? changePassword,
    TResult Function(_UpdateUser value)? updateUser,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserEventCopyWith<$Res> {
  factory $UserEventCopyWith(UserEvent value, $Res Function(UserEvent) then) =
      _$UserEventCopyWithImpl<$Res, UserEvent>;
}

/// @nodoc
class _$UserEventCopyWithImpl<$Res, $Val extends UserEvent>
    implements $UserEventCopyWith<$Res> {
  _$UserEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$StartedImplCopyWith<$Res> {
  factory _$$StartedImplCopyWith(
          _$StartedImpl value, $Res Function(_$StartedImpl) then) =
      __$$StartedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StartedImplCopyWithImpl<$Res>
    extends _$UserEventCopyWithImpl<$Res, _$StartedImpl>
    implements _$$StartedImplCopyWith<$Res> {
  __$$StartedImplCopyWithImpl(
      _$StartedImpl _value, $Res Function(_$StartedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$StartedImpl implements _Started {
  const _$StartedImpl();

  @override
  String toString() {
    return 'UserEvent.getUser()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$StartedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getUser,
    required TResult Function(
            String currentPass, String newPass, String confirmPass)
        changePassword,
    required TResult Function(FormData formData) updateUser,
  }) {
    return getUser();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getUser,
    TResult? Function(String currentPass, String newPass, String confirmPass)?
        changePassword,
    TResult? Function(FormData formData)? updateUser,
  }) {
    return getUser?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getUser,
    TResult Function(String currentPass, String newPass, String confirmPass)?
        changePassword,
    TResult Function(FormData formData)? updateUser,
    required TResult orElse(),
  }) {
    if (getUser != null) {
      return getUser();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) getUser,
    required TResult Function(_ChangePassword value) changePassword,
    required TResult Function(_UpdateUser value) updateUser,
  }) {
    return getUser(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? getUser,
    TResult? Function(_ChangePassword value)? changePassword,
    TResult? Function(_UpdateUser value)? updateUser,
  }) {
    return getUser?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? getUser,
    TResult Function(_ChangePassword value)? changePassword,
    TResult Function(_UpdateUser value)? updateUser,
    required TResult orElse(),
  }) {
    if (getUser != null) {
      return getUser(this);
    }
    return orElse();
  }
}

abstract class _Started implements UserEvent {
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
abstract class _$$ChangePasswordImplCopyWith<$Res> {
  factory _$$ChangePasswordImplCopyWith(_$ChangePasswordImpl value,
          $Res Function(_$ChangePasswordImpl) then) =
      __$$ChangePasswordImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String currentPass, String newPass, String confirmPass});
}

/// @nodoc
class __$$ChangePasswordImplCopyWithImpl<$Res>
    extends _$UserEventCopyWithImpl<$Res, _$ChangePasswordImpl>
    implements _$$ChangePasswordImplCopyWith<$Res> {
  __$$ChangePasswordImplCopyWithImpl(
      _$ChangePasswordImpl _value, $Res Function(_$ChangePasswordImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentPass = null,
    Object? newPass = null,
    Object? confirmPass = null,
  }) {
    return _then(_$ChangePasswordImpl(
      currentPass: null == currentPass
          ? _value.currentPass
          : currentPass // ignore: cast_nullable_to_non_nullable
              as String,
      newPass: null == newPass
          ? _value.newPass
          : newPass // ignore: cast_nullable_to_non_nullable
              as String,
      confirmPass: null == confirmPass
          ? _value.confirmPass
          : confirmPass // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ChangePasswordImpl implements _ChangePassword {
  const _$ChangePasswordImpl(
      {required this.currentPass,
      required this.newPass,
      required this.confirmPass});

  @override
  final String currentPass;
  @override
  final String newPass;
  @override
  final String confirmPass;

  @override
  String toString() {
    return 'UserEvent.changePassword(currentPass: $currentPass, newPass: $newPass, confirmPass: $confirmPass)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangePasswordImpl &&
            (identical(other.currentPass, currentPass) ||
                other.currentPass == currentPass) &&
            (identical(other.newPass, newPass) || other.newPass == newPass) &&
            (identical(other.confirmPass, confirmPass) ||
                other.confirmPass == confirmPass));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, currentPass, newPass, confirmPass);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChangePasswordImplCopyWith<_$ChangePasswordImpl> get copyWith =>
      __$$ChangePasswordImplCopyWithImpl<_$ChangePasswordImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getUser,
    required TResult Function(
            String currentPass, String newPass, String confirmPass)
        changePassword,
    required TResult Function(FormData formData) updateUser,
  }) {
    return changePassword(currentPass, newPass, confirmPass);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getUser,
    TResult? Function(String currentPass, String newPass, String confirmPass)?
        changePassword,
    TResult? Function(FormData formData)? updateUser,
  }) {
    return changePassword?.call(currentPass, newPass, confirmPass);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getUser,
    TResult Function(String currentPass, String newPass, String confirmPass)?
        changePassword,
    TResult Function(FormData formData)? updateUser,
    required TResult orElse(),
  }) {
    if (changePassword != null) {
      return changePassword(currentPass, newPass, confirmPass);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) getUser,
    required TResult Function(_ChangePassword value) changePassword,
    required TResult Function(_UpdateUser value) updateUser,
  }) {
    return changePassword(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? getUser,
    TResult? Function(_ChangePassword value)? changePassword,
    TResult? Function(_UpdateUser value)? updateUser,
  }) {
    return changePassword?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? getUser,
    TResult Function(_ChangePassword value)? changePassword,
    TResult Function(_UpdateUser value)? updateUser,
    required TResult orElse(),
  }) {
    if (changePassword != null) {
      return changePassword(this);
    }
    return orElse();
  }
}

abstract class _ChangePassword implements UserEvent {
  const factory _ChangePassword(
      {required final String currentPass,
      required final String newPass,
      required final String confirmPass}) = _$ChangePasswordImpl;

  String get currentPass;
  String get newPass;
  String get confirmPass;
  @JsonKey(ignore: true)
  _$$ChangePasswordImplCopyWith<_$ChangePasswordImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateUserImplCopyWith<$Res> {
  factory _$$UpdateUserImplCopyWith(
          _$UpdateUserImpl value, $Res Function(_$UpdateUserImpl) then) =
      __$$UpdateUserImplCopyWithImpl<$Res>;
  @useResult
  $Res call({FormData formData});
}

/// @nodoc
class __$$UpdateUserImplCopyWithImpl<$Res>
    extends _$UserEventCopyWithImpl<$Res, _$UpdateUserImpl>
    implements _$$UpdateUserImplCopyWith<$Res> {
  __$$UpdateUserImplCopyWithImpl(
      _$UpdateUserImpl _value, $Res Function(_$UpdateUserImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? formData = null,
  }) {
    return _then(_$UpdateUserImpl(
      formData: null == formData
          ? _value.formData
          : formData // ignore: cast_nullable_to_non_nullable
              as FormData,
    ));
  }
}

/// @nodoc

class _$UpdateUserImpl implements _UpdateUser {
  const _$UpdateUserImpl({required this.formData});

  @override
  final FormData formData;

  @override
  String toString() {
    return 'UserEvent.updateUser(formData: $formData)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateUserImpl &&
            (identical(other.formData, formData) ||
                other.formData == formData));
  }

  @override
  int get hashCode => Object.hash(runtimeType, formData);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateUserImplCopyWith<_$UpdateUserImpl> get copyWith =>
      __$$UpdateUserImplCopyWithImpl<_$UpdateUserImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getUser,
    required TResult Function(
            String currentPass, String newPass, String confirmPass)
        changePassword,
    required TResult Function(FormData formData) updateUser,
  }) {
    return updateUser(formData);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getUser,
    TResult? Function(String currentPass, String newPass, String confirmPass)?
        changePassword,
    TResult? Function(FormData formData)? updateUser,
  }) {
    return updateUser?.call(formData);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getUser,
    TResult Function(String currentPass, String newPass, String confirmPass)?
        changePassword,
    TResult Function(FormData formData)? updateUser,
    required TResult orElse(),
  }) {
    if (updateUser != null) {
      return updateUser(formData);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) getUser,
    required TResult Function(_ChangePassword value) changePassword,
    required TResult Function(_UpdateUser value) updateUser,
  }) {
    return updateUser(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? getUser,
    TResult? Function(_ChangePassword value)? changePassword,
    TResult? Function(_UpdateUser value)? updateUser,
  }) {
    return updateUser?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? getUser,
    TResult Function(_ChangePassword value)? changePassword,
    TResult Function(_UpdateUser value)? updateUser,
    required TResult orElse(),
  }) {
    if (updateUser != null) {
      return updateUser(this);
    }
    return orElse();
  }
}

abstract class _UpdateUser implements UserEvent {
  const factory _UpdateUser({required final FormData formData}) =
      _$UpdateUserImpl;

  FormData get formData;
  @JsonKey(ignore: true)
  _$$UpdateUserImplCopyWith<_$UpdateUserImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$UserState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(UserDetailModel data) success,
    required TResult Function(UserDetailModel data) successUpdate,
    required TResult Function(DefaultResponse response) successMessage,
    required TResult Function(NetworkExceptions error) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(UserDetailModel data)? success,
    TResult? Function(UserDetailModel data)? successUpdate,
    TResult? Function(DefaultResponse response)? successMessage,
    TResult? Function(NetworkExceptions error)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(UserDetailModel data)? success,
    TResult Function(UserDetailModel data)? successUpdate,
    TResult Function(DefaultResponse response)? successMessage,
    TResult Function(NetworkExceptions error)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_SuccessUpdate value) successUpdate,
    required TResult Function(_SuccessMessage value) successMessage,
    required TResult Function(_Error value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_SuccessUpdate value)? successUpdate,
    TResult? Function(_SuccessMessage value)? successMessage,
    TResult? Function(_Error value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_SuccessUpdate value)? successUpdate,
    TResult Function(_SuccessMessage value)? successMessage,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserStateCopyWith<$Res> {
  factory $UserStateCopyWith(UserState value, $Res Function(UserState) then) =
      _$UserStateCopyWithImpl<$Res, UserState>;
}

/// @nodoc
class _$UserStateCopyWithImpl<$Res, $Val extends UserState>
    implements $UserStateCopyWith<$Res> {
  _$UserStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$UserStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'UserState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(UserDetailModel data) success,
    required TResult Function(UserDetailModel data) successUpdate,
    required TResult Function(DefaultResponse response) successMessage,
    required TResult Function(NetworkExceptions error) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(UserDetailModel data)? success,
    TResult? Function(UserDetailModel data)? successUpdate,
    TResult? Function(DefaultResponse response)? successMessage,
    TResult? Function(NetworkExceptions error)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(UserDetailModel data)? success,
    TResult Function(UserDetailModel data)? successUpdate,
    TResult Function(DefaultResponse response)? successMessage,
    TResult Function(NetworkExceptions error)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_SuccessUpdate value) successUpdate,
    required TResult Function(_SuccessMessage value) successMessage,
    required TResult Function(_Error value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_SuccessUpdate value)? successUpdate,
    TResult? Function(_SuccessMessage value)? successMessage,
    TResult? Function(_Error value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_SuccessUpdate value)? successUpdate,
    TResult Function(_SuccessMessage value)? successMessage,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements UserState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$LoadingImplCopyWith<$Res> {
  factory _$$LoadingImplCopyWith(
          _$LoadingImpl value, $Res Function(_$LoadingImpl) then) =
      __$$LoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingImplCopyWithImpl<$Res>
    extends _$UserStateCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
      _$LoadingImpl _value, $Res Function(_$LoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadingImpl implements _Loading {
  const _$LoadingImpl();

  @override
  String toString() {
    return 'UserState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(UserDetailModel data) success,
    required TResult Function(UserDetailModel data) successUpdate,
    required TResult Function(DefaultResponse response) successMessage,
    required TResult Function(NetworkExceptions error) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(UserDetailModel data)? success,
    TResult? Function(UserDetailModel data)? successUpdate,
    TResult? Function(DefaultResponse response)? successMessage,
    TResult? Function(NetworkExceptions error)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(UserDetailModel data)? success,
    TResult Function(UserDetailModel data)? successUpdate,
    TResult Function(DefaultResponse response)? successMessage,
    TResult Function(NetworkExceptions error)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_SuccessUpdate value) successUpdate,
    required TResult Function(_SuccessMessage value) successMessage,
    required TResult Function(_Error value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_SuccessUpdate value)? successUpdate,
    TResult? Function(_SuccessMessage value)? successMessage,
    TResult? Function(_Error value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_SuccessUpdate value)? successUpdate,
    TResult Function(_SuccessMessage value)? successMessage,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements UserState {
  const factory _Loading() = _$LoadingImpl;
}

/// @nodoc
abstract class _$$SuccessImplCopyWith<$Res> {
  factory _$$SuccessImplCopyWith(
          _$SuccessImpl value, $Res Function(_$SuccessImpl) then) =
      __$$SuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({UserDetailModel data});

  $UserDetailModelCopyWith<$Res> get data;
}

/// @nodoc
class __$$SuccessImplCopyWithImpl<$Res>
    extends _$UserStateCopyWithImpl<$Res, _$SuccessImpl>
    implements _$$SuccessImplCopyWith<$Res> {
  __$$SuccessImplCopyWithImpl(
      _$SuccessImpl _value, $Res Function(_$SuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$SuccessImpl(
      null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as UserDetailModel,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $UserDetailModelCopyWith<$Res> get data {
    return $UserDetailModelCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value));
    });
  }
}

/// @nodoc

class _$SuccessImpl implements _Success {
  const _$SuccessImpl(this.data);

  @override
  final UserDetailModel data;

  @override
  String toString() {
    return 'UserState.success(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SuccessImpl &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SuccessImplCopyWith<_$SuccessImpl> get copyWith =>
      __$$SuccessImplCopyWithImpl<_$SuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(UserDetailModel data) success,
    required TResult Function(UserDetailModel data) successUpdate,
    required TResult Function(DefaultResponse response) successMessage,
    required TResult Function(NetworkExceptions error) error,
  }) {
    return success(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(UserDetailModel data)? success,
    TResult? Function(UserDetailModel data)? successUpdate,
    TResult? Function(DefaultResponse response)? successMessage,
    TResult? Function(NetworkExceptions error)? error,
  }) {
    return success?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(UserDetailModel data)? success,
    TResult Function(UserDetailModel data)? successUpdate,
    TResult Function(DefaultResponse response)? successMessage,
    TResult Function(NetworkExceptions error)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_SuccessUpdate value) successUpdate,
    required TResult Function(_SuccessMessage value) successMessage,
    required TResult Function(_Error value) error,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_SuccessUpdate value)? successUpdate,
    TResult? Function(_SuccessMessage value)? successMessage,
    TResult? Function(_Error value)? error,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_SuccessUpdate value)? successUpdate,
    TResult Function(_SuccessMessage value)? successMessage,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _Success implements UserState {
  const factory _Success(final UserDetailModel data) = _$SuccessImpl;

  UserDetailModel get data;
  @JsonKey(ignore: true)
  _$$SuccessImplCopyWith<_$SuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SuccessUpdateImplCopyWith<$Res> {
  factory _$$SuccessUpdateImplCopyWith(
          _$SuccessUpdateImpl value, $Res Function(_$SuccessUpdateImpl) then) =
      __$$SuccessUpdateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({UserDetailModel data});

  $UserDetailModelCopyWith<$Res> get data;
}

/// @nodoc
class __$$SuccessUpdateImplCopyWithImpl<$Res>
    extends _$UserStateCopyWithImpl<$Res, _$SuccessUpdateImpl>
    implements _$$SuccessUpdateImplCopyWith<$Res> {
  __$$SuccessUpdateImplCopyWithImpl(
      _$SuccessUpdateImpl _value, $Res Function(_$SuccessUpdateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$SuccessUpdateImpl(
      null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as UserDetailModel,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $UserDetailModelCopyWith<$Res> get data {
    return $UserDetailModelCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value));
    });
  }
}

/// @nodoc

class _$SuccessUpdateImpl implements _SuccessUpdate {
  const _$SuccessUpdateImpl(this.data);

  @override
  final UserDetailModel data;

  @override
  String toString() {
    return 'UserState.successUpdate(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SuccessUpdateImpl &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SuccessUpdateImplCopyWith<_$SuccessUpdateImpl> get copyWith =>
      __$$SuccessUpdateImplCopyWithImpl<_$SuccessUpdateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(UserDetailModel data) success,
    required TResult Function(UserDetailModel data) successUpdate,
    required TResult Function(DefaultResponse response) successMessage,
    required TResult Function(NetworkExceptions error) error,
  }) {
    return successUpdate(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(UserDetailModel data)? success,
    TResult? Function(UserDetailModel data)? successUpdate,
    TResult? Function(DefaultResponse response)? successMessage,
    TResult? Function(NetworkExceptions error)? error,
  }) {
    return successUpdate?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(UserDetailModel data)? success,
    TResult Function(UserDetailModel data)? successUpdate,
    TResult Function(DefaultResponse response)? successMessage,
    TResult Function(NetworkExceptions error)? error,
    required TResult orElse(),
  }) {
    if (successUpdate != null) {
      return successUpdate(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_SuccessUpdate value) successUpdate,
    required TResult Function(_SuccessMessage value) successMessage,
    required TResult Function(_Error value) error,
  }) {
    return successUpdate(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_SuccessUpdate value)? successUpdate,
    TResult? Function(_SuccessMessage value)? successMessage,
    TResult? Function(_Error value)? error,
  }) {
    return successUpdate?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_SuccessUpdate value)? successUpdate,
    TResult Function(_SuccessMessage value)? successMessage,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (successUpdate != null) {
      return successUpdate(this);
    }
    return orElse();
  }
}

abstract class _SuccessUpdate implements UserState {
  const factory _SuccessUpdate(final UserDetailModel data) =
      _$SuccessUpdateImpl;

  UserDetailModel get data;
  @JsonKey(ignore: true)
  _$$SuccessUpdateImplCopyWith<_$SuccessUpdateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SuccessMessageImplCopyWith<$Res> {
  factory _$$SuccessMessageImplCopyWith(_$SuccessMessageImpl value,
          $Res Function(_$SuccessMessageImpl) then) =
      __$$SuccessMessageImplCopyWithImpl<$Res>;
  @useResult
  $Res call({DefaultResponse response});

  $DefaultResponseCopyWith<$Res> get response;
}

/// @nodoc
class __$$SuccessMessageImplCopyWithImpl<$Res>
    extends _$UserStateCopyWithImpl<$Res, _$SuccessMessageImpl>
    implements _$$SuccessMessageImplCopyWith<$Res> {
  __$$SuccessMessageImplCopyWithImpl(
      _$SuccessMessageImpl _value, $Res Function(_$SuccessMessageImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? response = null,
  }) {
    return _then(_$SuccessMessageImpl(
      null == response
          ? _value.response
          : response // ignore: cast_nullable_to_non_nullable
              as DefaultResponse,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $DefaultResponseCopyWith<$Res> get response {
    return $DefaultResponseCopyWith<$Res>(_value.response, (value) {
      return _then(_value.copyWith(response: value));
    });
  }
}

/// @nodoc

class _$SuccessMessageImpl implements _SuccessMessage {
  const _$SuccessMessageImpl(this.response);

  @override
  final DefaultResponse response;

  @override
  String toString() {
    return 'UserState.successMessage(response: $response)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SuccessMessageImpl &&
            (identical(other.response, response) ||
                other.response == response));
  }

  @override
  int get hashCode => Object.hash(runtimeType, response);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SuccessMessageImplCopyWith<_$SuccessMessageImpl> get copyWith =>
      __$$SuccessMessageImplCopyWithImpl<_$SuccessMessageImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(UserDetailModel data) success,
    required TResult Function(UserDetailModel data) successUpdate,
    required TResult Function(DefaultResponse response) successMessage,
    required TResult Function(NetworkExceptions error) error,
  }) {
    return successMessage(response);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(UserDetailModel data)? success,
    TResult? Function(UserDetailModel data)? successUpdate,
    TResult? Function(DefaultResponse response)? successMessage,
    TResult? Function(NetworkExceptions error)? error,
  }) {
    return successMessage?.call(response);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(UserDetailModel data)? success,
    TResult Function(UserDetailModel data)? successUpdate,
    TResult Function(DefaultResponse response)? successMessage,
    TResult Function(NetworkExceptions error)? error,
    required TResult orElse(),
  }) {
    if (successMessage != null) {
      return successMessage(response);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_SuccessUpdate value) successUpdate,
    required TResult Function(_SuccessMessage value) successMessage,
    required TResult Function(_Error value) error,
  }) {
    return successMessage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_SuccessUpdate value)? successUpdate,
    TResult? Function(_SuccessMessage value)? successMessage,
    TResult? Function(_Error value)? error,
  }) {
    return successMessage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_SuccessUpdate value)? successUpdate,
    TResult Function(_SuccessMessage value)? successMessage,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (successMessage != null) {
      return successMessage(this);
    }
    return orElse();
  }
}

abstract class _SuccessMessage implements UserState {
  const factory _SuccessMessage(final DefaultResponse response) =
      _$SuccessMessageImpl;

  DefaultResponse get response;
  @JsonKey(ignore: true)
  _$$SuccessMessageImplCopyWith<_$SuccessMessageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ErrorImplCopyWith<$Res> {
  factory _$$ErrorImplCopyWith(
          _$ErrorImpl value, $Res Function(_$ErrorImpl) then) =
      __$$ErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({NetworkExceptions error});

  $NetworkExceptionsCopyWith<$Res> get error;
}

/// @nodoc
class __$$ErrorImplCopyWithImpl<$Res>
    extends _$UserStateCopyWithImpl<$Res, _$ErrorImpl>
    implements _$$ErrorImplCopyWith<$Res> {
  __$$ErrorImplCopyWithImpl(
      _$ErrorImpl _value, $Res Function(_$ErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$ErrorImpl(
      null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as NetworkExceptions,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $NetworkExceptionsCopyWith<$Res> get error {
    return $NetworkExceptionsCopyWith<$Res>(_value.error, (value) {
      return _then(_value.copyWith(error: value));
    });
  }
}

/// @nodoc

class _$ErrorImpl implements _Error {
  const _$ErrorImpl(this.error);

  @override
  final NetworkExceptions error;

  @override
  String toString() {
    return 'UserState.error(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorImpl &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      __$$ErrorImplCopyWithImpl<_$ErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(UserDetailModel data) success,
    required TResult Function(UserDetailModel data) successUpdate,
    required TResult Function(DefaultResponse response) successMessage,
    required TResult Function(NetworkExceptions error) error,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(UserDetailModel data)? success,
    TResult? Function(UserDetailModel data)? successUpdate,
    TResult? Function(DefaultResponse response)? successMessage,
    TResult? Function(NetworkExceptions error)? error,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(UserDetailModel data)? success,
    TResult Function(UserDetailModel data)? successUpdate,
    TResult Function(DefaultResponse response)? successMessage,
    TResult Function(NetworkExceptions error)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_SuccessUpdate value) successUpdate,
    required TResult Function(_SuccessMessage value) successMessage,
    required TResult Function(_Error value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_SuccessUpdate value)? successUpdate,
    TResult? Function(_SuccessMessage value)? successMessage,
    TResult? Function(_Error value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_SuccessUpdate value)? successUpdate,
    TResult Function(_SuccessMessage value)? successMessage,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error implements UserState {
  const factory _Error(final NetworkExceptions error) = _$ErrorImpl;

  NetworkExceptions get error;
  @JsonKey(ignore: true)
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
