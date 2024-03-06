// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AuthEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String username, String password) login,
    required TResult Function(FormData data) register,
    required TResult Function() userLogout,
    required TResult Function() checkStatus,
    required TResult Function() getUser,
    required TResult Function(FormData? formData) verifUser,
    required TResult Function(File imageFile) getUploadKtp,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String username, String password)? login,
    TResult? Function(FormData data)? register,
    TResult? Function()? userLogout,
    TResult? Function()? checkStatus,
    TResult? Function()? getUser,
    TResult? Function(FormData? formData)? verifUser,
    TResult? Function(File imageFile)? getUploadKtp,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String username, String password)? login,
    TResult Function(FormData data)? register,
    TResult Function()? userLogout,
    TResult Function()? checkStatus,
    TResult Function()? getUser,
    TResult Function(FormData? formData)? verifUser,
    TResult Function(File imageFile)? getUploadKtp,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Login value) login,
    required TResult Function(_Register value) register,
    required TResult Function(_UserLogout value) userLogout,
    required TResult Function(_CheckStatus value) checkStatus,
    required TResult Function(_GetUser value) getUser,
    required TResult Function(_VerifUser value) verifUser,
    required TResult Function(_GetUploadKtp value) getUploadKtp,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Login value)? login,
    TResult? Function(_Register value)? register,
    TResult? Function(_UserLogout value)? userLogout,
    TResult? Function(_CheckStatus value)? checkStatus,
    TResult? Function(_GetUser value)? getUser,
    TResult? Function(_VerifUser value)? verifUser,
    TResult? Function(_GetUploadKtp value)? getUploadKtp,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Login value)? login,
    TResult Function(_Register value)? register,
    TResult Function(_UserLogout value)? userLogout,
    TResult Function(_CheckStatus value)? checkStatus,
    TResult Function(_GetUser value)? getUser,
    TResult Function(_VerifUser value)? verifUser,
    TResult Function(_GetUploadKtp value)? getUploadKtp,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthEventCopyWith<$Res> {
  factory $AuthEventCopyWith(AuthEvent value, $Res Function(AuthEvent) then) =
      _$AuthEventCopyWithImpl<$Res, AuthEvent>;
}

/// @nodoc
class _$AuthEventCopyWithImpl<$Res, $Val extends AuthEvent>
    implements $AuthEventCopyWith<$Res> {
  _$AuthEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$LoginImplCopyWith<$Res> {
  factory _$$LoginImplCopyWith(
          _$LoginImpl value, $Res Function(_$LoginImpl) then) =
      __$$LoginImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String username, String password});
}

/// @nodoc
class __$$LoginImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$LoginImpl>
    implements _$$LoginImplCopyWith<$Res> {
  __$$LoginImplCopyWithImpl(
      _$LoginImpl _value, $Res Function(_$LoginImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? username = null,
    Object? password = null,
  }) {
    return _then(_$LoginImpl(
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$LoginImpl implements _Login {
  const _$LoginImpl({required this.username, required this.password});

  @override
  final String username;
  @override
  final String password;

  @override
  String toString() {
    return 'AuthEvent.login(username: $username, password: $password)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginImpl &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode => Object.hash(runtimeType, username, password);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginImplCopyWith<_$LoginImpl> get copyWith =>
      __$$LoginImplCopyWithImpl<_$LoginImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String username, String password) login,
    required TResult Function(FormData data) register,
    required TResult Function() userLogout,
    required TResult Function() checkStatus,
    required TResult Function() getUser,
    required TResult Function(FormData? formData) verifUser,
    required TResult Function(File imageFile) getUploadKtp,
  }) {
    return login(username, password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String username, String password)? login,
    TResult? Function(FormData data)? register,
    TResult? Function()? userLogout,
    TResult? Function()? checkStatus,
    TResult? Function()? getUser,
    TResult? Function(FormData? formData)? verifUser,
    TResult? Function(File imageFile)? getUploadKtp,
  }) {
    return login?.call(username, password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String username, String password)? login,
    TResult Function(FormData data)? register,
    TResult Function()? userLogout,
    TResult Function()? checkStatus,
    TResult Function()? getUser,
    TResult Function(FormData? formData)? verifUser,
    TResult Function(File imageFile)? getUploadKtp,
    required TResult orElse(),
  }) {
    if (login != null) {
      return login(username, password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Login value) login,
    required TResult Function(_Register value) register,
    required TResult Function(_UserLogout value) userLogout,
    required TResult Function(_CheckStatus value) checkStatus,
    required TResult Function(_GetUser value) getUser,
    required TResult Function(_VerifUser value) verifUser,
    required TResult Function(_GetUploadKtp value) getUploadKtp,
  }) {
    return login(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Login value)? login,
    TResult? Function(_Register value)? register,
    TResult? Function(_UserLogout value)? userLogout,
    TResult? Function(_CheckStatus value)? checkStatus,
    TResult? Function(_GetUser value)? getUser,
    TResult? Function(_VerifUser value)? verifUser,
    TResult? Function(_GetUploadKtp value)? getUploadKtp,
  }) {
    return login?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Login value)? login,
    TResult Function(_Register value)? register,
    TResult Function(_UserLogout value)? userLogout,
    TResult Function(_CheckStatus value)? checkStatus,
    TResult Function(_GetUser value)? getUser,
    TResult Function(_VerifUser value)? verifUser,
    TResult Function(_GetUploadKtp value)? getUploadKtp,
    required TResult orElse(),
  }) {
    if (login != null) {
      return login(this);
    }
    return orElse();
  }
}

abstract class _Login implements AuthEvent {
  const factory _Login(
      {required final String username,
      required final String password}) = _$LoginImpl;

  String get username;
  String get password;
  @JsonKey(ignore: true)
  _$$LoginImplCopyWith<_$LoginImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RegisterImplCopyWith<$Res> {
  factory _$$RegisterImplCopyWith(
          _$RegisterImpl value, $Res Function(_$RegisterImpl) then) =
      __$$RegisterImplCopyWithImpl<$Res>;
  @useResult
  $Res call({FormData data});
}

/// @nodoc
class __$$RegisterImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$RegisterImpl>
    implements _$$RegisterImplCopyWith<$Res> {
  __$$RegisterImplCopyWithImpl(
      _$RegisterImpl _value, $Res Function(_$RegisterImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$RegisterImpl(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as FormData,
    ));
  }
}

/// @nodoc

class _$RegisterImpl implements _Register {
  const _$RegisterImpl({required this.data});

  @override
  final FormData data;

  @override
  String toString() {
    return 'AuthEvent.register(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RegisterImpl &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RegisterImplCopyWith<_$RegisterImpl> get copyWith =>
      __$$RegisterImplCopyWithImpl<_$RegisterImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String username, String password) login,
    required TResult Function(FormData data) register,
    required TResult Function() userLogout,
    required TResult Function() checkStatus,
    required TResult Function() getUser,
    required TResult Function(FormData? formData) verifUser,
    required TResult Function(File imageFile) getUploadKtp,
  }) {
    return register(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String username, String password)? login,
    TResult? Function(FormData data)? register,
    TResult? Function()? userLogout,
    TResult? Function()? checkStatus,
    TResult? Function()? getUser,
    TResult? Function(FormData? formData)? verifUser,
    TResult? Function(File imageFile)? getUploadKtp,
  }) {
    return register?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String username, String password)? login,
    TResult Function(FormData data)? register,
    TResult Function()? userLogout,
    TResult Function()? checkStatus,
    TResult Function()? getUser,
    TResult Function(FormData? formData)? verifUser,
    TResult Function(File imageFile)? getUploadKtp,
    required TResult orElse(),
  }) {
    if (register != null) {
      return register(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Login value) login,
    required TResult Function(_Register value) register,
    required TResult Function(_UserLogout value) userLogout,
    required TResult Function(_CheckStatus value) checkStatus,
    required TResult Function(_GetUser value) getUser,
    required TResult Function(_VerifUser value) verifUser,
    required TResult Function(_GetUploadKtp value) getUploadKtp,
  }) {
    return register(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Login value)? login,
    TResult? Function(_Register value)? register,
    TResult? Function(_UserLogout value)? userLogout,
    TResult? Function(_CheckStatus value)? checkStatus,
    TResult? Function(_GetUser value)? getUser,
    TResult? Function(_VerifUser value)? verifUser,
    TResult? Function(_GetUploadKtp value)? getUploadKtp,
  }) {
    return register?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Login value)? login,
    TResult Function(_Register value)? register,
    TResult Function(_UserLogout value)? userLogout,
    TResult Function(_CheckStatus value)? checkStatus,
    TResult Function(_GetUser value)? getUser,
    TResult Function(_VerifUser value)? verifUser,
    TResult Function(_GetUploadKtp value)? getUploadKtp,
    required TResult orElse(),
  }) {
    if (register != null) {
      return register(this);
    }
    return orElse();
  }
}

