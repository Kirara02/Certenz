// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'history_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$HistoryEvent {
  int get page => throw _privateConstructorUsedError;
  int? get pagination => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int page, int? pagination) getAllHistories,
    required TResult Function(int page, int? pagination) getAllSuccessHistories,
    required TResult Function(int page, int? pagination) getAllPendingHistories,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int page, int? pagination)? getAllHistories,
    TResult? Function(int page, int? pagination)? getAllSuccessHistories,
    TResult? Function(int page, int? pagination)? getAllPendingHistories,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int page, int? pagination)? getAllHistories,
    TResult Function(int page, int? pagination)? getAllSuccessHistories,
    TResult Function(int page, int? pagination)? getAllPendingHistories,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetAllHistories value) getAllHistories,
    required TResult Function(_GetAllSuccessHistories value)
        getAllSuccessHistories,
    required TResult Function(_GetAllPendingHistories value)
        getAllPendingHistories,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetAllHistories value)? getAllHistories,
    TResult? Function(_GetAllSuccessHistories value)? getAllSuccessHistories,
    TResult? Function(_GetAllPendingHistories value)? getAllPendingHistories,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetAllHistories value)? getAllHistories,
    TResult Function(_GetAllSuccessHistories value)? getAllSuccessHistories,
    TResult Function(_GetAllPendingHistories value)? getAllPendingHistories,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HistoryEventCopyWith<HistoryEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HistoryEventCopyWith<$Res> {
  factory $HistoryEventCopyWith(
          HistoryEvent value, $Res Function(HistoryEvent) then) =
      _$HistoryEventCopyWithImpl<$Res, HistoryEvent>;
  @useResult
  $Res call({int page, int? pagination});
}

/// @nodoc
class _$HistoryEventCopyWithImpl<$Res, $Val extends HistoryEvent>
    implements $HistoryEventCopyWith<$Res> {
  _$HistoryEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? page = null,
    Object? pagination = freezed,
  }) {
    return _then(_value.copyWith(
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      pagination: freezed == pagination
          ? _value.pagination
          : pagination // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GetAllHistoriesImplCopyWith<$Res>
    implements $HistoryEventCopyWith<$Res> {
  factory _$$GetAllHistoriesImplCopyWith(_$GetAllHistoriesImpl value,
          $Res Function(_$GetAllHistoriesImpl) then) =
      __$$GetAllHistoriesImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int page, int? pagination});
}

/// @nodoc
class __$$GetAllHistoriesImplCopyWithImpl<$Res>
    extends _$HistoryEventCopyWithImpl<$Res, _$GetAllHistoriesImpl>
    implements _$$GetAllHistoriesImplCopyWith<$Res> {
  __$$GetAllHistoriesImplCopyWithImpl(
      _$GetAllHistoriesImpl _value, $Res Function(_$GetAllHistoriesImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? page = null,
    Object? pagination = freezed,
  }) {
    return _then(_$GetAllHistoriesImpl(
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      pagination: freezed == pagination
          ? _value.pagination
          : pagination // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$GetAllHistoriesImpl implements _GetAllHistories {
  const _$GetAllHistoriesImpl({required this.page, this.pagination});

  @override
  final int page;
  @override
  final int? pagination;

  @override
  String toString() {
    return 'HistoryEvent.getAllHistories(page: $page, pagination: $pagination)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetAllHistoriesImpl &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.pagination, pagination) ||
                other.pagination == pagination));
  }

  @override
  int get hashCode => Object.hash(runtimeType, page, pagination);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetAllHistoriesImplCopyWith<_$GetAllHistoriesImpl> get copyWith =>
      __$$GetAllHistoriesImplCopyWithImpl<_$GetAllHistoriesImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int page, int? pagination) getAllHistories,
    required TResult Function(int page, int? pagination) getAllSuccessHistories,
    required TResult Function(int page, int? pagination) getAllPendingHistories,
  }) {
    return getAllHistories(page, pagination);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int page, int? pagination)? getAllHistories,
    TResult? Function(int page, int? pagination)? getAllSuccessHistories,
    TResult? Function(int page, int? pagination)? getAllPendingHistories,
  }) {
    return getAllHistories?.call(page, pagination);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int page, int? pagination)? getAllHistories,
    TResult Function(int page, int? pagination)? getAllSuccessHistories,
    TResult Function(int page, int? pagination)? getAllPendingHistories,
    required TResult orElse(),
  }) {
    if (getAllHistories != null) {
      return getAllHistories(page, pagination);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetAllHistories value) getAllHistories,
    required TResult Function(_GetAllSuccessHistories value)
        getAllSuccessHistories,
    required TResult Function(_GetAllPendingHistories value)
        getAllPendingHistories,
  }) {
    return getAllHistories(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetAllHistories value)? getAllHistories,
    TResult? Function(_GetAllSuccessHistories value)? getAllSuccessHistories,
    TResult? Function(_GetAllPendingHistories value)? getAllPendingHistories,
  }) {
    return getAllHistories?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetAllHistories value)? getAllHistories,
    TResult Function(_GetAllSuccessHistories value)? getAllSuccessHistories,
    TResult Function(_GetAllPendingHistories value)? getAllPendingHistories,
    required TResult orElse(),
  }) {
    if (getAllHistories != null) {
      return getAllHistories(this);
    }
    return orElse();
  }
}

