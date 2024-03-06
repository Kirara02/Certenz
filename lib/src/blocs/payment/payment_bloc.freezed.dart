// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'payment_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PaymentEvent {
  int get billId => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int billId, String bankCode, String type)
        payWithBankAccount,
    required TResult Function(int billId, String type) payWithQris,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int billId, String bankCode, String type)?
        payWithBankAccount,
    TResult? Function(int billId, String type)? payWithQris,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int billId, String bankCode, String type)?
        payWithBankAccount,
    TResult Function(int billId, String type)? payWithQris,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PayWithBankAccount value) payWithBankAccount,
    required TResult Function(_PayWithQris value) payWithQris,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PayWithBankAccount value)? payWithBankAccount,
    TResult? Function(_PayWithQris value)? payWithQris,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PayWithBankAccount value)? payWithBankAccount,
    TResult Function(_PayWithQris value)? payWithQris,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PaymentEventCopyWith<PaymentEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaymentEventCopyWith<$Res> {
  factory $PaymentEventCopyWith(
          PaymentEvent value, $Res Function(PaymentEvent) then) =
      _$PaymentEventCopyWithImpl<$Res, PaymentEvent>;
  @useResult
  $Res call({int billId, String type});
}

/// @nodoc
class _$PaymentEventCopyWithImpl<$Res, $Val extends PaymentEvent>
    implements $PaymentEventCopyWith<$Res> {
  _$PaymentEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? billId = null,
    Object? type = null,
  }) {
    return _then(_value.copyWith(
      billId: null == billId
          ? _value.billId
          : billId // ignore: cast_nullable_to_non_nullable
              as int,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PayWithBankAccountImplCopyWith<$Res>
    implements $PaymentEventCopyWith<$Res> {
  factory _$$PayWithBankAccountImplCopyWith(_$PayWithBankAccountImpl value,
          $Res Function(_$PayWithBankAccountImpl) then) =
      __$$PayWithBankAccountImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int billId, String bankCode, String type});
}

/// @nodoc
class __$$PayWithBankAccountImplCopyWithImpl<$Res>
    extends _$PaymentEventCopyWithImpl<$Res, _$PayWithBankAccountImpl>
    implements _$$PayWithBankAccountImplCopyWith<$Res> {
  __$$PayWithBankAccountImplCopyWithImpl(_$PayWithBankAccountImpl _value,
      $Res Function(_$PayWithBankAccountImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? billId = null,
    Object? bankCode = null,
    Object? type = null,
  }) {
    return _then(_$PayWithBankAccountImpl(
      billId: null == billId
          ? _value.billId
          : billId // ignore: cast_nullable_to_non_nullable
              as int,
      bankCode: null == bankCode
          ? _value.bankCode
          : bankCode // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$PayWithBankAccountImpl implements _PayWithBankAccount {
  const _$PayWithBankAccountImpl(
      {required this.billId, required this.bankCode, required this.type});

  @override
  final int billId;
  @override
  final String bankCode;
  @override
  final String type;

  @override
  String toString() {
    return 'PaymentEvent.payWithBankAccount(billId: $billId, bankCode: $bankCode, type: $type)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PayWithBankAccountImpl &&
            (identical(other.billId, billId) || other.billId == billId) &&
            (identical(other.bankCode, bankCode) ||
                other.bankCode == bankCode) &&
            (identical(other.type, type) || other.type == type));
  }

  @override
  int get hashCode => Object.hash(runtimeType, billId, bankCode, type);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PayWithBankAccountImplCopyWith<_$PayWithBankAccountImpl> get copyWith =>
      __$$PayWithBankAccountImplCopyWithImpl<_$PayWithBankAccountImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int billId, String bankCode, String type)
        payWithBankAccount,
    required TResult Function(int billId, String type) payWithQris,
  }) {
    return payWithBankAccount(billId, bankCode, type);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int billId, String bankCode, String type)?
        payWithBankAccount,
    TResult? Function(int billId, String type)? payWithQris,
  }) {
    return payWithBankAccount?.call(billId, bankCode, type);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int billId, String bankCode, String type)?
        payWithBankAccount,
    TResult Function(int billId, String type)? payWithQris,
    required TResult orElse(),
  }) {
    if (payWithBankAccount != null) {
      return payWithBankAccount(billId, bankCode, type);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PayWithBankAccount value) payWithBankAccount,
    required TResult Function(_PayWithQris value) payWithQris,
  }) {
    return payWithBankAccount(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PayWithBankAccount value)? payWithBankAccount,
    TResult? Function(_PayWithQris value)? payWithQris,
  }) {
    return payWithBankAccount?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PayWithBankAccount value)? payWithBankAccount,
    TResult Function(_PayWithQris value)? payWithQris,
    required TResult orElse(),
  }) {
    if (payWithBankAccount != null) {
      return payWithBankAccount(this);
    }
    return orElse();
  }
}

