// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'faq_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$FaqEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getQuestions,
    required TResult Function(String value) getQuestionsByCS,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getQuestions,
    TResult? Function(String value)? getQuestionsByCS,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getQuestions,
    TResult Function(String value)? getQuestionsByCS,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetQuestions value) getQuestions,
    required TResult Function(_GetQuestionsByCS value) getQuestionsByCS,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetQuestions value)? getQuestions,
    TResult? Function(_GetQuestionsByCS value)? getQuestionsByCS,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetQuestions value)? getQuestions,
    TResult Function(_GetQuestionsByCS value)? getQuestionsByCS,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FaqEventCopyWith<$Res> {
  factory $FaqEventCopyWith(FaqEvent value, $Res Function(FaqEvent) then) =
      _$FaqEventCopyWithImpl<$Res, FaqEvent>;
}

/// @nodoc
class _$FaqEventCopyWithImpl<$Res, $Val extends FaqEvent>
    implements $FaqEventCopyWith<$Res> {
  _$FaqEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetQuestionsImplCopyWith<$Res> {
  factory _$$GetQuestionsImplCopyWith(
          _$GetQuestionsImpl value, $Res Function(_$GetQuestionsImpl) then) =
      __$$GetQuestionsImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetQuestionsImplCopyWithImpl<$Res>
    extends _$FaqEventCopyWithImpl<$Res, _$GetQuestionsImpl>
    implements _$$GetQuestionsImplCopyWith<$Res> {
  __$$GetQuestionsImplCopyWithImpl(
      _$GetQuestionsImpl _value, $Res Function(_$GetQuestionsImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetQuestionsImpl implements _GetQuestions {
  const _$GetQuestionsImpl();

  @override
  String toString() {
    return 'FaqEvent.getQuestions()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetQuestionsImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getQuestions,
    required TResult Function(String value) getQuestionsByCS,
  }) {
    return getQuestions();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getQuestions,
    TResult? Function(String value)? getQuestionsByCS,
  }) {
    return getQuestions?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getQuestions,
    TResult Function(String value)? getQuestionsByCS,
    required TResult orElse(),
  }) {
    if (getQuestions != null) {
      return getQuestions();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetQuestions value) getQuestions,
    required TResult Function(_GetQuestionsByCS value) getQuestionsByCS,
  }) {
    return getQuestions(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetQuestions value)? getQuestions,
    TResult? Function(_GetQuestionsByCS value)? getQuestionsByCS,
  }) {
    return getQuestions?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetQuestions value)? getQuestions,
    TResult Function(_GetQuestionsByCS value)? getQuestionsByCS,
    required TResult orElse(),
  }) {
    if (getQuestions != null) {
      return getQuestions(this);
    }
    return orElse();
  }
}

abstract class _GetQuestions implements FaqEvent {
  const factory _GetQuestions() = _$GetQuestionsImpl;
}

/// @nodoc
abstract class _$$GetQuestionsByCSImplCopyWith<$Res> {
  factory _$$GetQuestionsByCSImplCopyWith(_$GetQuestionsByCSImpl value,
          $Res Function(_$GetQuestionsByCSImpl) then) =
      __$$GetQuestionsByCSImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String value});
}