abstract class _GetAllHistories implements HistoryEvent {
  const factory _GetAllHistories(
      {required final int page, final int? pagination}) = _$GetAllHistoriesImpl;

  @override
  int get page;
  @override
  int? get pagination;
  @override
  @JsonKey(ignore: true)
  _$$GetAllHistoriesImplCopyWith<_$GetAllHistoriesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetAllSuccessHistoriesImplCopyWith<$Res>
    implements $HistoryEventCopyWith<$Res> {
  factory _$$GetAllSuccessHistoriesImplCopyWith(
          _$GetAllSuccessHistoriesImpl value,
          $Res Function(_$GetAllSuccessHistoriesImpl) then) =
      __$$GetAllSuccessHistoriesImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int page, int? pagination});
}

/// @nodoc
class __$$GetAllSuccessHistoriesImplCopyWithImpl<$Res>
    extends _$HistoryEventCopyWithImpl<$Res, _$GetAllSuccessHistoriesImpl>
    implements _$$GetAllSuccessHistoriesImplCopyWith<$Res> {
  __$$GetAllSuccessHistoriesImplCopyWithImpl(
      _$GetAllSuccessHistoriesImpl _value,
      $Res Function(_$GetAllSuccessHistoriesImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? page = null,
    Object? pagination = freezed,
  }) {
    return _then(_$GetAllSuccessHistoriesImpl(
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      pagination: freezed == pagination
          ? _value.pagination
          : pagination // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$GetAllSuccessHistoriesImpl implements _GetAllSuccessHistories {
  const _$GetAllSuccessHistoriesImpl({required this.page, this.pagination});

  @override
  final int page;
  @override
  final int? pagination;

  @override
  String toString() {
    return 'HistoryEvent.getAllSuccessHistories(page: $page, pagination: $pagination)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetAllSuccessHistoriesImpl &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.pagination, pagination) ||
                other.pagination == pagination));
  }

  @override
  int get hashCode => Object.hash(runtimeType, page, pagination);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetAllSuccessHistoriesImplCopyWith<_$GetAllSuccessHistoriesImpl>
      get copyWith => __$$GetAllSuccessHistoriesImplCopyWithImpl<
          _$GetAllSuccessHistoriesImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int page, int? pagination) getAllHistories,
    required TResult Function(int page, int? pagination) getAllSuccessHistories,
    required TResult Function(int page, int? pagination) getAllPendingHistories,
  }) {
    return getAllSuccessHistories(page, pagination);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int page, int? pagination)? getAllHistories,
    TResult? Function(int page, int? pagination)? getAllSuccessHistories,
    TResult? Function(int page, int? pagination)? getAllPendingHistories,
  }) {
    return getAllSuccessHistories?.call(page, pagination);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int page, int? pagination)? getAllHistories,
    TResult Function(int page, int? pagination)? getAllSuccessHistories,
    TResult Function(int page, int? pagination)? getAllPendingHistories,
    required TResult orElse(),
  }) {
    if (getAllSuccessHistories != null) {
      return getAllSuccessHistories(page, pagination);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetAllHistories value) getAllHistories,
    required TResult Function(_GetAllSuccessHistories value)
        getAllSuccessHistories,
    required TResult Function(_GetAllPendingHistories value)
        getAllPendingHistories,
  }) {
    return getAllSuccessHistories(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetAllHistories value)? getAllHistories,
    TResult? Function(_GetAllSuccessHistories value)? getAllSuccessHistories,
    TResult? Function(_GetAllPendingHistories value)? getAllPendingHistories,
  }) {
    return getAllSuccessHistories?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetAllHistories value)? getAllHistories,
    TResult Function(_GetAllSuccessHistories value)? getAllSuccessHistories,
    TResult Function(_GetAllPendingHistories value)? getAllPendingHistories,
    required TResult orElse(),
  }) {
    if (getAllSuccessHistories != null) {
      return getAllSuccessHistories(this);
    }
    return orElse();
  }
}