abstract class _PayWithBankAccount implements PaymentEvent {
  const factory _PayWithBankAccount(
      {required final int billId,
      required final String bankCode,
      required final String type}) = _$PayWithBankAccountImpl;

  @override
  int get billId;
  String get bankCode;
  @override
  String get type;
  @override
  @JsonKey(ignore: true)
  _$$PayWithBankAccountImplCopyWith<_$PayWithBankAccountImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PayWithQrisImplCopyWith<$Res>
    implements $PaymentEventCopyWith<$Res> {
  factory _$$PayWithQrisImplCopyWith(
          _$PayWithQrisImpl value, $Res Function(_$PayWithQrisImpl) then) =
      __$$PayWithQrisImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int billId, String type});
}

/// @nodoc
class __$$PayWithQrisImplCopyWithImpl<$Res>
    extends _$PaymentEventCopyWithImpl<$Res, _$PayWithQrisImpl>
    implements _$$PayWithQrisImplCopyWith<$Res> {
  __$$PayWithQrisImplCopyWithImpl(
      _$PayWithQrisImpl _value, $Res Function(_$PayWithQrisImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? billId = null,
    Object? type = null,
  }) {
    return _then(_$PayWithQrisImpl(
      billId: null == billId
          ? _value.billId
          : billId // ignore: cast_nullable_to_non_nullable
              as int,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$PayWithQrisImpl implements _PayWithQris {
  const _$PayWithQrisImpl({required this.billId, required this.type});

  @override
  final int billId;
  @override
  final String type;

  @override
  String toString() {
    return 'PaymentEvent.payWithQris(billId: $billId, type: $type)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PayWithQrisImpl &&
            (identical(other.billId, billId) || other.billId == billId) &&
            (identical(other.type, type) || other.type == type));
  }

  @override
  int get hashCode => Object.hash(runtimeType, billId, type);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PayWithQrisImplCopyWith<_$PayWithQrisImpl> get copyWith =>
      __$$PayWithQrisImplCopyWithImpl<_$PayWithQrisImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int billId, String bankCode, String type)
        payWithBankAccount,
    required TResult Function(int billId, String type) payWithQris,
  }) {
    return payWithQris(billId, type);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int billId, String bankCode, String type)?
        payWithBankAccount,
    TResult? Function(int billId, String type)? payWithQris,
  }) {
    return payWithQris?.call(billId, type);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int billId, String bankCode, String type)?
        payWithBankAccount,
    TResult Function(int billId, String type)? payWithQris,
    required TResult orElse(),
  }) {
    if (payWithQris != null) {
      return payWithQris(billId, type);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PayWithBankAccount value) payWithBankAccount,
    required TResult Function(_PayWithQris value) payWithQris,
  }) {
    return payWithQris(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PayWithBankAccount value)? payWithBankAccount,
    TResult? Function(_PayWithQris value)? payWithQris,
  }) {
    return payWithQris?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PayWithBankAccount value)? payWithBankAccount,
    TResult Function(_PayWithQris value)? payWithQris,
    required TResult orElse(),
  }) {
    if (payWithQris != null) {
      return payWithQris(this);
    }
    return orElse();
  }
}

