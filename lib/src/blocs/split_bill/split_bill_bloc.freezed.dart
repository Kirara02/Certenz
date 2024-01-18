// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'split_bill_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SplitBillEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String title, int amount) createSplitBill,
    required TResult Function(int splitId, FormData formData) addSplitBill,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String title, int amount)? createSplitBill,
    TResult? Function(int splitId, FormData formData)? addSplitBill,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String title, int amount)? createSplitBill,
    TResult Function(int splitId, FormData formData)? addSplitBill,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CreateSplitBill value) createSplitBill,
    required TResult Function(_AddSplitBill value) addSplitBill,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CreateSplitBill value)? createSplitBill,
    TResult? Function(_AddSplitBill value)? addSplitBill,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CreateSplitBill value)? createSplitBill,
    TResult Function(_AddSplitBill value)? addSplitBill,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SplitBillEventCopyWith<$Res> {
  factory $SplitBillEventCopyWith(
          SplitBillEvent value, $Res Function(SplitBillEvent) then) =
      _$SplitBillEventCopyWithImpl<$Res, SplitBillEvent>;
}

/// @nodoc
class _$SplitBillEventCopyWithImpl<$Res, $Val extends SplitBillEvent>
    implements $SplitBillEventCopyWith<$Res> {
  _$SplitBillEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$CreateSplitBillImplCopyWith<$Res> {
  factory _$$CreateSplitBillImplCopyWith(_$CreateSplitBillImpl value,
          $Res Function(_$CreateSplitBillImpl) then) =
      __$$CreateSplitBillImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String title, int amount});
}

/// @nodoc
class __$$CreateSplitBillImplCopyWithImpl<$Res>
    extends _$SplitBillEventCopyWithImpl<$Res, _$CreateSplitBillImpl>
    implements _$$CreateSplitBillImplCopyWith<$Res> {
  __$$CreateSplitBillImplCopyWithImpl(
      _$CreateSplitBillImpl _value, $Res Function(_$CreateSplitBillImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? amount = null,
  }) {
    return _then(_$CreateSplitBillImpl(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$CreateSplitBillImpl implements _CreateSplitBill {
  const _$CreateSplitBillImpl({required this.title, required this.amount});

  @override
  final String title;
  @override
  final int amount;

  @override
  String toString() {
    return 'SplitBillEvent.createSplitBill(title: $title, amount: $amount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateSplitBillImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.amount, amount) || other.amount == amount));
  }

  @override
  int get hashCode => Object.hash(runtimeType, title, amount);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateSplitBillImplCopyWith<_$CreateSplitBillImpl> get copyWith =>
      __$$CreateSplitBillImplCopyWithImpl<_$CreateSplitBillImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String title, int amount) createSplitBill,
    required TResult Function(int splitId, FormData formData) addSplitBill,
  }) {
    return createSplitBill(title, amount);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String title, int amount)? createSplitBill,
    TResult? Function(int splitId, FormData formData)? addSplitBill,
  }) {
    return createSplitBill?.call(title, amount);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String title, int amount)? createSplitBill,
    TResult Function(int splitId, FormData formData)? addSplitBill,
    required TResult orElse(),
  }) {
    if (createSplitBill != null) {
      return createSplitBill(title, amount);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CreateSplitBill value) createSplitBill,
    required TResult Function(_AddSplitBill value) addSplitBill,
  }) {
    return createSplitBill(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CreateSplitBill value)? createSplitBill,
    TResult? Function(_AddSplitBill value)? addSplitBill,
  }) {
    return createSplitBill?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CreateSplitBill value)? createSplitBill,
    TResult Function(_AddSplitBill value)? addSplitBill,
    required TResult orElse(),
  }) {
    if (createSplitBill != null) {
      return createSplitBill(this);
    }
    return orElse();
  }
}

abstract class _CreateSplitBill implements SplitBillEvent {
  const factory _CreateSplitBill(
      {required final String title,
      required final int amount}) = _$CreateSplitBillImpl;