abstract class _GetAllSuccessHistories implements HistoryEvent {
  const factory _GetAllSuccessHistories(
      {required final int page,
      final int? pagination}) = _$GetAllSuccessHistoriesImpl;

  @override
  int get page;
  @override
  int? get pagination;
  @override
  @JsonKey(ignore: true)
  _$$GetAllSuccessHistoriesImplCopyWith<_$GetAllSuccessHistoriesImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetAllPendingHistoriesImplCopyWith<$Res>
    implements $HistoryEventCopyWith<$Res> {
  factory _$$GetAllPendingHistoriesImplCopyWith(
          _$GetAllPendingHistoriesImpl value,
          $Res Function(_$GetAllPendingHistoriesImpl) then) =
      __$$GetAllPendingHistoriesImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int page, int? pagination});
}

/// @nodoc
class __$$GetAllPendingHistoriesImplCopyWithImpl<$Res>
    extends _$HistoryEventCopyWithImpl<$Res, _$GetAllPendingHistoriesImpl>
    implements _$$GetAllPendingHistoriesImplCopyWith<$Res> {
  __$$GetAllPendingHistoriesImplCopyWithImpl(
      _$GetAllPendingHistoriesImpl _value,
      $Res Function(_$GetAllPendingHistoriesImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? page = null,
    Object? pagination = freezed,
  }) {
    return _then(_$GetAllPendingHistoriesImpl(
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      pagination: freezed == pagination
          ? _value.pagination
          : pagination // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$GetAllPendingHistoriesImpl implements _GetAllPendingHistories {
  const _$GetAllPendingHistoriesImpl({required this.page, this.pagination});

  @override
  final int page;
  @override
  final int? pagination;

  @override
  String toString() {
    return 'HistoryEvent.getAllPendingHistories(page: $page, pagination: $pagination)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetAllPendingHistoriesImpl &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.pagination, pagination) ||
                other.pagination == pagination));
  }

  @override
  int get hashCode => Object.hash(runtimeType, page, pagination);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetAllPendingHistoriesImplCopyWith<_$GetAllPendingHistoriesImpl>
      get copyWith => __$$GetAllPendingHistoriesImplCopyWithImpl<
          _$GetAllPendingHistoriesImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int page, int? pagination) getAllHistories,
    required TResult Function(int page, int? pagination) getAllSuccessHistories,
    required TResult Function(int page, int? pagination) getAllPendingHistories,
  }) {
    return getAllPendingHistories(page, pagination);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int page, int? pagination)? getAllHistories,
    TResult? Function(int page, int? pagination)? getAllSuccessHistories,
    TResult? Function(int page, int? pagination)? getAllPendingHistories,
  }) {
    return getAllPendingHistories?.call(page, pagination);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int page, int? pagination)? getAllHistories,
    TResult Function(int page, int? pagination)? getAllSuccessHistories,
    TResult Function(int page, int? pagination)? getAllPendingHistories,
    required TResult orElse(),
  }) {
    if (getAllPendingHistories != null) {
      return getAllPendingHistories(page, pagination);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetAllHistories value) getAllHistories,
    required TResult Function(_GetAllSuccessHistories value)
        getAllSuccessHistories,
    required TResult Function(_GetAllPendingHistories value)
        getAllPendingHistories,
  }) {
    return getAllPendingHistories(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetAllHistories value)? getAllHistories,
    TResult? Function(_GetAllSuccessHistories value)? getAllSuccessHistories,
    TResult? Function(_GetAllPendingHistories value)? getAllPendingHistories,
  }) {
    return getAllPendingHistories?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetAllHistories value)? getAllHistories,
    TResult Function(_GetAllSuccessHistories value)? getAllSuccessHistories,
    TResult Function(_GetAllPendingHistories value)? getAllPendingHistories,
    required TResult orElse(),
  }) {
    if (getAllPendingHistories != null) {
      return getAllPendingHistories(this);
    }
    return orElse();
  }
}

abstract class _GetAllPendingHistories implements HistoryEvent {
  const factory _GetAllPendingHistories(
      {required final int page,
      final int? pagination}) = _$GetAllPendingHistoriesImpl;

  @override
  int get page;
  @override
  int? get pagination;
  @override
  @JsonKey(ignore: true)
  _$$GetAllPendingHistoriesImplCopyWith<_$GetAllPendingHistoriesImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$HistoryState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<HistoryModel> histories, bool hasReachedMax)
        success,
    required TResult Function(NetworkExceptions error) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<HistoryModel> histories, bool hasReachedMax)?
        success,
    TResult? Function(NetworkExceptions error)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<HistoryModel> histories, bool hasReachedMax)? success,
    TResult Function(NetworkExceptions error)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Error value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Error value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HistoryStateCopyWith<$Res> {
  factory $HistoryStateCopyWith(
          HistoryState value, $Res Function(HistoryState) then) =
      _$HistoryStateCopyWithImpl<$Res, HistoryState>;
}