abstract class _Register implements AuthEvent {
  const factory _Register({required final FormData data}) = _$RegisterImpl;

  FormData get data;
  @JsonKey(ignore: true)
  _$$RegisterImplCopyWith<_$RegisterImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UserLogoutImplCopyWith<$Res> {
  factory _$$UserLogoutImplCopyWith(
          _$UserLogoutImpl value, $Res Function(_$UserLogoutImpl) then) =
      __$$UserLogoutImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UserLogoutImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$UserLogoutImpl>
    implements _$$UserLogoutImplCopyWith<$Res> {
  __$$UserLogoutImplCopyWithImpl(
      _$UserLogoutImpl _value, $Res Function(_$UserLogoutImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$UserLogoutImpl implements _UserLogout {
  const _$UserLogoutImpl();

  @override
  String toString() {
    return 'AuthEvent.userLogout()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$UserLogoutImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String username, String password) login,
    required TResult Function(FormData data) register,
    required TResult Function() userLogout,
    required TResult Function() checkStatus,
    required TResult Function() getUser,
    required TResult Function(FormData? formData) verifUser,
    required TResult Function(File imageFile) getUploadKtp,
  }) {
    return userLogout();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String username, String password)? login,
    TResult? Function(FormData data)? register,
    TResult? Function()? userLogout,
    TResult? Function()? checkStatus,
    TResult? Function()? getUser,
    TResult? Function(FormData? formData)? verifUser,
    TResult? Function(File imageFile)? getUploadKtp,
  }) {
    return userLogout?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String username, String password)? login,
    TResult Function(FormData data)? register,
    TResult Function()? userLogout,
    TResult Function()? checkStatus,
    TResult Function()? getUser,
    TResult Function(FormData? formData)? verifUser,
    TResult Function(File imageFile)? getUploadKtp,
    required TResult orElse(),
  }) {
    if (userLogout != null) {
      return userLogout();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Login value) login,
    required TResult Function(_Register value) register,
    required TResult Function(_UserLogout value) userLogout,
    required TResult Function(_CheckStatus value) checkStatus,
    required TResult Function(_GetUser value) getUser,
    required TResult Function(_VerifUser value) verifUser,
    required TResult Function(_GetUploadKtp value) getUploadKtp,
  }) {
    return userLogout(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Login value)? login,
    TResult? Function(_Register value)? register,
    TResult? Function(_UserLogout value)? userLogout,
    TResult? Function(_CheckStatus value)? checkStatus,
    TResult? Function(_GetUser value)? getUser,
    TResult? Function(_VerifUser value)? verifUser,
    TResult? Function(_GetUploadKtp value)? getUploadKtp,
  }) {
    return userLogout?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Login value)? login,
    TResult Function(_Register value)? register,
    TResult Function(_UserLogout value)? userLogout,
    TResult Function(_CheckStatus value)? checkStatus,
    TResult Function(_GetUser value)? getUser,
    TResult Function(_VerifUser value)? verifUser,
    TResult Function(_GetUploadKtp value)? getUploadKtp,
    required TResult orElse(),
  }) {
    if (userLogout != null) {
      return userLogout(this);
    }
    return orElse();
  }
}

abstract class _UserLogout implements AuthEvent {
  const factory _UserLogout() = _$UserLogoutImpl;
}

/// @nodoc
abstract class _$$CheckStatusImplCopyWith<$Res> {
  factory _$$CheckStatusImplCopyWith(
          _$CheckStatusImpl value, $Res Function(_$CheckStatusImpl) then) =
      __$$CheckStatusImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CheckStatusImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$CheckStatusImpl>
    implements _$$CheckStatusImplCopyWith<$Res> {
  __$$CheckStatusImplCopyWithImpl(
      _$CheckStatusImpl _value, $Res Function(_$CheckStatusImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$CheckStatusImpl implements _CheckStatus {
  const _$CheckStatusImpl();

  @override
  String toString() {
    return 'AuthEvent.checkStatus()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$CheckStatusImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String username, String password) login,
    required TResult Function(FormData data) register,
    required TResult Function() userLogout,
    required TResult Function() checkStatus,
    required TResult Function() getUser,
    required TResult Function(FormData? formData) verifUser,
    required TResult Function(File imageFile) getUploadKtp,
  }) {
    return checkStatus();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String username, String password)? login,
    TResult? Function(FormData data)? register,
    TResult? Function()? userLogout,
    TResult? Function()? checkStatus,
    TResult? Function()? getUser,
    TResult? Function(FormData? formData)? verifUser,
    TResult? Function(File imageFile)? getUploadKtp,
  }) {
    return checkStatus?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String username, String password)? login,
    TResult Function(FormData data)? register,
    TResult Function()? userLogout,
    TResult Function()? checkStatus,
    TResult Function()? getUser,
    TResult Function(FormData? formData)? verifUser,
    TResult Function(File imageFile)? getUploadKtp,
    required TResult orElse(),
  }) {
    if (checkStatus != null) {
      return checkStatus();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Login value) login,
    required TResult Function(_Register value) register,
    required TResult Function(_UserLogout value) userLogout,
    required TResult Function(_CheckStatus value) checkStatus,
    required TResult Function(_GetUser value) getUser,
    required TResult Function(_VerifUser value) verifUser,
    required TResult Function(_GetUploadKtp value) getUploadKtp,
  }) {
    return checkStatus(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Login value)? login,
    TResult? Function(_Register value)? register,
    TResult? Function(_UserLogout value)? userLogout,
    TResult? Function(_CheckStatus value)? checkStatus,
    TResult? Function(_GetUser value)? getUser,
    TResult? Function(_VerifUser value)? verifUser,
    TResult? Function(_GetUploadKtp value)? getUploadKtp,
  }) {
    return checkStatus?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Login value)? login,
    TResult Function(_Register value)? register,
    TResult Function(_UserLogout value)? userLogout,
    TResult Function(_CheckStatus value)? checkStatus,
    TResult Function(_GetUser value)? getUser,
    TResult Function(_VerifUser value)? verifUser,
    TResult Function(_GetUploadKtp value)? getUploadKtp,
    required TResult orElse(),
  }) {
    if (checkStatus != null) {
      return checkStatus(this);
    }
    return orElse();
  }
}

abstract class _CheckStatus implements AuthEvent {
  const factory _CheckStatus() = _$CheckStatusImpl;
}