abstract class _PayWithQris implements PaymentEvent {
  const factory _PayWithQris(
      {required final int billId,
      required final String type}) = _$PayWithQrisImpl;

  @override
  int get billId;
  @override
  String get type;
  @override
  @JsonKey(ignore: true)
  _$$PayWithQrisImplCopyWith<_$PayWithQrisImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$PaymentState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(PaymentBankVaModel data) loadedVaBank,
    required TResult Function(PaymentQrisModel data) loadedQris,
    required TResult Function(NetworkExceptions error) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(PaymentBankVaModel data)? loadedVaBank,
    TResult? Function(PaymentQrisModel data)? loadedQris,
    TResult? Function(NetworkExceptions error)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(PaymentBankVaModel data)? loadedVaBank,
    TResult Function(PaymentQrisModel data)? loadedQris,
    TResult Function(NetworkExceptions error)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_LoadedVaBank value) loadedVaBank,
    required TResult Function(_LoadedQris value) loadedQris,
    required TResult Function(_Error value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_LoadedVaBank value)? loadedVaBank,
    TResult? Function(_LoadedQris value)? loadedQris,
    TResult? Function(_Error value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_LoadedVaBank value)? loadedVaBank,
    TResult Function(_LoadedQris value)? loadedQris,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaymentStateCopyWith<$Res> {
  factory $PaymentStateCopyWith(
          PaymentState value, $Res Function(PaymentState) then) =
      _$PaymentStateCopyWithImpl<$Res, PaymentState>;
}