/// @nodoc
class _$HistoryStateCopyWithImpl<$Res, $Val extends HistoryState>
    implements $HistoryStateCopyWith<$Res> {
  _$HistoryStateCopyWithImpl(this._value, this._then);

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
    extends _$HistoryStateCopyWithImpl<$Res, _$InitialImpl>
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
    return 'HistoryState.initial()';
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
    required TResult Function(List<HistoryModel> histories, bool hasReachedMax)
        success,
    required TResult Function(NetworkExceptions error) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<HistoryModel> histories, bool hasReachedMax)?
        success,
    TResult? Function(NetworkExceptions error)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<HistoryModel> histories, bool hasReachedMax)? success,
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
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements HistoryState {
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
    extends _$HistoryStateCopyWithImpl<$Res, _$LoadingImpl>
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
    return 'HistoryState.loading()';
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
    required TResult Function(List<HistoryModel> histories, bool hasReachedMax)
        success,
    required TResult Function(NetworkExceptions error) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<HistoryModel> histories, bool hasReachedMax)?
        success,
    TResult? Function(NetworkExceptions error)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<HistoryModel> histories, bool hasReachedMax)? success,
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
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements HistoryState {
  const factory _Loading() = _$LoadingImpl;
}

/// @nodoc
abstract class _$$SuccessImplCopyWith<$Res> {
  factory _$$SuccessImplCopyWith(
          _$SuccessImpl value, $Res Function(_$SuccessImpl) then) =
      __$$SuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<HistoryModel> histories, bool hasReachedMax});
}

/// @nodoc
class __$$SuccessImplCopyWithImpl<$Res>
    extends _$HistoryStateCopyWithImpl<$Res, _$SuccessImpl>
    implements _$$SuccessImplCopyWith<$Res> {
  __$$SuccessImplCopyWithImpl(
      _$SuccessImpl _value, $Res Function(_$SuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? histories = null,
    Object? hasReachedMax = null,
  }) {
    return _then(_$SuccessImpl(
      null == histories
          ? _value._histories
          : histories // ignore: cast_nullable_to_non_nullable
              as List<HistoryModel>,
      null == hasReachedMax
          ? _value.hasReachedMax
          : hasReachedMax // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$SuccessImpl implements _Success {
  const _$SuccessImpl(final List<HistoryModel> histories, this.hasReachedMax)
      : _histories = histories;

  final List<HistoryModel> _histories;
  @override
  List<HistoryModel> get histories {
    if (_histories is EqualUnmodifiableListView) return _histories;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_histories);
  }

  @override
  final bool hasReachedMax;

  @override
  String toString() {
    return 'HistoryState.success(histories: $histories, hasReachedMax: $hasReachedMax)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SuccessImpl &&
            const DeepCollectionEquality()
                .equals(other._histories, _histories) &&
            (identical(other.hasReachedMax, hasReachedMax) ||
                other.hasReachedMax == hasReachedMax));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_histories), hasReachedMax);

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
    required TResult Function(List<HistoryModel> histories, bool hasReachedMax)
        success,
    required TResult Function(NetworkExceptions error) error,
  }) {
    return success(histories, hasReachedMax);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<HistoryModel> histories, bool hasReachedMax)?
        success,
    TResult? Function(NetworkExceptions error)? error,
  }) {
    return success?.call(histories, hasReachedMax);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<HistoryModel> histories, bool hasReachedMax)? success,
    TResult Function(NetworkExceptions error)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(histories, hasReachedMax);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
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
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _Success implements HistoryState {
  const factory _Success(
          final List<HistoryModel> histories, final bool hasReachedMax) =
      _$SuccessImpl;

  List<HistoryModel> get histories;
  bool get hasReachedMax;
  @JsonKey(ignore: true)
  _$$SuccessImplCopyWith<_$SuccessImpl> get copyWith =>
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
    extends _$HistoryStateCopyWithImpl<$Res, _$ErrorImpl>
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
    return 'HistoryState.error(error: $error)';
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
    required TResult Function(List<HistoryModel> histories, bool hasReachedMax)
        success,
    required TResult Function(NetworkExceptions error) error,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<HistoryModel> histories, bool hasReachedMax)?
        success,
    TResult? Function(NetworkExceptions error)? error,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<HistoryModel> histories, bool hasReachedMax)? success,
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
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error implements HistoryState {
  const factory _Error(final NetworkExceptions error) = _$ErrorImpl;

  NetworkExceptions get error;
  @JsonKey(ignore: true)
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