/// @nodoc
abstract class _$$GetUserImplCopyWith<$Res> {
  factory _$$GetUserImplCopyWith(
          _$GetUserImpl value, $Res Function(_$GetUserImpl) then) =
      __$$GetUserImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetUserImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$GetUserImpl>
    implements _$$GetUserImplCopyWith<$Res> {
  __$$GetUserImplCopyWithImpl(
      _$GetUserImpl _value, $Res Function(_$GetUserImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetUserImpl implements _GetUser {
  const _$GetUserImpl();

  @override
  String toString() {
    return 'AuthEvent.getUser()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetUserImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String username, String password) login,
    required TResult Function(FormData data) register,
    required TResult Function() userLogout,
    required TResult Function() checkStatus,
    required TResult Function() getUser,
    required TResult Function(FormData? formData) verifUser,
    required TResult Function(File imageFile) getUploadKtp,
  }) {
    return getUser();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String username, String password)? login,
    TResult? Function(FormData data)? register,
    TResult? Function()? userLogout,
    TResult? Function()? checkStatus,
    TResult? Function()? getUser,
    TResult? Function(FormData? formData)? verifUser,
    TResult? Function(File imageFile)? getUploadKtp,
  }) {
    return getUser?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String username, String password)? login,
    TResult Function(FormData data)? register,
    TResult Function()? userLogout,
    TResult Function()? checkStatus,
    TResult Function()? getUser,
    TResult Function(FormData? formData)? verifUser,
    TResult Function(File imageFile)? getUploadKtp,
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
    required TResult Function(_Login value) login,
    required TResult Function(_Register value) register,
    required TResult Function(_UserLogout value) userLogout,
    required TResult Function(_CheckStatus value) checkStatus,
    required TResult Function(_GetUser value) getUser,
    required TResult Function(_VerifUser value) verifUser,
    required TResult Function(_GetUploadKtp value) getUploadKtp,
  }) {
    return getUser(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Login value)? login,
    TResult? Function(_Register value)? register,
    TResult? Function(_UserLogout value)? userLogout,
    TResult? Function(_CheckStatus value)? checkStatus,
    TResult? Function(_GetUser value)? getUser,
    TResult? Function(_VerifUser value)? verifUser,
    TResult? Function(_GetUploadKtp value)? getUploadKtp,
  }) {
    return getUser?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Login value)? login,
    TResult Function(_Register value)? register,
    TResult Function(_UserLogout value)? userLogout,
    TResult Function(_CheckStatus value)? checkStatus,
    TResult Function(_GetUser value)? getUser,
    TResult Function(_VerifUser value)? verifUser,
    TResult Function(_GetUploadKtp value)? getUploadKtp,
    required TResult orElse(),
  }) {
    if (getUser != null) {
      return getUser(this);
    }
    return orElse();
  }
}

abstract class _GetUser implements AuthEvent {
  const factory _GetUser() = _$GetUserImpl;
}

/// @nodoc
abstract class _$$VerifUserImplCopyWith<$Res> {
  factory _$$VerifUserImplCopyWith(
          _$VerifUserImpl value, $Res Function(_$VerifUserImpl) then) =
      __$$VerifUserImplCopyWithImpl<$Res>;
  @useResult
  $Res call({FormData? formData});
}

/// @nodoc
class __$$VerifUserImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$VerifUserImpl>
    implements _$$VerifUserImplCopyWith<$Res> {
  __$$VerifUserImplCopyWithImpl(
      _$VerifUserImpl _value, $Res Function(_$VerifUserImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? formData = freezed,
  }) {
    return _then(_$VerifUserImpl(
      formData: freezed == formData
          ? _value.formData
          : formData // ignore: cast_nullable_to_non_nullable
              as FormData?,
    ));
  }
}

/// @nodoc

class _$VerifUserImpl implements _VerifUser {
  const _$VerifUserImpl({this.formData});

  @override
  final FormData? formData;

  @override
  String toString() {
    return 'AuthEvent.verifUser(formData: $formData)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VerifUserImpl &&
            (identical(other.formData, formData) ||
                other.formData == formData));
  }

  @override
  int get hashCode => Object.hash(runtimeType, formData);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$VerifUserImplCopyWith<_$VerifUserImpl> get copyWith =>
      __$$VerifUserImplCopyWithImpl<_$VerifUserImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String username, String password) login,
    required TResult Function(FormData data) register,
    required TResult Function() userLogout,
    required TResult Function() checkStatus,
    required TResult Function() getUser,
    required TResult Function(FormData? formData) verifUser,
    required TResult Function(File imageFile) getUploadKtp,
  }) {
    return verifUser(formData);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String username, String password)? login,
    TResult? Function(FormData data)? register,
    TResult? Function()? userLogout,
    TResult? Function()? checkStatus,
    TResult? Function()? getUser,
    TResult? Function(FormData? formData)? verifUser,
    TResult? Function(File imageFile)? getUploadKtp,
  }) {
    return verifUser?.call(formData);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String username, String password)? login,
    TResult Function(FormData data)? register,
    TResult Function()? userLogout,
    TResult Function()? checkStatus,
    TResult Function()? getUser,
    TResult Function(FormData? formData)? verifUser,
    TResult Function(File imageFile)? getUploadKtp,
    required TResult orElse(),
  }) {
    if (verifUser != null) {
      return verifUser(formData);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Login value) login,
    required TResult Function(_Register value) register,
    required TResult Function(_UserLogout value) userLogout,
    required TResult Function(_CheckStatus value) checkStatus,
    required TResult Function(_GetUser value) getUser,
    required TResult Function(_VerifUser value) verifUser,
    required TResult Function(_GetUploadKtp value) getUploadKtp,
  }) {
    return verifUser(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Login value)? login,
    TResult? Function(_Register value)? register,
    TResult? Function(_UserLogout value)? userLogout,
    TResult? Function(_CheckStatus value)? checkStatus,
    TResult? Function(_GetUser value)? getUser,
    TResult? Function(_VerifUser value)? verifUser,
    TResult? Function(_GetUploadKtp value)? getUploadKtp,
  }) {
    return verifUser?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Login value)? login,
    TResult Function(_Register value)? register,
    TResult Function(_UserLogout value)? userLogout,
    TResult Function(_CheckStatus value)? checkStatus,
    TResult Function(_GetUser value)? getUser,
    TResult Function(_VerifUser value)? verifUser,
    TResult Function(_GetUploadKtp value)? getUploadKtp,
    required TResult orElse(),
  }) {
    if (verifUser != null) {
      return verifUser(this);
    }
    return orElse();
  }
}

abstract class _VerifUser implements AuthEvent {
  const factory _VerifUser({final FormData? formData}) = _$VerifUserImpl;

  FormData? get formData;
  @JsonKey(ignore: true)
  _$$VerifUserImplCopyWith<_$VerifUserImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetUploadKtpImplCopyWith<$Res> {
  factory _$$GetUploadKtpImplCopyWith(
          _$GetUploadKtpImpl value, $Res Function(_$GetUploadKtpImpl) then) =
      __$$GetUploadKtpImplCopyWithImpl<$Res>;
  @useResult
  $Res call({File imageFile});
}

/// @nodoc
class __$$GetUploadKtpImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$GetUploadKtpImpl>
    implements _$$GetUploadKtpImplCopyWith<$Res> {
  __$$GetUploadKtpImplCopyWithImpl(
      _$GetUploadKtpImpl _value, $Res Function(_$GetUploadKtpImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? imageFile = null,
  }) {
    return _then(_$GetUploadKtpImpl(
      imageFile: null == imageFile
          ? _value.imageFile
          : imageFile // ignore: cast_nullable_to_non_nullable
              as File,
    ));
  }
}

/// @nodoc

class _$GetUploadKtpImpl implements _GetUploadKtp {
  const _$GetUploadKtpImpl({required this.imageFile});

  @override
  final File imageFile;