  String get title;
  int get amount;
  @JsonKey(ignore: true)
  _$$CreateSplitBillImplCopyWith<_$CreateSplitBillImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AddSplitBillImplCopyWith<$Res> {
  factory _$$AddSplitBillImplCopyWith(
          _$AddSplitBillImpl value, $Res Function(_$AddSplitBillImpl) then) =
      __$$AddSplitBillImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int splitId, FormData formData});
}

/// @nodoc
class __$$AddSplitBillImplCopyWithImpl<$Res>
    extends _$SplitBillEventCopyWithImpl<$Res, _$AddSplitBillImpl>
    implements _$$AddSplitBillImplCopyWith<$Res> {
  __$$AddSplitBillImplCopyWithImpl(
      _$AddSplitBillImpl _value, $Res Function(_$AddSplitBillImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? splitId = null,
    Object? formData = null,
  }) {
    return _then(_$AddSplitBillImpl(
      splitId: null == splitId
          ? _value.splitId
          : splitId // ignore: cast_nullable_to_non_nullable
              as int,
      formData: null == formData
          ? _value.formData
          : formData // ignore: cast_nullable_to_non_nullable
              as FormData,
    ));
  }
}

/// @nodoc

class _$AddSplitBillImpl implements _AddSplitBill {
  const _$AddSplitBillImpl({required this.splitId, required this.formData});

  @override
  final int splitId;
  @override
  final FormData formData;

  @override
  String toString() {
    return 'SplitBillEvent.addSplitBill(splitId: $splitId, formData: $formData)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddSplitBillImpl &&
            (identical(other.splitId, splitId) || other.splitId == splitId) &&
            (identical(other.formData, formData) ||
                other.formData == formData));
  }

  @override
  int get hashCode => Object.hash(runtimeType, splitId, formData);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddSplitBillImplCopyWith<_$AddSplitBillImpl> get copyWith =>
      __$$AddSplitBillImplCopyWithImpl<_$AddSplitBillImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String title, int amount) createSplitBill,
    required TResult Function(int splitId, FormData formData) addSplitBill,
  }) {
    return addSplitBill(splitId, formData);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String title, int amount)? createSplitBill,
    TResult? Function(int splitId, FormData formData)? addSplitBill,
  }) {
    return addSplitBill?.call(splitId, formData);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String title, int amount)? createSplitBill,
    TResult Function(int splitId, FormData formData)? addSplitBill,
    required TResult orElse(),
  }) {
    if (addSplitBill != null) {
      return addSplitBill(splitId, formData);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CreateSplitBill value) createSplitBill,
    required TResult Function(_AddSplitBill value) addSplitBill,
  }) {
    return addSplitBill(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CreateSplitBill value)? createSplitBill,
    TResult? Function(_AddSplitBill value)? addSplitBill,
  }) {
    return addSplitBill?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CreateSplitBill value)? createSplitBill,
    TResult Function(_AddSplitBill value)? addSplitBill,
    required TResult orElse(),
  }) {
    if (addSplitBill != null) {
      return addSplitBill(this);
    }
    return orElse();
  }
}

abstract class _AddSplitBill implements SplitBillEvent {
  const factory _AddSplitBill(
      {required final int splitId,
      required final FormData formData}) = _$AddSplitBillImpl;

  int get splitId;
  FormData get formData;
  @JsonKey(ignore: true)
  _$$AddSplitBillImplCopyWith<_$AddSplitBillImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SplitBillState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<BillModel> data) success,
    required TResult Function(SplitBillModel data) successCreateSplit,
    required TResult Function(NetworkExceptions error) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<BillModel> data)? success,
    TResult? Function(SplitBillModel data)? successCreateSplit,
    TResult? Function(NetworkExceptions error)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<BillModel> data)? success,
    TResult Function(SplitBillModel data)? successCreateSplit,
    TResult Function(NetworkExceptions error)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_SuccessCreateSplit value) successCreateSplit,
    required TResult Function(_Error value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_SuccessCreateSplit value)? successCreateSplit,
    TResult? Function(_Error value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_SuccessCreateSplit value)? successCreateSplit,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SplitBillStateCopyWith<$Res> {
  factory $SplitBillStateCopyWith(
          SplitBillState value, $Res Function(SplitBillState) then) =
      _$SplitBillStateCopyWithImpl<$Res, SplitBillState>;
}