/// @nodoc
class _$PaymentStateCopyWithImpl<$Res, $Val extends PaymentState>
    implements $PaymentStateCopyWith<$Res> {
  _$PaymentStateCopyWithImpl(this._value, this._then);

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
    extends _$PaymentStateCopyWithImpl<$Res, _$InitialImpl>
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
    return 'PaymentState.initial()';
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
    required TResult Function(PaymentBankVaModel data) loadedVaBank,
    required TResult Function(PaymentQrisModel data) loadedQris,
    required TResult Function(NetworkExceptions error) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(PaymentBankVaModel data)? loadedVaBank,
    TResult? Function(PaymentQrisModel data)? loadedQris,
    TResult? Function(NetworkExceptions error)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(PaymentBankVaModel data)? loadedVaBank,
    TResult Function(PaymentQrisModel data)? loadedQris,
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
    required TResult Function(_LoadedVaBank value) loadedVaBank,
    required TResult Function(_LoadedQris value) loadedQris,
    required TResult Function(_Error value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_LoadedVaBank value)? loadedVaBank,
    TResult? Function(_LoadedQris value)? loadedQris,
    TResult? Function(_Error value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_LoadedVaBank value)? loadedVaBank,
    TResult Function(_LoadedQris value)? loadedQris,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements PaymentState {
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
    extends _$PaymentStateCopyWithImpl<$Res, _$LoadingImpl>
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
    return 'PaymentState.loading()';
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
    required TResult Function(PaymentBankVaModel data) loadedVaBank,
    required TResult Function(PaymentQrisModel data) loadedQris,
    required TResult Function(NetworkExceptions error) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(PaymentBankVaModel data)? loadedVaBank,
    TResult? Function(PaymentQrisModel data)? loadedQris,
    TResult? Function(NetworkExceptions error)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(PaymentBankVaModel data)? loadedVaBank,
    TResult Function(PaymentQrisModel data)? loadedQris,
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
    required TResult Function(_LoadedVaBank value) loadedVaBank,
    required TResult Function(_LoadedQris value) loadedQris,
    required TResult Function(_Error value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_LoadedVaBank value)? loadedVaBank,
    TResult? Function(_LoadedQris value)? loadedQris,
    TResult? Function(_Error value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_LoadedVaBank value)? loadedVaBank,
    TResult Function(_LoadedQris value)? loadedQris,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements PaymentState {
  const factory _Loading() = _$LoadingImpl;
}

/// @nodoc
abstract class _$$LoadedVaBankImplCopyWith<$Res> {
  factory _$$LoadedVaBankImplCopyWith(
          _$LoadedVaBankImpl value, $Res Function(_$LoadedVaBankImpl) then) =
      __$$LoadedVaBankImplCopyWithImpl<$Res>;
  @useResult
  $Res call({PaymentBankVaModel data});

  $PaymentBankVaModelCopyWith<$Res> get data;
}

/// @nodoc
class __$$LoadedVaBankImplCopyWithImpl<$Res>
    extends _$PaymentStateCopyWithImpl<$Res, _$LoadedVaBankImpl>
    implements _$$LoadedVaBankImplCopyWith<$Res> {
  __$$LoadedVaBankImplCopyWithImpl(
      _$LoadedVaBankImpl _value, $Res Function(_$LoadedVaBankImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$LoadedVaBankImpl(
      null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as PaymentBankVaModel,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $PaymentBankVaModelCopyWith<$Res> get data {
    return $PaymentBankVaModelCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value));
    });
  }
}

/// @nodoc

class _$LoadedVaBankImpl implements _LoadedVaBank {
  const _$LoadedVaBankImpl(this.data);

  @override
  final PaymentBankVaModel data;

  @override
  String toString() {
    return 'PaymentState.loadedVaBank(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadedVaBankImpl &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadedVaBankImplCopyWith<_$LoadedVaBankImpl> get copyWith =>
      __$$LoadedVaBankImplCopyWithImpl<_$LoadedVaBankImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(PaymentBankVaModel data) loadedVaBank,
    required TResult Function(PaymentQrisModel data) loadedQris,
    required TResult Function(NetworkExceptions error) error,
  }) {
    return loadedVaBank(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(PaymentBankVaModel data)? loadedVaBank,
    TResult? Function(PaymentQrisModel data)? loadedQris,
    TResult? Function(NetworkExceptions error)? error,
  }) {
    return loadedVaBank?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(PaymentBankVaModel data)? loadedVaBank,
    TResult Function(PaymentQrisModel data)? loadedQris,
    TResult Function(NetworkExceptions error)? error,
    required TResult orElse(),
  }) {
    if (loadedVaBank != null) {
      return loadedVaBank(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_LoadedVaBank value) loadedVaBank,
    required TResult Function(_LoadedQris value) loadedQris,
    required TResult Function(_Error value) error,
  }) {
    return loadedVaBank(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_LoadedVaBank value)? loadedVaBank,
    TResult? Function(_LoadedQris value)? loadedQris,
    TResult? Function(_Error value)? error,
  }) {
    return loadedVaBank?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_LoadedVaBank value)? loadedVaBank,
    TResult Function(_LoadedQris value)? loadedQris,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (loadedVaBank != null) {
      return loadedVaBank(this);
    }
    return orElse();
  }
}

abstract class _LoadedVaBank implements PaymentState {
  const factory _LoadedVaBank(final PaymentBankVaModel data) =
      _$LoadedVaBankImpl;