  @override
  String toString() {
    return 'AuthEvent.getUploadKtp(imageFile: $imageFile)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetUploadKtpImpl &&
            (identical(other.imageFile, imageFile) ||
                other.imageFile == imageFile));
  }

  @override
  int get hashCode => Object.hash(runtimeType, imageFile);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetUploadKtpImplCopyWith<_$GetUploadKtpImpl> get copyWith =>
      __$$GetUploadKtpImplCopyWithImpl<_$GetUploadKtpImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String username, String password) login,
    required TResult Function(FormData data) register,
    required TResult Function() userLogout,
    required TResult Function() checkStatus,
    required TResult Function() getUser,
    required TResult Function(FormData? formData) verifUser,
    required TResult Function(File imageFile) getUploadKtp,
  }) {
    return getUploadKtp(imageFile);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String username, String password)? login,
    TResult? Function(FormData data)? register,
    TResult? Function()? userLogout,
    TResult? Function()? checkStatus,
    TResult? Function()? getUser,
    TResult? Function(FormData? formData)? verifUser,
    TResult? Function(File imageFile)? getUploadKtp,
  }) {
    return getUploadKtp?.call(imageFile);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String username, String password)? login,
    TResult Function(FormData data)? register,
    TResult Function()? userLogout,
    TResult Function()? checkStatus,
    TResult Function()? getUser,
    TResult Function(FormData? formData)? verifUser,
    TResult Function(File imageFile)? getUploadKtp,
    required TResult orElse(),
  }) {
    if (getUploadKtp != null) {
      return getUploadKtp(imageFile);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Login value) login,
    required TResult Function(_Register value) register,
    required TResult Function(_UserLogout value) userLogout,
    required TResult Function(_CheckStatus value) checkStatus,
    required TResult Function(_GetUser value) getUser,
    required TResult Function(_VerifUser value) verifUser,
    required TResult Function(_GetUploadKtp value) getUploadKtp,
  }) {
    return getUploadKtp(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Login value)? login,
    TResult? Function(_Register value)? register,
    TResult? Function(_UserLogout value)? userLogout,
    TResult? Function(_CheckStatus value)? checkStatus,
    TResult? Function(_GetUser value)? getUser,
    TResult? Function(_VerifUser value)? verifUser,
    TResult? Function(_GetUploadKtp value)? getUploadKtp,
  }) {
    return getUploadKtp?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Login value)? login,
    TResult Function(_Register value)? register,
    TResult Function(_UserLogout value)? userLogout,
    TResult Function(_CheckStatus value)? checkStatus,
    TResult Function(_GetUser value)? getUser,
    TResult Function(_VerifUser value)? verifUser,
    TResult Function(_GetUploadKtp value)? getUploadKtp,
    required TResult orElse(),
  }) {
    if (getUploadKtp != null) {
      return getUploadKtp(this);
    }
    return orElse();
  }
}

abstract class _GetUploadKtp implements AuthEvent {
  const factory _GetUploadKtp({required final File imageFile}) =
      _$GetUploadKtpImpl;

  File get imageFile;
  @JsonKey(ignore: true)
  _$$GetUploadKtpImplCopyWith<_$GetUploadKtpImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AuthState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(RegisterModel response) successRegister,
    required TResult Function(DefaultResponse response) successVerif,
    required TResult Function(UserCard response) loadedKtpData,
    required TResult Function(AuthModel data) isAuthenticated,
    required TResult Function() unAuthenticated,
    required TResult Function(UserModel user) fetchUser,
    required TResult Function(NetworkExceptions error) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(RegisterModel response)? successRegister,
    TResult? Function(DefaultResponse response)? successVerif,
    TResult? Function(UserCard response)? loadedKtpData,
    TResult? Function(AuthModel data)? isAuthenticated,
    TResult? Function()? unAuthenticated,
    TResult? Function(UserModel user)? fetchUser,
    TResult? Function(NetworkExceptions error)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(RegisterModel response)? successRegister,
    TResult Function(DefaultResponse response)? successVerif,
    TResult Function(UserCard response)? loadedKtpData,
    TResult Function(AuthModel data)? isAuthenticated,
    TResult Function()? unAuthenticated,
    TResult Function(UserModel user)? fetchUser,
    TResult Function(NetworkExceptions error)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_SuccessRegister value) successRegister,
    required TResult Function(_SuccessVerif value) successVerif,
    required TResult Function(_LoadedKtpData value) loadedKtpData,
    required TResult Function(_IsAuthenticated value) isAuthenticated,
    required TResult Function(_UnAuthenticated value) unAuthenticated,
    required TResult Function(_FetchUser value) fetchUser,
    required TResult Function(_Error value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_SuccessRegister value)? successRegister,
    TResult? Function(_SuccessVerif value)? successVerif,
    TResult? Function(_LoadedKtpData value)? loadedKtpData,
    TResult? Function(_IsAuthenticated value)? isAuthenticated,
    TResult? Function(_UnAuthenticated value)? unAuthenticated,
    TResult? Function(_FetchUser value)? fetchUser,
    TResult? Function(_Error value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_SuccessRegister value)? successRegister,
    TResult Function(_SuccessVerif value)? successVerif,
    TResult Function(_LoadedKtpData value)? loadedKtpData,
    TResult Function(_IsAuthenticated value)? isAuthenticated,
    TResult Function(_UnAuthenticated value)? unAuthenticated,
    TResult Function(_FetchUser value)? fetchUser,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthStateCopyWith<$Res> {
  factory $AuthStateCopyWith(AuthState value, $Res Function(AuthState) then) =
      _$AuthStateCopyWithImpl<$Res, AuthState>;
}