/// @nodoc
class __$$GetQuestionsByCSImplCopyWithImpl<$Res>
    extends _$FaqEventCopyWithImpl<$Res, _$GetQuestionsByCSImpl>
    implements _$$GetQuestionsByCSImplCopyWith<$Res> {
  __$$GetQuestionsByCSImplCopyWithImpl(_$GetQuestionsByCSImpl _value,
      $Res Function(_$GetQuestionsByCSImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
  }) {
    return _then(_$GetQuestionsByCSImpl(
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetQuestionsByCSImpl implements _GetQuestionsByCS {
  const _$GetQuestionsByCSImpl({required this.value});

  @override
  final String value;

  @override
  String toString() {
    return 'FaqEvent.getQuestionsByCS(value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetQuestionsByCSImpl &&
            (identical(other.value, value) || other.value == value));
  }

  @override
  int get hashCode => Object.hash(runtimeType, value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetQuestionsByCSImplCopyWith<_$GetQuestionsByCSImpl> get copyWith =>
      __$$GetQuestionsByCSImplCopyWithImpl<_$GetQuestionsByCSImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getQuestions,
    required TResult Function(String value) getQuestionsByCS,
  }) {
    return getQuestionsByCS(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getQuestions,
    TResult? Function(String value)? getQuestionsByCS,
  }) {
    return getQuestionsByCS?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getQuestions,
    TResult Function(String value)? getQuestionsByCS,
    required TResult orElse(),
  }) {
    if (getQuestionsByCS != null) {
      return getQuestionsByCS(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetQuestions value) getQuestions,
    required TResult Function(_GetQuestionsByCS value) getQuestionsByCS,
  }) {
    return getQuestionsByCS(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetQuestions value)? getQuestions,
    TResult? Function(_GetQuestionsByCS value)? getQuestionsByCS,
  }) {
    return getQuestionsByCS?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetQuestions value)? getQuestions,
    TResult Function(_GetQuestionsByCS value)? getQuestionsByCS,
    required TResult orElse(),
  }) {
    if (getQuestionsByCS != null) {
      return getQuestionsByCS(this);
    }
    return orElse();
  }
}

abstract class _GetQuestionsByCS implements FaqEvent {
  const factory _GetQuestionsByCS({required final String value}) =
      _$GetQuestionsByCSImpl;

  String get value;
  @JsonKey(ignore: true)
  _$$GetQuestionsByCSImplCopyWith<_$GetQuestionsByCSImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$FaqState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<FaqQuestionModel> data) successQuestion,
    required TResult Function(List<FaqCsModel> data) successQuestionType,
    required TResult Function(NetworkExceptions error) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<FaqQuestionModel> data)? successQuestion,
    TResult? Function(List<FaqCsModel> data)? successQuestionType,
    TResult? Function(NetworkExceptions error)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<FaqQuestionModel> data)? successQuestion,
    TResult Function(List<FaqCsModel> data)? successQuestionType,
    TResult Function(NetworkExceptions error)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_SuccessQuestion value) successQuestion,
    required TResult Function(_SuccessQuestionType value) successQuestionType,
    required TResult Function(_Error value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_SuccessQuestion value)? successQuestion,
    TResult? Function(_SuccessQuestionType value)? successQuestionType,
    TResult? Function(_Error value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_SuccessQuestion value)? successQuestion,
    TResult Function(_SuccessQuestionType value)? successQuestionType,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FaqStateCopyWith<$Res> {
  factory $FaqStateCopyWith(FaqState value, $Res Function(FaqState) then) =
      _$FaqStateCopyWithImpl<$Res, FaqState>;
}

/// @nodoc
class _$FaqStateCopyWithImpl<$Res, $Val extends FaqState>
    implements $FaqStateCopyWith<$Res> {
  _$FaqStateCopyWithImpl(this._value, this._then);

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
    extends _$FaqStateCopyWithImpl<$Res, _$InitialImpl>
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
    return 'FaqState.initial()';
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
    required TResult Function(List<FaqQuestionModel> data) successQuestion,
    required TResult Function(List<FaqCsModel> data) successQuestionType,
    required TResult Function(NetworkExceptions error) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<FaqQuestionModel> data)? successQuestion,
    TResult? Function(List<FaqCsModel> data)? successQuestionType,
    TResult? Function(NetworkExceptions error)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<FaqQuestionModel> data)? successQuestion,
    TResult Function(List<FaqCsModel> data)? successQuestionType,
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
    required TResult Function(_SuccessQuestion value) successQuestion,
    required TResult Function(_SuccessQuestionType value) successQuestionType,
    required TResult Function(_Error value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_SuccessQuestion value)? successQuestion,
    TResult? Function(_SuccessQuestionType value)? successQuestionType,
    TResult? Function(_Error value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_SuccessQuestion value)? successQuestion,
    TResult Function(_SuccessQuestionType value)? successQuestionType,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements FaqState {
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
    extends _$FaqStateCopyWithImpl<$Res, _$LoadingImpl>
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
    return 'FaqState.loading()';
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
    required TResult Function(List<FaqQuestionModel> data) successQuestion,
    required TResult Function(List<FaqCsModel> data) successQuestionType,
    required TResult Function(NetworkExceptions error) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<FaqQuestionModel> data)? successQuestion,
    TResult? Function(List<FaqCsModel> data)? successQuestionType,
    TResult? Function(NetworkExceptions error)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<FaqQuestionModel> data)? successQuestion,
    TResult Function(List<FaqCsModel> data)? successQuestionType,
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
    required TResult Function(_SuccessQuestion value) successQuestion,
    required TResult Function(_SuccessQuestionType value) successQuestionType,
    required TResult Function(_Error value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_SuccessQuestion value)? successQuestion,
    TResult? Function(_SuccessQuestionType value)? successQuestionType,
    TResult? Function(_Error value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_SuccessQuestion value)? successQuestion,
    TResult Function(_SuccessQuestionType value)? successQuestionType,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements FaqState {
  const factory _Loading() = _$LoadingImpl;
}