/// @nodoc
class _$SplitBillStateCopyWithImpl<$Res, $Val extends SplitBillState>
    implements $SplitBillStateCopyWith<$Res> {
  _$SplitBillStateCopyWithImpl(this._value, this._then);

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
    extends _$SplitBillStateCopyWithImpl<$Res, _$InitialImpl>
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
    return 'SplitBillState.initial()';
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
    required TResult Function(List<BillModel> data) success,
    required TResult Function(SplitBillModel data) successCreateSplit,
    required TResult Function(NetworkExceptions error) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<BillModel> data)? success,
    TResult? Function(SplitBillModel data)? successCreateSplit,
    TResult? Function(NetworkExceptions error)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<BillModel> data)? success,
    TResult Function(SplitBillModel data)? successCreateSplit,
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
    required TResult Function(_SuccessCreateSplit value) successCreateSplit,
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
    TResult? Function(_SuccessCreateSplit value)? successCreateSplit,
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
    TResult Function(_SuccessCreateSplit value)? successCreateSplit,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements SplitBillState {
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
    extends _$SplitBillStateCopyWithImpl<$Res, _$LoadingImpl>
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
    return 'SplitBillState.loading()';
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
    required TResult Function(List<BillModel> data) success,
    required TResult Function(SplitBillModel data) successCreateSplit,
    required TResult Function(NetworkExceptions error) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<BillModel> data)? success,
    TResult? Function(SplitBillModel data)? successCreateSplit,
    TResult? Function(NetworkExceptions error)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<BillModel> data)? success,
    TResult Function(SplitBillModel data)? successCreateSplit,
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
    required TResult Function(_SuccessCreateSplit value) successCreateSplit,
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
    TResult? Function(_SuccessCreateSplit value)? successCreateSplit,
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
    TResult Function(_SuccessCreateSplit value)? successCreateSplit,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements SplitBillState {
  const factory _Loading() = _$LoadingImpl;
}

/// @nodoc
abstract class _$$SuccessImplCopyWith<$Res> {
  factory _$$SuccessImplCopyWith(
          _$SuccessImpl value, $Res Function(_$SuccessImpl) then) =
      __$$SuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<BillModel> data});
}

/// @nodoc
class __$$SuccessImplCopyWithImpl<$Res>
    extends _$SplitBillStateCopyWithImpl<$Res, _$SuccessImpl>
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
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<BillModel>,
    ));
  }
}

/// @nodoc

class _$SuccessImpl implements _Success {
  const _$SuccessImpl(final List<BillModel> data) : _data = data;

  final List<BillModel> _data;
  @override
  List<BillModel> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  String toString() {
    return 'SplitBillState.success(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SuccessImpl &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_data));

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
    required TResult Function(List<BillModel> data) success,
    required TResult Function(SplitBillModel data) successCreateSplit,
    required TResult Function(NetworkExceptions error) error,
  }) {
    return success(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<BillModel> data)? success,
    TResult? Function(SplitBillModel data)? successCreateSplit,
    TResult? Function(NetworkExceptions error)? error,
  }) {
    return success?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<BillModel> data)? success,
    TResult Function(SplitBillModel data)? successCreateSplit,
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
    required TResult Function(_SuccessCreateSplit value) successCreateSplit,
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
    TResult? Function(_SuccessCreateSplit value)? successCreateSplit,
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
    TResult Function(_SuccessCreateSplit value)? successCreateSplit,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _Success implements SplitBillState {
  const factory _Success(final List<BillModel> data) = _$SuccessImpl;

  List<BillModel> get data;
  @JsonKey(ignore: true)
  _$$SuccessImplCopyWith<_$SuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SuccessCreateSplitImplCopyWith<$Res> {
  factory _$$SuccessCreateSplitImplCopyWith(_$SuccessCreateSplitImpl value,
          $Res Function(_$SuccessCreateSplitImpl) then) =
      __$$SuccessCreateSplitImplCopyWithImpl<$Res>;
  @useResult
  $Res call({SplitBillModel data});

  $SplitBillModelCopyWith<$Res> get data;
}

/// @nodoc
class __$$SuccessCreateSplitImplCopyWithImpl<$Res>
    extends _$SplitBillStateCopyWithImpl<$Res, _$SuccessCreateSplitImpl>
    implements _$$SuccessCreateSplitImplCopyWith<$Res> {
  __$$SuccessCreateSplitImplCopyWithImpl(_$SuccessCreateSplitImpl _value,
      $Res Function(_$SuccessCreateSplitImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$SuccessCreateSplitImpl(
      null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as SplitBillModel,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $SplitBillModelCopyWith<$Res> get data {
    return $SplitBillModelCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value));
    });
  }
}