/// @nodoc
class _$AuthStateCopyWithImpl<$Res, $Val extends AuthState>
    implements $AuthStateCopyWith<$Res> {
  _$AuthStateCopyWithImpl(this._value, this._then);

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
    extends _$AuthStateCopyWithImpl<$Res, _$InitialImpl>
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
    return 'AuthState.initial()';
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
    required TResult Function(RegisterModel response) successRegister,
    required TResult Function(DefaultResponse response) successVerif,
    required TResult Function(UserCard response) loadedKtpData,
    required TResult Function(AuthModel data) isAuthenticated,
    required TResult Function() unAuthenticated,
    required TResult Function(UserModel user) fetchUser,
    required TResult Function(NetworkExceptions error) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(RegisterModel response)? successRegister,
    TResult? Function(DefaultResponse response)? successVerif,
    TResult? Function(UserCard response)? loadedKtpData,
    TResult? Function(AuthModel data)? isAuthenticated,
    TResult? Function()? unAuthenticated,
    TResult? Function(UserModel user)? fetchUser,
    TResult? Function(NetworkExceptions error)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(RegisterModel response)? successRegister,
    TResult Function(DefaultResponse response)? successVerif,
    TResult Function(UserCard response)? loadedKtpData,
    TResult Function(AuthModel data)? isAuthenticated,
    TResult Function()? unAuthenticated,
    TResult Function(UserModel user)? fetchUser,
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
    required TResult Function(_SuccessRegister value) successRegister,
    required TResult Function(_SuccessVerif value) successVerif,
    required TResult Function(_LoadedKtpData value) loadedKtpData,
    required TResult Function(_IsAuthenticated value) isAuthenticated,
    required TResult Function(_UnAuthenticated value) unAuthenticated,
    required TResult Function(_FetchUser value) fetchUser,
    required TResult Function(_Error value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_SuccessRegister value)? successRegister,
    TResult? Function(_SuccessVerif value)? successVerif,
    TResult? Function(_LoadedKtpData value)? loadedKtpData,
    TResult? Function(_IsAuthenticated value)? isAuthenticated,
    TResult? Function(_UnAuthenticated value)? unAuthenticated,
    TResult? Function(_FetchUser value)? fetchUser,
    TResult? Function(_Error value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_SuccessRegister value)? successRegister,
    TResult Function(_SuccessVerif value)? successVerif,
    TResult Function(_LoadedKtpData value)? loadedKtpData,
    TResult Function(_IsAuthenticated value)? isAuthenticated,
    TResult Function(_UnAuthenticated value)? unAuthenticated,
    TResult Function(_FetchUser value)? fetchUser,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements AuthState {
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
    extends _$AuthStateCopyWithImpl<$Res, _$LoadingImpl>
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
    return 'AuthState.loading()';
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
    required TResult Function(RegisterModel response) successRegister,
    required TResult Function(DefaultResponse response) successVerif,
    required TResult Function(UserCard response) loadedKtpData,
    required TResult Function(AuthModel data) isAuthenticated,
    required TResult Function() unAuthenticated,
    required TResult Function(UserModel user) fetchUser,
    required TResult Function(NetworkExceptions error) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(RegisterModel response)? successRegister,
    TResult? Function(DefaultResponse response)? successVerif,
    TResult? Function(UserCard response)? loadedKtpData,
    TResult? Function(AuthModel data)? isAuthenticated,
    TResult? Function()? unAuthenticated,
    TResult? Function(UserModel user)? fetchUser,
    TResult? Function(NetworkExceptions error)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(RegisterModel response)? successRegister,
    TResult Function(DefaultResponse response)? successVerif,
    TResult Function(UserCard response)? loadedKtpData,
    TResult Function(AuthModel data)? isAuthenticated,
    TResult Function()? unAuthenticated,
    TResult Function(UserModel user)? fetchUser,
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
    required TResult Function(_SuccessRegister value) successRegister,
    required TResult Function(_SuccessVerif value) successVerif,
    required TResult Function(_LoadedKtpData value) loadedKtpData,
    required TResult Function(_IsAuthenticated value) isAuthenticated,
    required TResult Function(_UnAuthenticated value) unAuthenticated,
    required TResult Function(_FetchUser value) fetchUser,
    required TResult Function(_Error value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_SuccessRegister value)? successRegister,
    TResult? Function(_SuccessVerif value)? successVerif,
    TResult? Function(_LoadedKtpData value)? loadedKtpData,
    TResult? Function(_IsAuthenticated value)? isAuthenticated,
    TResult? Function(_UnAuthenticated value)? unAuthenticated,
    TResult? Function(_FetchUser value)? fetchUser,
    TResult? Function(_Error value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_SuccessRegister value)? successRegister,
    TResult Function(_SuccessVerif value)? successVerif,
    TResult Function(_LoadedKtpData value)? loadedKtpData,
    TResult Function(_IsAuthenticated value)? isAuthenticated,
    TResult Function(_UnAuthenticated value)? unAuthenticated,
    TResult Function(_FetchUser value)? fetchUser,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements AuthState {
  const factory _Loading() = _$LoadingImpl;
}

/// @nodoc
abstract class _$$SuccessRegisterImplCopyWith<$Res> {
  factory _$$SuccessRegisterImplCopyWith(_$SuccessRegisterImpl value,
          $Res Function(_$SuccessRegisterImpl) then) =
      __$$SuccessRegisterImplCopyWithImpl<$Res>;
  @useResult
  $Res call({RegisterModel response});

  $RegisterModelCopyWith<$Res> get response;
}

/// @nodoc
class __$$SuccessRegisterImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$SuccessRegisterImpl>
    implements _$$SuccessRegisterImplCopyWith<$Res> {
  __$$SuccessRegisterImplCopyWithImpl(
      _$SuccessRegisterImpl _value, $Res Function(_$SuccessRegisterImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? response = null,
  }) {
    return _then(_$SuccessRegisterImpl(
      null == response
          ? _value.response
          : response // ignore: cast_nullable_to_non_nullable
              as RegisterModel,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $RegisterModelCopyWith<$Res> get response {
    return $RegisterModelCopyWith<$Res>(_value.response, (value) {
      return _then(_value.copyWith(response: value));
    });
  }
}

/// @nodoc

class _$SuccessRegisterImpl implements _SuccessRegister {
  const _$SuccessRegisterImpl(this.response);

  @override
  final RegisterModel response;

  @override
  String toString() {
    return 'AuthState.successRegister(response: $response)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SuccessRegisterImpl &&
            (identical(other.response, response) ||
                other.response == response));
  }

  @override
  int get hashCode => Object.hash(runtimeType, response);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SuccessRegisterImplCopyWith<_$SuccessRegisterImpl> get copyWith =>
      __$$SuccessRegisterImplCopyWithImpl<_$SuccessRegisterImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(RegisterModel response) successRegister,
    required TResult Function(DefaultResponse response) successVerif,
    required TResult Function(UserCard response) loadedKtpData,
    required TResult Function(AuthModel data) isAuthenticated,
    required TResult Function() unAuthenticated,
    required TResult Function(UserModel user) fetchUser,
    required TResult Function(NetworkExceptions error) error,
  }) {
    return successRegister(response);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(RegisterModel response)? successRegister,
    TResult? Function(DefaultResponse response)? successVerif,
    TResult? Function(UserCard response)? loadedKtpData,
    TResult? Function(AuthModel data)? isAuthenticated,
    TResult? Function()? unAuthenticated,
    TResult? Function(UserModel user)? fetchUser,
    TResult? Function(NetworkExceptions error)? error,
  }) {
    return successRegister?.call(response);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(RegisterModel response)? successRegister,
    TResult Function(DefaultResponse response)? successVerif,
    TResult Function(UserCard response)? loadedKtpData,
    TResult Function(AuthModel data)? isAuthenticated,
    TResult Function()? unAuthenticated,
    TResult Function(UserModel user)? fetchUser,
    TResult Function(NetworkExceptions error)? error,
    required TResult orElse(),
  }) {
    if (successRegister != null) {
      return successRegister(response);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_SuccessRegister value) successRegister,
    required TResult Function(_SuccessVerif value) successVerif,
    required TResult Function(_LoadedKtpData value) loadedKtpData,
    required TResult Function(_IsAuthenticated value) isAuthenticated,
    required TResult Function(_UnAuthenticated value) unAuthenticated,
    required TResult Function(_FetchUser value) fetchUser,
    required TResult Function(_Error value) error,
  }) {
    return successRegister(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_SuccessRegister value)? successRegister,
    TResult? Function(_SuccessVerif value)? successVerif,
    TResult? Function(_LoadedKtpData value)? loadedKtpData,
    TResult? Function(_IsAuthenticated value)? isAuthenticated,
    TResult? Function(_UnAuthenticated value)? unAuthenticated,
    TResult? Function(_FetchUser value)? fetchUser,
    TResult? Function(_Error value)? error,
  }) {
    return successRegister?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_SuccessRegister value)? successRegister,
    TResult Function(_SuccessVerif value)? successVerif,
    TResult Function(_LoadedKtpData value)? loadedKtpData,
    TResult Function(_IsAuthenticated value)? isAuthenticated,
    TResult Function(_UnAuthenticated value)? unAuthenticated,
    TResult Function(_FetchUser value)? fetchUser,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (successRegister != null) {
      return successRegister(this);
    }
    return orElse();
  }
}

abstract class _SuccessRegister implements AuthState {
  const factory _SuccessRegister(final RegisterModel response) =
      _$SuccessRegisterImpl;