/// @nodoc
abstract class _$$SuccessQuestionImplCopyWith<$Res> {
  factory _$$SuccessQuestionImplCopyWith(_$SuccessQuestionImpl value,
          $Res Function(_$SuccessQuestionImpl) then) =
      __$$SuccessQuestionImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<FaqQuestionModel> data});
}

/// @nodoc
class __$$SuccessQuestionImplCopyWithImpl<$Res>
    extends _$FaqStateCopyWithImpl<$Res, _$SuccessQuestionImpl>
    implements _$$SuccessQuestionImplCopyWith<$Res> {
  __$$SuccessQuestionImplCopyWithImpl(
      _$SuccessQuestionImpl _value, $Res Function(_$SuccessQuestionImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$SuccessQuestionImpl(
      null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<FaqQuestionModel>,
    ));
  }
}

/// @nodoc

class _$SuccessQuestionImpl implements _SuccessQuestion {
  const _$SuccessQuestionImpl(final List<FaqQuestionModel> data) : _data = data;

  final List<FaqQuestionModel> _data;
  @override
  List<FaqQuestionModel> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  String toString() {
    return 'FaqState.successQuestion(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SuccessQuestionImpl &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SuccessQuestionImplCopyWith<_$SuccessQuestionImpl> get copyWith =>
      __$$SuccessQuestionImplCopyWithImpl<_$SuccessQuestionImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<FaqQuestionModel> data) successQuestion,
    required TResult Function(List<FaqCsModel> data) successQuestionType,
    required TResult Function(NetworkExceptions error) error,
  }) {
    return successQuestion(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<FaqQuestionModel> data)? successQuestion,
    TResult? Function(List<FaqCsModel> data)? successQuestionType,
    TResult? Function(NetworkExceptions error)? error,
  }) {
    return successQuestion?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<FaqQuestionModel> data)? successQuestion,
    TResult Function(List<FaqCsModel> data)? successQuestionType,
    TResult Function(NetworkExceptions error)? error,
    required TResult orElse(),
  }) {
    if (successQuestion != null) {
      return successQuestion(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_SuccessQuestion value) successQuestion,
    required TResult Function(_SuccessQuestionType value) successQuestionType,
    required TResult Function(_Error value) error,
  }) {
    return successQuestion(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_SuccessQuestion value)? successQuestion,
    TResult? Function(_SuccessQuestionType value)? successQuestionType,
    TResult? Function(_Error value)? error,
  }) {
    return successQuestion?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_SuccessQuestion value)? successQuestion,
    TResult Function(_SuccessQuestionType value)? successQuestionType,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (successQuestion != null) {
      return successQuestion(this);
    }
    return orElse();
  }
}

abstract class _SuccessQuestion implements FaqState {
  const factory _SuccessQuestion(final List<FaqQuestionModel> data) =
      _$SuccessQuestionImpl;

  List<FaqQuestionModel> get data;
  @JsonKey(ignore: true)
  _$$SuccessQuestionImplCopyWith<_$SuccessQuestionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SuccessQuestionTypeImplCopyWith<$Res> {
  factory _$$SuccessQuestionTypeImplCopyWith(_$SuccessQuestionTypeImpl value,
          $Res Function(_$SuccessQuestionTypeImpl) then) =
      __$$SuccessQuestionTypeImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<FaqCsModel> data});
}