/// @nodoc

class _$SuccessCreateSplitImpl implements _SuccessCreateSplit {
  const _$SuccessCreateSplitImpl(this.data);

  @override
  final SplitBillModel data;

  @override
  String toString() {
    return 'SplitBillState.successCreateSplit(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SuccessCreateSplitImpl &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SuccessCreateSplitImplCopyWith<_$SuccessCreateSplitImpl> get copyWith =>
      __$$SuccessCreateSplitImplCopyWithImpl<_$SuccessCreateSplitImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<BillModel> data) success,
    required TResult Function(SplitBillModel data) successCreateSplit,
    required TResult Function(NetworkExceptions error) error,
  }) {
    return successCreateSplit(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<BillModel> data)? success,
    TResult? Function(SplitBillModel data)? successCreateSplit,
    TResult? Function(NetworkExceptions error)? error,
  }) {
    return successCreateSplit?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<BillModel> data)? success,
    TResult Function(SplitBillModel data)? successCreateSplit,
    TResult Function(NetworkExceptions error)? error,
    required TResult orElse(),
  }) {
    if (successCreateSplit != null) {
      return successCreateSplit(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_SuccessCreateSplit value) successCreateSplit,
    required TResult Function(_Error value) error,
  }) {
    return successCreateSplit(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_SuccessCreateSplit value)? successCreateSplit,
    TResult? Function(_Error value)? error,
  }) {
    return successCreateSplit?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_SuccessCreateSplit value)? successCreateSplit,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (successCreateSplit != null) {
      return successCreateSplit(this);
    }
    return orElse();
  }
}

abstract class _SuccessCreateSplit implements SplitBillState {
  const factory _SuccessCreateSplit(final SplitBillModel data) =
      _$SuccessCreateSplitImpl;

  SplitBillModel get data;
  @JsonKey(ignore: true)
  _$$SuccessCreateSplitImplCopyWith<_$SuccessCreateSplitImpl> get copyWith =>
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
    extends _$SplitBillStateCopyWithImpl<$Res, _$ErrorImpl>
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
    return 'SplitBillState.error(error: $error)';
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
    required TResult Function(List<BillModel> data) success,
    required TResult Function(SplitBillModel data) successCreateSplit,
    required TResult Function(NetworkExceptions error) error,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<BillModel> data)? success,
    TResult? Function(SplitBillModel data)? successCreateSplit,
    TResult? Function(NetworkExceptions error)? error,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<BillModel> data)? success,
    TResult Function(SplitBillModel data)? successCreateSplit,
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
    required TResult Function(_SuccessCreateSplit value) successCreateSplit,
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
    TResult? Function(_SuccessCreateSplit value)? successCreateSplit,
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
    TResult Function(_SuccessCreateSplit value)? successCreateSplit,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error implements SplitBillState {
  const factory _Error(final NetworkExceptions error) = _$ErrorImpl;

  NetworkExceptions get error;
  @JsonKey(ignore: true)
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