  RegisterModel get response;
  @JsonKey(ignore: true)
  _$$SuccessRegisterImplCopyWith<_$SuccessRegisterImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SuccessVerifImplCopyWith<$Res> {
  factory _$$SuccessVerifImplCopyWith(
          _$SuccessVerifImpl value, $Res Function(_$SuccessVerifImpl) then) =
      __$$SuccessVerifImplCopyWithImpl<$Res>;
  @useResult
  $Res call({DefaultResponse response});

  $DefaultResponseCopyWith<$Res> get response;
}

/// @nodoc
class __$$SuccessVerifImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$SuccessVerifImpl>
    implements _$$SuccessVerifImplCopyWith<$Res> {
  __$$SuccessVerifImplCopyWithImpl(
      _$SuccessVerifImpl _value, $Res Function(_$SuccessVerifImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? response = null,
  }) {
    return _then(_$SuccessVerifImpl(
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

class _$SuccessVerifImpl implements _SuccessVerif {
  const _$SuccessVerifImpl(this.response);

  @override
  final DefaultResponse response;

  @override
  String toString() {
    return 'AuthState.successVerif(response: $response)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SuccessVerifImpl &&
            (identical(other.response, response) ||
                other.response == response));
  }

  @override
  int get hashCode => Object.hash(runtimeType, response);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SuccessVerifImplCopyWith<_$SuccessVerifImpl> get copyWith =>
      __$$SuccessVerifImplCopyWithImpl<_$SuccessVerifImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(RegisterModel response) successRegister,
    required TResult Function(DefaultResponse response) successVerif,
    required TResult Function(UserCard response) loadedKtpData,
    required TResult Function(AuthModel data) isAuthenticated,
    required TResult Function() unAuthenticated,
    required TResult Function(UserModel user) fetchUser,
    required TResult Function(NetworkExceptions error) error,
  }) {
    return successVerif(response);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(RegisterModel response)? successRegister,
    TResult? Function(DefaultResponse response)? successVerif,
    TResult? Function(UserCard response)? loadedKtpData,
    TResult? Function(AuthModel data)? isAuthenticated,
    TResult? Function()? unAuthenticated,
    TResult? Function(UserModel user)? fetchUser,
    TResult? Function(NetworkExceptions error)? error,
  }) {
    return successVerif?.call(response);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(RegisterModel response)? successRegister,
    TResult Function(DefaultResponse response)? successVerif,
    TResult Function(UserCard response)? loadedKtpData,
    TResult Function(AuthModel data)? isAuthenticated,
    TResult Function()? unAuthenticated,
    TResult Function(UserModel user)? fetchUser,
    TResult Function(NetworkExceptions error)? error,
    required TResult orElse(),
  }) {
    if (successVerif != null) {
      return successVerif(response);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_SuccessRegister value) successRegister,
    required TResult Function(_SuccessVerif value) successVerif,
    required TResult Function(_LoadedKtpData value) loadedKtpData,
    required TResult Function(_IsAuthenticated value) isAuthenticated,
    required TResult Function(_UnAuthenticated value) unAuthenticated,
    required TResult Function(_FetchUser value) fetchUser,
    required TResult Function(_Error value) error,
  }) {
    return successVerif(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_SuccessRegister value)? successRegister,
    TResult? Function(_SuccessVerif value)? successVerif,
    TResult? Function(_LoadedKtpData value)? loadedKtpData,
    TResult? Function(_IsAuthenticated value)? isAuthenticated,
    TResult? Function(_UnAuthenticated value)? unAuthenticated,
    TResult? Function(_FetchUser value)? fetchUser,
    TResult? Function(_Error value)? error,
  }) {
    return successVerif?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_SuccessRegister value)? successRegister,
    TResult Function(_SuccessVerif value)? successVerif,
    TResult Function(_LoadedKtpData value)? loadedKtpData,
    TResult Function(_IsAuthenticated value)? isAuthenticated,
    TResult Function(_UnAuthenticated value)? unAuthenticated,
    TResult Function(_FetchUser value)? fetchUser,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (successVerif != null) {
      return successVerif(this);
    }
    return orElse();
  }
}

abstract class _SuccessVerif implements AuthState {
  const factory _SuccessVerif(final DefaultResponse response) =
      _$SuccessVerifImpl;

  DefaultResponse get response;
  @JsonKey(ignore: true)
  _$$SuccessVerifImplCopyWith<_$SuccessVerifImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadedKtpDataImplCopyWith<$Res> {
  factory _$$LoadedKtpDataImplCopyWith(
          _$LoadedKtpDataImpl value, $Res Function(_$LoadedKtpDataImpl) then) =
      __$$LoadedKtpDataImplCopyWithImpl<$Res>;
  @useResult
  $Res call({UserCard response});

  $UserCardCopyWith<$Res> get response;
}

/// @nodoc
class __$$LoadedKtpDataImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$LoadedKtpDataImpl>
    implements _$$LoadedKtpDataImplCopyWith<$Res> {
  __$$LoadedKtpDataImplCopyWithImpl(
      _$LoadedKtpDataImpl _value, $Res Function(_$LoadedKtpDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? response = null,
  }) {
    return _then(_$LoadedKtpDataImpl(
      null == response
          ? _value.response
          : response // ignore: cast_nullable_to_non_nullable
              as UserCard,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $UserCardCopyWith<$Res> get response {
    return $UserCardCopyWith<$Res>(_value.response, (value) {
      return _then(_value.copyWith(response: value));
    });
  }
}

/// @nodoc

class _$LoadedKtpDataImpl implements _LoadedKtpData {
  const _$LoadedKtpDataImpl(this.response);

  @override
  final UserCard response;

  @override
  String toString() {
    return 'AuthState.loadedKtpData(response: $response)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadedKtpDataImpl &&
            (identical(other.response, response) ||
                other.response == response));
  }

  @override
  int get hashCode => Object.hash(runtimeType, response);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadedKtpDataImplCopyWith<_$LoadedKtpDataImpl> get copyWith =>
      __$$LoadedKtpDataImplCopyWithImpl<_$LoadedKtpDataImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(RegisterModel response) successRegister,
    required TResult Function(DefaultResponse response) successVerif,
    required TResult Function(UserCard response) loadedKtpData,
    required TResult Function(AuthModel data) isAuthenticated,
    required TResult Function() unAuthenticated,
    required TResult Function(UserModel user) fetchUser,
    required TResult Function(NetworkExceptions error) error,
  }) {
    return loadedKtpData(response);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(RegisterModel response)? successRegister,
    TResult? Function(DefaultResponse response)? successVerif,
    TResult? Function(UserCard response)? loadedKtpData,
    TResult? Function(AuthModel data)? isAuthenticated,
    TResult? Function()? unAuthenticated,
    TResult? Function(UserModel user)? fetchUser,
    TResult? Function(NetworkExceptions error)? error,
  }) {
    return loadedKtpData?.call(response);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(RegisterModel response)? successRegister,
    TResult Function(DefaultResponse response)? successVerif,
    TResult Function(UserCard response)? loadedKtpData,
    TResult Function(AuthModel data)? isAuthenticated,
    TResult Function()? unAuthenticated,
    TResult Function(UserModel user)? fetchUser,
    TResult Function(NetworkExceptions error)? error,
    required TResult orElse(),
  }) {
    if (loadedKtpData != null) {
      return loadedKtpData(response);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_SuccessRegister value) successRegister,
    required TResult Function(_SuccessVerif value) successVerif,
    required TResult Function(_LoadedKtpData value) loadedKtpData,
    required TResult Function(_IsAuthenticated value) isAuthenticated,
    required TResult Function(_UnAuthenticated value) unAuthenticated,
    required TResult Function(_FetchUser value) fetchUser,
    required TResult Function(_Error value) error,
  }) {
    return loadedKtpData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_SuccessRegister value)? successRegister,
    TResult? Function(_SuccessVerif value)? successVerif,
    TResult? Function(_LoadedKtpData value)? loadedKtpData,
    TResult? Function(_IsAuthenticated value)? isAuthenticated,
    TResult? Function(_UnAuthenticated value)? unAuthenticated,
    TResult? Function(_FetchUser value)? fetchUser,
    TResult? Function(_Error value)? error,
  }) {
    return loadedKtpData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_SuccessRegister value)? successRegister,
    TResult Function(_SuccessVerif value)? successVerif,
    TResult Function(_LoadedKtpData value)? loadedKtpData,
    TResult Function(_IsAuthenticated value)? isAuthenticated,
    TResult Function(_UnAuthenticated value)? unAuthenticated,
    TResult Function(_FetchUser value)? fetchUser,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (loadedKtpData != null) {
      return loadedKtpData(this);
    }
    return orElse();
  }
}