/// @nodoc
class __$$SuccessQuestionTypeImplCopyWithImpl<$Res>
    extends _$FaqStateCopyWithImpl<$Res, _$SuccessQuestionTypeImpl>
    implements _$$SuccessQuestionTypeImplCopyWith<$Res> {
  __$$SuccessQuestionTypeImplCopyWithImpl(_$SuccessQuestionTypeImpl _value,
      $Res Function(_$SuccessQuestionTypeImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$SuccessQuestionTypeImpl(
      null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<FaqCsModel>,
    ));
  }
}

/// @nodoc

class _$SuccessQuestionTypeImpl implements _SuccessQuestionType {
  const _$SuccessQuestionTypeImpl(final List<FaqCsModel> data) : _data = data;

  final List<FaqCsModel> _data;
  @override
  List<FaqCsModel> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  String toString() {
    return 'FaqState.successQuestionType(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SuccessQuestionTypeImpl &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SuccessQuestionTypeImplCopyWith<_$SuccessQuestionTypeImpl> get copyWith =>
      __$$SuccessQuestionTypeImplCopyWithImpl<_$SuccessQuestionTypeImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<FaqQuestionModel> data) successQuestion,
    required TResult Function(List<FaqCsModel> data) successQuestionType,
    required TResult Function(NetworkExceptions error) error,
  }) {
    return successQuestionType(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<FaqQuestionModel> data)? successQuestion,
    TResult? Function(List<FaqCsModel> data)? successQuestionType,
    TResult? Function(NetworkExceptions error)? error,
  }) {
    return successQuestionType?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<FaqQuestionModel> data)? successQuestion,
    TResult Function(List<FaqCsModel> data)? successQuestionType,
    TResult Function(NetworkExceptions error)? error,
    required TResult orElse(),
  }) {
    if (successQuestionType != null) {
      return successQuestionType(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_SuccessQuestion value) successQuestion,
    required TResult Function(_SuccessQuestionType value) successQuestionType,
    required TResult Function(_Error value) error,
  }) {
    return successQuestionType(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_SuccessQuestion value)? successQuestion,
    TResult? Function(_SuccessQuestionType value)? successQuestionType,
    TResult? Function(_Error value)? error,
  }) {
    return successQuestionType?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_SuccessQuestion value)? successQuestion,
    TResult Function(_SuccessQuestionType value)? successQuestionType,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (successQuestionType != null) {
      return successQuestionType(this);
    }
    return orElse();
  }
}

abstract class _SuccessQuestionType implements FaqState {
  const factory _SuccessQuestionType(final List<FaqCsModel> data) =
      _$SuccessQuestionTypeImpl;

  List<FaqCsModel> get data;
  @JsonKey(ignore: true)
  _$$SuccessQuestionTypeImplCopyWith<_$SuccessQuestionTypeImpl> get copyWith =>
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
    extends _$FaqStateCopyWithImpl<$Res, _$ErrorImpl>
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
    return 'FaqState.error(error: $error)';
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
    required TResult Function(List<FaqQuestionModel> data) successQuestion,
    required TResult Function(List<FaqCsModel> data) successQuestionType,
    required TResult Function(NetworkExceptions error) error,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<FaqQuestionModel> data)? successQuestion,
    TResult? Function(List<FaqCsModel> data)? successQuestionType,
    TResult? Function(NetworkExceptions error)? error,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<FaqQuestionModel> data)? successQuestion,
    TResult Function(List<FaqCsModel> data)? successQuestionType,
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
    required TResult Function(_SuccessQuestion value) successQuestion,
    required TResult Function(_SuccessQuestionType value) successQuestionType,
    required TResult Function(_Error value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_SuccessQuestion value)? successQuestion,
    TResult? Function(_SuccessQuestionType value)? successQuestionType,
    TResult? Function(_Error value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_SuccessQuestion value)? successQuestion,
    TResult Function(_SuccessQuestionType value)? successQuestionType,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error implements FaqState {
  const factory _Error(final NetworkExceptions error) = _$ErrorImpl;

  NetworkExceptions get error;
  @JsonKey(ignore: true)
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