  PaymentBankVaModel get data;
  @JsonKey(ignore: true)
  _$$LoadedVaBankImplCopyWith<_$LoadedVaBankImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadedQrisImplCopyWith<$Res> {
  factory _$$LoadedQrisImplCopyWith(
          _$LoadedQrisImpl value, $Res Function(_$LoadedQrisImpl) then) =
      __$$LoadedQrisImplCopyWithImpl<$Res>;
  @useResult
  $Res call({PaymentQrisModel data});

  $PaymentQrisModelCopyWith<$Res> get data;
}

/// @nodoc
class __$$LoadedQrisImplCopyWithImpl<$Res>
    extends _$PaymentStateCopyWithImpl<$Res, _$LoadedQrisImpl>
    implements _$$LoadedQrisImplCopyWith<$Res> {
  __$$LoadedQrisImplCopyWithImpl(
      _$LoadedQrisImpl _value, $Res Function(_$LoadedQrisImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$LoadedQrisImpl(
      null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as PaymentQrisModel,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $PaymentQrisModelCopyWith<$Res> get data {
    return $PaymentQrisModelCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value));
    });
  }
}

/// @nodoc

class _$LoadedQrisImpl implements _LoadedQris {
  const _$LoadedQrisImpl(this.data);

  @override
  final PaymentQrisModel data;

  @override
  String toString() {
    return 'PaymentState.loadedQris(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadedQrisImpl &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadedQrisImplCopyWith<_$LoadedQrisImpl> get copyWith =>
      __$$LoadedQrisImplCopyWithImpl<_$LoadedQrisImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(PaymentBankVaModel data) loadedVaBank,
    required TResult Function(PaymentQrisModel data) loadedQris,
    required TResult Function(NetworkExceptions error) error,
  }) {
    return loadedQris(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(PaymentBankVaModel data)? loadedVaBank,
    TResult? Function(PaymentQrisModel data)? loadedQris,
    TResult? Function(NetworkExceptions error)? error,
  }) {
    return loadedQris?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(PaymentBankVaModel data)? loadedVaBank,
    TResult Function(PaymentQrisModel data)? loadedQris,
    TResult Function(NetworkExceptions error)? error,
    required TResult orElse(),
  }) {
    if (loadedQris != null) {
      return loadedQris(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_LoadedVaBank value) loadedVaBank,
    required TResult Function(_LoadedQris value) loadedQris,
    required TResult Function(_Error value) error,
  }) {
    return loadedQris(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_LoadedVaBank value)? loadedVaBank,
    TResult? Function(_LoadedQris value)? loadedQris,
    TResult? Function(_Error value)? error,
  }) {
    return loadedQris?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_LoadedVaBank value)? loadedVaBank,
    TResult Function(_LoadedQris value)? loadedQris,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (loadedQris != null) {
      return loadedQris(this);
    }
    return orElse();
  }
}

abstract class _LoadedQris implements PaymentState {
  const factory _LoadedQris(final PaymentQrisModel data) = _$LoadedQrisImpl;

  PaymentQrisModel get data;
  @JsonKey(ignore: true)
  _$$LoadedQrisImplCopyWith<_$LoadedQrisImpl> get copyWith =>
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
    extends _$PaymentStateCopyWithImpl<$Res, _$ErrorImpl>
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
    return 'PaymentState.error(error: $error)';
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
    required TResult Function(PaymentBankVaModel data) loadedVaBank,
    required TResult Function(PaymentQrisModel data) loadedQris,
    required TResult Function(NetworkExceptions error) error,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(PaymentBankVaModel data)? loadedVaBank,
    TResult? Function(PaymentQrisModel data)? loadedQris,
    TResult? Function(NetworkExceptions error)? error,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(PaymentBankVaModel data)? loadedVaBank,
    TResult Function(PaymentQrisModel data)? loadedQris,
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
    required TResult Function(_LoadedVaBank value) loadedVaBank,
    required TResult Function(_LoadedQris value) loadedQris,
    required TResult Function(_Error value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_LoadedVaBank value)? loadedVaBank,
    TResult? Function(_LoadedQris value)? loadedQris,
    TResult? Function(_Error value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_LoadedVaBank value)? loadedVaBank,
    TResult Function(_LoadedQris value)? loadedQris,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error implements PaymentState {
  const factory _Error(final NetworkExceptions error) = _$ErrorImpl;

  NetworkExceptions get error;
  @JsonKey(ignore: true)
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