abstract class _LoadedKtpData implements AuthState {
  const factory _LoadedKtpData(final UserCard response) = _$LoadedKtpDataImpl;

  UserCard get response;
  @JsonKey(ignore: true)
  _$$LoadedKtpDataImplCopyWith<_$LoadedKtpDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$IsAuthenticatedImplCopyWith<$Res> {
  factory _$$IsAuthenticatedImplCopyWith(_$IsAuthenticatedImpl value,
          $Res Function(_$IsAuthenticatedImpl) then) =
      __$$IsAuthenticatedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({AuthModel data});

  $AuthModelCopyWith<$Res> get data;
}

/// @nodoc
class __$$IsAuthenticatedImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$IsAuthenticatedImpl>
    implements _$$IsAuthenticatedImplCopyWith<$Res> {
  __$$IsAuthenticatedImplCopyWithImpl(
      _$IsAuthenticatedImpl _value, $Res Function(_$IsAuthenticatedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$IsAuthenticatedImpl(
      null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as AuthModel,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $AuthModelCopyWith<$Res> get data {
    return $AuthModelCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value));
    });
  }
}

/// @nodoc

class _$IsAuthenticatedImpl implements _IsAuthenticated {
  const _$IsAuthenticatedImpl(this.data);

  @override
  final AuthModel data;

  @override
  String toString() {
    return 'AuthState.isAuthenticated(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$IsAuthenticatedImpl &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$IsAuthenticatedImplCopyWith<_$IsAuthenticatedImpl> get copyWith =>
      __$$IsAuthenticatedImplCopyWithImpl<_$IsAuthenticatedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(RegisterModel response) successRegister,
    required TResult Function(DefaultResponse response) successVerif,
    required TResult Function(UserCard response) loadedKtpData,
    required TResult Function(AuthModel data) isAuthenticated,
    required TResult Function() unAuthenticated,
    required TResult Function(UserModel user) fetchUser,
    required TResult Function(NetworkExceptions error) error,
  }) {
    return isAuthenticated(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(RegisterModel response)? successRegister,
    TResult? Function(DefaultResponse response)? successVerif,
    TResult? Function(UserCard response)? loadedKtpData,
    TResult? Function(AuthModel data)? isAuthenticated,
    TResult? Function()? unAuthenticated,
    TResult? Function(UserModel user)? fetchUser,
    TResult? Function(NetworkExceptions error)? error,
  }) {
    return isAuthenticated?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(RegisterModel response)? successRegister,
    TResult Function(DefaultResponse response)? successVerif,
    TResult Function(UserCard response)? loadedKtpData,
    TResult Function(AuthModel data)? isAuthenticated,
    TResult Function()? unAuthenticated,
    TResult Function(UserModel user)? fetchUser,
    TResult Function(NetworkExceptions error)? error,
    required TResult orElse(),
  }) {
    if (isAuthenticated != null) {
      return isAuthenticated(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_SuccessRegister value) successRegister,
    required TResult Function(_SuccessVerif value) successVerif,
    required TResult Function(_LoadedKtpData value) loadedKtpData,
    required TResult Function(_IsAuthenticated value) isAuthenticated,
    required TResult Function(_UnAuthenticated value) unAuthenticated,
    required TResult Function(_FetchUser value) fetchUser,
    required TResult Function(_Error value) error,
  }) {
    return isAuthenticated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_SuccessRegister value)? successRegister,
    TResult? Function(_SuccessVerif value)? successVerif,
    TResult? Function(_LoadedKtpData value)? loadedKtpData,
    TResult? Function(_IsAuthenticated value)? isAuthenticated,
    TResult? Function(_UnAuthenticated value)? unAuthenticated,
    TResult? Function(_FetchUser value)? fetchUser,
    TResult? Function(_Error value)? error,
  }) {
    return isAuthenticated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_SuccessRegister value)? successRegister,
    TResult Function(_SuccessVerif value)? successVerif,
    TResult Function(_LoadedKtpData value)? loadedKtpData,
    TResult Function(_IsAuthenticated value)? isAuthenticated,
    TResult Function(_UnAuthenticated value)? unAuthenticated,
    TResult Function(_FetchUser value)? fetchUser,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (isAuthenticated != null) {
      return isAuthenticated(this);
    }
    return orElse();
  }
}

abstract class _IsAuthenticated implements AuthState {
  const factory _IsAuthenticated(final AuthModel data) = _$IsAuthenticatedImpl;

  AuthModel get data;
  @JsonKey(ignore: true)
  _$$IsAuthenticatedImplCopyWith<_$IsAuthenticatedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UnAuthenticatedImplCopyWith<$Res> {
  factory _$$UnAuthenticatedImplCopyWith(_$UnAuthenticatedImpl value,
          $Res Function(_$UnAuthenticatedImpl) then) =
      __$$UnAuthenticatedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UnAuthenticatedImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$UnAuthenticatedImpl>
    implements _$$UnAuthenticatedImplCopyWith<$Res> {
  __$$UnAuthenticatedImplCopyWithImpl(
      _$UnAuthenticatedImpl _value, $Res Function(_$UnAuthenticatedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$UnAuthenticatedImpl implements _UnAuthenticated {
  const _$UnAuthenticatedImpl();

  @override
  String toString() {
    return 'AuthState.unAuthenticated()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$UnAuthenticatedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(RegisterModel response) successRegister,
    required TResult Function(DefaultResponse response) successVerif,
    required TResult Function(UserCard response) loadedKtpData,
    required TResult Function(AuthModel data) isAuthenticated,
    required TResult Function() unAuthenticated,
    required TResult Function(UserModel user) fetchUser,
    required TResult Function(NetworkExceptions error) error,
  }) {
    return unAuthenticated();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(RegisterModel response)? successRegister,
    TResult? Function(DefaultResponse response)? successVerif,
    TResult? Function(UserCard response)? loadedKtpData,
    TResult? Function(AuthModel data)? isAuthenticated,
    TResult? Function()? unAuthenticated,
    TResult? Function(UserModel user)? fetchUser,
    TResult? Function(NetworkExceptions error)? error,
  }) {
    return unAuthenticated?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(RegisterModel response)? successRegister,
    TResult Function(DefaultResponse response)? successVerif,
    TResult Function(UserCard response)? loadedKtpData,
    TResult Function(AuthModel data)? isAuthenticated,
    TResult Function()? unAuthenticated,
    TResult Function(UserModel user)? fetchUser,
    TResult Function(NetworkExceptions error)? error,
    required TResult orElse(),
  }) {
    if (unAuthenticated != null) {
      return unAuthenticated();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_SuccessRegister value) successRegister,
    required TResult Function(_SuccessVerif value) successVerif,
    required TResult Function(_LoadedKtpData value) loadedKtpData,
    required TResult Function(_IsAuthenticated value) isAuthenticated,
    required TResult Function(_UnAuthenticated value) unAuthenticated,
    required TResult Function(_FetchUser value) fetchUser,
    required TResult Function(_Error value) error,
  }) {
    return unAuthenticated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_SuccessRegister value)? successRegister,
    TResult? Function(_SuccessVerif value)? successVerif,
    TResult? Function(_LoadedKtpData value)? loadedKtpData,
    TResult? Function(_IsAuthenticated value)? isAuthenticated,
    TResult? Function(_UnAuthenticated value)? unAuthenticated,
    TResult? Function(_FetchUser value)? fetchUser,
    TResult? Function(_Error value)? error,
  }) {
    return unAuthenticated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_SuccessRegister value)? successRegister,
    TResult Function(_SuccessVerif value)? successVerif,
    TResult Function(_LoadedKtpData value)? loadedKtpData,
    TResult Function(_IsAuthenticated value)? isAuthenticated,
    TResult Function(_UnAuthenticated value)? unAuthenticated,
    TResult Function(_FetchUser value)? fetchUser,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (unAuthenticated != null) {
      return unAuthenticated(this);
    }
    return orElse();
  }
}

abstract class _UnAuthenticated implements AuthState {
  const factory _UnAuthenticated() = _$UnAuthenticatedImpl;
}

/// @nodoc
abstract class _$$FetchUserImplCopyWith<$Res> {
  factory _$$FetchUserImplCopyWith(
          _$FetchUserImpl value, $Res Function(_$FetchUserImpl) then) =
      __$$FetchUserImplCopyWithImpl<$Res>;
  @useResult
  $Res call({UserModel user});

  $UserModelCopyWith<$Res> get user;
}

/// @nodoc
class __$$FetchUserImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$FetchUserImpl>
    implements _$$FetchUserImplCopyWith<$Res> {
  __$$FetchUserImplCopyWithImpl(
      _$FetchUserImpl _value, $Res Function(_$FetchUserImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
  }) {
    return _then(_$FetchUserImpl(
      null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserModel,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $UserModelCopyWith<$Res> get user {
    return $UserModelCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value));
    });
  }
}

/// @nodoc

class _$FetchUserImpl implements _FetchUser {
  const _$FetchUserImpl(this.user);

  @override
  final UserModel user;

  @override
  String toString() {
    return 'AuthState.fetchUser(user: $user)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchUserImpl &&
            (identical(other.user, user) || other.user == user));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FetchUserImplCopyWith<_$FetchUserImpl> get copyWith =>
      __$$FetchUserImplCopyWithImpl<_$FetchUserImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(RegisterModel response) successRegister,
    required TResult Function(DefaultResponse response) successVerif,
    required TResult Function(UserCard response) loadedKtpData,
    required TResult Function(AuthModel data) isAuthenticated,
    required TResult Function() unAuthenticated,
    required TResult Function(UserModel user) fetchUser,
    required TResult Function(NetworkExceptions error) error,
  }) {
    return fetchUser(user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(RegisterModel response)? successRegister,
    TResult? Function(DefaultResponse response)? successVerif,
    TResult? Function(UserCard response)? loadedKtpData,
    TResult? Function(AuthModel data)? isAuthenticated,
    TResult? Function()? unAuthenticated,
    TResult? Function(UserModel user)? fetchUser,
    TResult? Function(NetworkExceptions error)? error,
  }) {
    return fetchUser?.call(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(RegisterModel response)? successRegister,
    TResult Function(DefaultResponse response)? successVerif,
    TResult Function(UserCard response)? loadedKtpData,
    TResult Function(AuthModel data)? isAuthenticated,
    TResult Function()? unAuthenticated,
    TResult Function(UserModel user)? fetchUser,
    TResult Function(NetworkExceptions error)? error,
    required TResult orElse(),
  }) {
    if (fetchUser != null) {
      return fetchUser(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_SuccessRegister value) successRegister,
    required TResult Function(_SuccessVerif value) successVerif,
    required TResult Function(_LoadedKtpData value) loadedKtpData,
    required TResult Function(_IsAuthenticated value) isAuthenticated,
    required TResult Function(_UnAuthenticated value) unAuthenticated,
    required TResult Function(_FetchUser value) fetchUser,
    required TResult Function(_Error value) error,
  }) {
    return fetchUser(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_SuccessRegister value)? successRegister,
    TResult? Function(_SuccessVerif value)? successVerif,
    TResult? Function(_LoadedKtpData value)? loadedKtpData,
    TResult? Function(_IsAuthenticated value)? isAuthenticated,
    TResult? Function(_UnAuthenticated value)? unAuthenticated,
    TResult? Function(_FetchUser value)? fetchUser,
    TResult? Function(_Error value)? error,
  }) {
    return fetchUser?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_SuccessRegister value)? successRegister,
    TResult Function(_SuccessVerif value)? successVerif,
    TResult Function(_LoadedKtpData value)? loadedKtpData,
    TResult Function(_IsAuthenticated value)? isAuthenticated,
    TResult Function(_UnAuthenticated value)? unAuthenticated,
    TResult Function(_FetchUser value)? fetchUser,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (fetchUser != null) {
      return fetchUser(this);
    }
    return orElse();
  }
}

abstract class _FetchUser implements AuthState {
  const factory _FetchUser(final UserModel user) = _$FetchUserImpl;

  UserModel get user;
  @JsonKey(ignore: true)
  _$$FetchUserImplCopyWith<_$FetchUserImpl> get copyWith =>
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
    extends _$AuthStateCopyWithImpl<$Res, _$ErrorImpl>
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
    return 'AuthState.error(error: $error)';
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
    required TResult Function(RegisterModel response) successRegister,
    required TResult Function(DefaultResponse response) successVerif,
    required TResult Function(UserCard response) loadedKtpData,
    required TResult Function(AuthModel data) isAuthenticated,
    required TResult Function() unAuthenticated,
    required TResult Function(UserModel user) fetchUser,
    required TResult Function(NetworkExceptions error) error,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(RegisterModel response)? successRegister,
    TResult? Function(DefaultResponse response)? successVerif,
    TResult? Function(UserCard response)? loadedKtpData,
    TResult? Function(AuthModel data)? isAuthenticated,
    TResult? Function()? unAuthenticated,
    TResult? Function(UserModel user)? fetchUser,
    TResult? Function(NetworkExceptions error)? error,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(RegisterModel response)? successRegister,
    TResult Function(DefaultResponse response)? successVerif,
    TResult Function(UserCard response)? loadedKtpData,
    TResult Function(AuthModel data)? isAuthenticated,
    TResult Function()? unAuthenticated,
    TResult Function(UserModel user)? fetchUser,
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
    required TResult Function(_SuccessRegister value) successRegister,
    required TResult Function(_SuccessVerif value) successVerif,
    required TResult Function(_LoadedKtpData value) loadedKtpData,
    required TResult Function(_IsAuthenticated value) isAuthenticated,
    required TResult Function(_UnAuthenticated value) unAuthenticated,
    required TResult Function(_FetchUser value) fetchUser,
    required TResult Function(_Error value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_SuccessRegister value)? successRegister,
    TResult? Function(_SuccessVerif value)? successVerif,
    TResult? Function(_LoadedKtpData value)? loadedKtpData,
    TResult? Function(_IsAuthenticated value)? isAuthenticated,
    TResult? Function(_UnAuthenticated value)? unAuthenticated,
    TResult? Function(_FetchUser value)? fetchUser,
    TResult? Function(_Error value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_SuccessRegister value)? successRegister,
    TResult Function(_SuccessVerif value)? successVerif,
    TResult Function(_LoadedKtpData value)? loadedKtpData,
    TResult Function(_IsAuthenticated value)? isAuthenticated,
    TResult Function(_UnAuthenticated value)? unAuthenticated,
    TResult Function(_FetchUser value)? fetchUser,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error implements AuthState {
  const factory _Error(final NetworkExceptions error) = _$ErrorImpl;

  NetworkExceptions get error;
  @JsonKey(ignore: true)
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
