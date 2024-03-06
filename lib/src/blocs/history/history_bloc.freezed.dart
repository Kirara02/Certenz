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
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int page, int? pagination) getAllHistories,
    required TResult Function(int page, int? pagination) getAllSuccessHistories,
    required TResult Function(int page, int? pagination) getAllPendingHistories,
    required TResult Function(int transactionId) getSplitBillByTransactionId,
    required TResult Function(int transactionId) getByTransactionId,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int page, int? pagination)? getAllHistories,
    TResult? Function(int page, int? pagination)? getAllSuccessHistories,
    TResult? Function(int page, int? pagination)? getAllPendingHistories,
    TResult? Function(int transactionId)? getSplitBillByTransactionId,
    TResult? Function(int transactionId)? getByTransactionId,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int page, int? pagination)? getAllHistories,
    TResult Function(int page, int? pagination)? getAllSuccessHistories,
    TResult Function(int page, int? pagination)? getAllPendingHistories,
    TResult Function(int transactionId)? getSplitBillByTransactionId,
    TResult Function(int transactionId)? getByTransactionId,
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
    required TResult Function(_GetSplitBillByTransactionId value)
        getSplitBillByTransactionId,
    required TResult Function(_GetByTransactionId value) getByTransactionId,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetAllHistories value)? getAllHistories,
    TResult? Function(_GetAllSuccessHistories value)? getAllSuccessHistories,
    TResult? Function(_GetAllPendingHistories value)? getAllPendingHistories,
    TResult? Function(_GetSplitBillByTransactionId value)?
        getSplitBillByTransactionId,
    TResult? Function(_GetByTransactionId value)? getByTransactionId,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetAllHistories value)? getAllHistories,
    TResult Function(_GetAllSuccessHistories value)? getAllSuccessHistories,
    TResult Function(_GetAllPendingHistories value)? getAllPendingHistories,
    TResult Function(_GetSplitBillByTransactionId value)?
        getSplitBillByTransactionId,
    TResult Function(_GetByTransactionId value)? getByTransactionId,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HistoryEventCopyWith<$Res> {
  factory $HistoryEventCopyWith(
          HistoryEvent value, $Res Function(HistoryEvent) then) =
      _$HistoryEventCopyWithImpl<$Res, HistoryEvent>;
}

/// @nodoc
class _$HistoryEventCopyWithImpl<$Res, $Val extends HistoryEvent>
    implements $HistoryEventCopyWith<$Res> {
  _$HistoryEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetAllHistoriesImplCopyWith<$Res> {
  factory _$$GetAllHistoriesImplCopyWith(_$GetAllHistoriesImpl value,
          $Res Function(_$GetAllHistoriesImpl) then) =
      __$$GetAllHistoriesImplCopyWithImpl<$Res>;
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
    required TResult Function(int transactionId) getSplitBillByTransactionId,
    required TResult Function(int transactionId) getByTransactionId,
  }) {
    return getAllHistories(page, pagination);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int page, int? pagination)? getAllHistories,
    TResult? Function(int page, int? pagination)? getAllSuccessHistories,
    TResult? Function(int page, int? pagination)? getAllPendingHistories,
    TResult? Function(int transactionId)? getSplitBillByTransactionId,
    TResult? Function(int transactionId)? getByTransactionId,
  }) {
    return getAllHistories?.call(page, pagination);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int page, int? pagination)? getAllHistories,
    TResult Function(int page, int? pagination)? getAllSuccessHistories,
    TResult Function(int page, int? pagination)? getAllPendingHistories,
    TResult Function(int transactionId)? getSplitBillByTransactionId,
    TResult Function(int transactionId)? getByTransactionId,
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
    required TResult Function(_GetSplitBillByTransactionId value)
        getSplitBillByTransactionId,
    required TResult Function(_GetByTransactionId value) getByTransactionId,
  }) {
    return getAllHistories(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetAllHistories value)? getAllHistories,
    TResult? Function(_GetAllSuccessHistories value)? getAllSuccessHistories,
    TResult? Function(_GetAllPendingHistories value)? getAllPendingHistories,
    TResult? Function(_GetSplitBillByTransactionId value)?
        getSplitBillByTransactionId,
    TResult? Function(_GetByTransactionId value)? getByTransactionId,
  }) {
    return getAllHistories?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetAllHistories value)? getAllHistories,
    TResult Function(_GetAllSuccessHistories value)? getAllSuccessHistories,
    TResult Function(_GetAllPendingHistories value)? getAllPendingHistories,
    TResult Function(_GetSplitBillByTransactionId value)?
        getSplitBillByTransactionId,
    TResult Function(_GetByTransactionId value)? getByTransactionId,
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

  int get page;
  int? get pagination;
  @JsonKey(ignore: true)
  _$$GetAllHistoriesImplCopyWith<_$GetAllHistoriesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetAllSuccessHistoriesImplCopyWith<$Res> {
  factory _$$GetAllSuccessHistoriesImplCopyWith(
          _$GetAllSuccessHistoriesImpl value,
          $Res Function(_$GetAllSuccessHistoriesImpl) then) =
      __$$GetAllSuccessHistoriesImplCopyWithImpl<$Res>;
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
    required TResult Function(int transactionId) getSplitBillByTransactionId,
    required TResult Function(int transactionId) getByTransactionId,
  }) {
    return getAllSuccessHistories(page, pagination);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int page, int? pagination)? getAllHistories,
    TResult? Function(int page, int? pagination)? getAllSuccessHistories,
    TResult? Function(int page, int? pagination)? getAllPendingHistories,
    TResult? Function(int transactionId)? getSplitBillByTransactionId,
    TResult? Function(int transactionId)? getByTransactionId,
  }) {
    return getAllSuccessHistories?.call(page, pagination);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int page, int? pagination)? getAllHistories,
    TResult Function(int page, int? pagination)? getAllSuccessHistories,
    TResult Function(int page, int? pagination)? getAllPendingHistories,
    TResult Function(int transactionId)? getSplitBillByTransactionId,
    TResult Function(int transactionId)? getByTransactionId,
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
    required TResult Function(_GetSplitBillByTransactionId value)
        getSplitBillByTransactionId,
    required TResult Function(_GetByTransactionId value) getByTransactionId,
  }) {
    return getAllSuccessHistories(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetAllHistories value)? getAllHistories,
    TResult? Function(_GetAllSuccessHistories value)? getAllSuccessHistories,
    TResult? Function(_GetAllPendingHistories value)? getAllPendingHistories,
    TResult? Function(_GetSplitBillByTransactionId value)?
        getSplitBillByTransactionId,
    TResult? Function(_GetByTransactionId value)? getByTransactionId,
  }) {
    return getAllSuccessHistories?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetAllHistories value)? getAllHistories,
    TResult Function(_GetAllSuccessHistories value)? getAllSuccessHistories,
    TResult Function(_GetAllPendingHistories value)? getAllPendingHistories,
    TResult Function(_GetSplitBillByTransactionId value)?
        getSplitBillByTransactionId,
    TResult Function(_GetByTransactionId value)? getByTransactionId,
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

  int get page;
  int? get pagination;
  @JsonKey(ignore: true)
  _$$GetAllSuccessHistoriesImplCopyWith<_$GetAllSuccessHistoriesImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetAllPendingHistoriesImplCopyWith<$Res> {
  factory _$$GetAllPendingHistoriesImplCopyWith(
          _$GetAllPendingHistoriesImpl value,
          $Res Function(_$GetAllPendingHistoriesImpl) then) =
      __$$GetAllPendingHistoriesImplCopyWithImpl<$Res>;
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
    required TResult Function(int transactionId) getSplitBillByTransactionId,
    required TResult Function(int transactionId) getByTransactionId,
  }) {
    return getAllPendingHistories(page, pagination);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int page, int? pagination)? getAllHistories,
    TResult? Function(int page, int? pagination)? getAllSuccessHistories,
    TResult? Function(int page, int? pagination)? getAllPendingHistories,
    TResult? Function(int transactionId)? getSplitBillByTransactionId,
    TResult? Function(int transactionId)? getByTransactionId,
  }) {
    return getAllPendingHistories?.call(page, pagination);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int page, int? pagination)? getAllHistories,
    TResult Function(int page, int? pagination)? getAllSuccessHistories,
    TResult Function(int page, int? pagination)? getAllPendingHistories,
    TResult Function(int transactionId)? getSplitBillByTransactionId,
    TResult Function(int transactionId)? getByTransactionId,
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
    required TResult Function(_GetSplitBillByTransactionId value)
        getSplitBillByTransactionId,
    required TResult Function(_GetByTransactionId value) getByTransactionId,
  }) {
    return getAllPendingHistories(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetAllHistories value)? getAllHistories,
    TResult? Function(_GetAllSuccessHistories value)? getAllSuccessHistories,
    TResult? Function(_GetAllPendingHistories value)? getAllPendingHistories,
    TResult? Function(_GetSplitBillByTransactionId value)?
        getSplitBillByTransactionId,
    TResult? Function(_GetByTransactionId value)? getByTransactionId,
  }) {
    return getAllPendingHistories?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetAllHistories value)? getAllHistories,
    TResult Function(_GetAllSuccessHistories value)? getAllSuccessHistories,
    TResult Function(_GetAllPendingHistories value)? getAllPendingHistories,
    TResult Function(_GetSplitBillByTransactionId value)?
        getSplitBillByTransactionId,
    TResult Function(_GetByTransactionId value)? getByTransactionId,
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

  int get page;
  int? get pagination;
  @JsonKey(ignore: true)
  _$$GetAllPendingHistoriesImplCopyWith<_$GetAllPendingHistoriesImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetSplitBillByTransactionIdImplCopyWith<$Res> {
  factory _$$GetSplitBillByTransactionIdImplCopyWith(
          _$GetSplitBillByTransactionIdImpl value,
          $Res Function(_$GetSplitBillByTransactionIdImpl) then) =
      __$$GetSplitBillByTransactionIdImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int transactionId});
}

/// @nodoc
class __$$GetSplitBillByTransactionIdImplCopyWithImpl<$Res>
    extends _$HistoryEventCopyWithImpl<$Res, _$GetSplitBillByTransactionIdImpl>
    implements _$$GetSplitBillByTransactionIdImplCopyWith<$Res> {
  __$$GetSplitBillByTransactionIdImplCopyWithImpl(
      _$GetSplitBillByTransactionIdImpl _value,
      $Res Function(_$GetSplitBillByTransactionIdImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? transactionId = null,
  }) {
    return _then(_$GetSplitBillByTransactionIdImpl(
      transactionId: null == transactionId
          ? _value.transactionId
          : transactionId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$GetSplitBillByTransactionIdImpl
    implements _GetSplitBillByTransactionId {
  const _$GetSplitBillByTransactionIdImpl({required this.transactionId});

  @override
  final int transactionId;

  @override
  String toString() {
    return 'HistoryEvent.getSplitBillByTransactionId(transactionId: $transactionId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetSplitBillByTransactionIdImpl &&
            (identical(other.transactionId, transactionId) ||
                other.transactionId == transactionId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, transactionId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetSplitBillByTransactionIdImplCopyWith<_$GetSplitBillByTransactionIdImpl>
      get copyWith => __$$GetSplitBillByTransactionIdImplCopyWithImpl<
          _$GetSplitBillByTransactionIdImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int page, int? pagination) getAllHistories,
    required TResult Function(int page, int? pagination) getAllSuccessHistories,
    required TResult Function(int page, int? pagination) getAllPendingHistories,
    required TResult Function(int transactionId) getSplitBillByTransactionId,
    required TResult Function(int transactionId) getByTransactionId,
  }) {
    return getSplitBillByTransactionId(transactionId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int page, int? pagination)? getAllHistories,
    TResult? Function(int page, int? pagination)? getAllSuccessHistories,
    TResult? Function(int page, int? pagination)? getAllPendingHistories,
    TResult? Function(int transactionId)? getSplitBillByTransactionId,
    TResult? Function(int transactionId)? getByTransactionId,
  }) {
    return getSplitBillByTransactionId?.call(transactionId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int page, int? pagination)? getAllHistories,
    TResult Function(int page, int? pagination)? getAllSuccessHistories,
    TResult Function(int page, int? pagination)? getAllPendingHistories,
    TResult Function(int transactionId)? getSplitBillByTransactionId,
    TResult Function(int transactionId)? getByTransactionId,
    required TResult orElse(),
  }) {
    if (getSplitBillByTransactionId != null) {
      return getSplitBillByTransactionId(transactionId);
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
    required TResult Function(_GetSplitBillByTransactionId value)
        getSplitBillByTransactionId,
    required TResult Function(_GetByTransactionId value) getByTransactionId,
  }) {
    return getSplitBillByTransactionId(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetAllHistories value)? getAllHistories,
    TResult? Function(_GetAllSuccessHistories value)? getAllSuccessHistories,
    TResult? Function(_GetAllPendingHistories value)? getAllPendingHistories,
    TResult? Function(_GetSplitBillByTransactionId value)?
        getSplitBillByTransactionId,
    TResult? Function(_GetByTransactionId value)? getByTransactionId,
  }) {
    return getSplitBillByTransactionId?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetAllHistories value)? getAllHistories,
    TResult Function(_GetAllSuccessHistories value)? getAllSuccessHistories,
    TResult Function(_GetAllPendingHistories value)? getAllPendingHistories,
    TResult Function(_GetSplitBillByTransactionId value)?
        getSplitBillByTransactionId,
    TResult Function(_GetByTransactionId value)? getByTransactionId,
    required TResult orElse(),
  }) {
    if (getSplitBillByTransactionId != null) {
      return getSplitBillByTransactionId(this);
    }
    return orElse();
  }
}

abstract class _GetSplitBillByTransactionId implements HistoryEvent {
  const factory _GetSplitBillByTransactionId(
      {required final int transactionId}) = _$GetSplitBillByTransactionIdImpl;

  int get transactionId;
  @JsonKey(ignore: true)
  _$$GetSplitBillByTransactionIdImplCopyWith<_$GetSplitBillByTransactionIdImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetByTransactionIdImplCopyWith<$Res> {
  factory _$$GetByTransactionIdImplCopyWith(_$GetByTransactionIdImpl value,
          $Res Function(_$GetByTransactionIdImpl) then) =
      __$$GetByTransactionIdImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int transactionId});
}

/// @nodoc
class __$$GetByTransactionIdImplCopyWithImpl<$Res>
    extends _$HistoryEventCopyWithImpl<$Res, _$GetByTransactionIdImpl>
    implements _$$GetByTransactionIdImplCopyWith<$Res> {
  __$$GetByTransactionIdImplCopyWithImpl(_$GetByTransactionIdImpl _value,
      $Res Function(_$GetByTransactionIdImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? transactionId = null,
  }) {
    return _then(_$GetByTransactionIdImpl(
      transactionId: null == transactionId
          ? _value.transactionId
          : transactionId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$GetByTransactionIdImpl implements _GetByTransactionId {
  const _$GetByTransactionIdImpl({required this.transactionId});

  @override
  final int transactionId;

  @override
  String toString() {
    return 'HistoryEvent.getByTransactionId(transactionId: $transactionId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetByTransactionIdImpl &&
            (identical(other.transactionId, transactionId) ||
                other.transactionId == transactionId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, transactionId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetByTransactionIdImplCopyWith<_$GetByTransactionIdImpl> get copyWith =>
      __$$GetByTransactionIdImplCopyWithImpl<_$GetByTransactionIdImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int page, int? pagination) getAllHistories,
    required TResult Function(int page, int? pagination) getAllSuccessHistories,
    required TResult Function(int page, int? pagination) getAllPendingHistories,
    required TResult Function(int transactionId) getSplitBillByTransactionId,
    required TResult Function(int transactionId) getByTransactionId,
  }) {
    return getByTransactionId(transactionId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int page, int? pagination)? getAllHistories,
    TResult? Function(int page, int? pagination)? getAllSuccessHistories,
    TResult? Function(int page, int? pagination)? getAllPendingHistories,
    TResult? Function(int transactionId)? getSplitBillByTransactionId,
    TResult? Function(int transactionId)? getByTransactionId,
  }) {
    return getByTransactionId?.call(transactionId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int page, int? pagination)? getAllHistories,
    TResult Function(int page, int? pagination)? getAllSuccessHistories,
    TResult Function(int page, int? pagination)? getAllPendingHistories,
    TResult Function(int transactionId)? getSplitBillByTransactionId,
    TResult Function(int transactionId)? getByTransactionId,
    required TResult orElse(),
  }) {
    if (getByTransactionId != null) {
      return getByTransactionId(transactionId);
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
    required TResult Function(_GetSplitBillByTransactionId value)
        getSplitBillByTransactionId,
    required TResult Function(_GetByTransactionId value) getByTransactionId,
  }) {
    return getByTransactionId(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetAllHistories value)? getAllHistories,
    TResult? Function(_GetAllSuccessHistories value)? getAllSuccessHistories,
    TResult? Function(_GetAllPendingHistories value)? getAllPendingHistories,
    TResult? Function(_GetSplitBillByTransactionId value)?
        getSplitBillByTransactionId,
    TResult? Function(_GetByTransactionId value)? getByTransactionId,
  }) {
    return getByTransactionId?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetAllHistories value)? getAllHistories,
    TResult Function(_GetAllSuccessHistories value)? getAllSuccessHistories,
    TResult Function(_GetAllPendingHistories value)? getAllPendingHistories,
    TResult Function(_GetSplitBillByTransactionId value)?
        getSplitBillByTransactionId,
    TResult Function(_GetByTransactionId value)? getByTransactionId,
    required TResult orElse(),
  }) {
    if (getByTransactionId != null) {
      return getByTransactionId(this);
    }
    return orElse();
  }
}

abstract class _GetByTransactionId implements HistoryEvent {
  const factory _GetByTransactionId({required final int transactionId}) =
      _$GetByTransactionIdImpl;

  int get transactionId;
  @JsonKey(ignore: true)
  _$$GetByTransactionIdImplCopyWith<_$GetByTransactionIdImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$HistoryState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(PaginationResponse<HistoryModel> response)
        successPagination,
    required TResult Function(HistorySplitBillModel data)
        loadedSplitBillHistory,
    required TResult Function(HistoryItemModel data) loadedBillHistory,
    required TResult Function(NetworkExceptions error) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(PaginationResponse<HistoryModel> response)?
        successPagination,
    TResult? Function(HistorySplitBillModel data)? loadedSplitBillHistory,
    TResult? Function(HistoryItemModel data)? loadedBillHistory,
    TResult? Function(NetworkExceptions error)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(PaginationResponse<HistoryModel> response)?
        successPagination,
    TResult Function(HistorySplitBillModel data)? loadedSplitBillHistory,
    TResult Function(HistoryItemModel data)? loadedBillHistory,
    TResult Function(NetworkExceptions error)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_SuccessPagination value) successPagination,
    required TResult Function(_LoadedSplitBillHistory value)
        loadedSplitBillHistory,
    required TResult Function(_LoadedBillHistory value) loadedBillHistory,
    required TResult Function(_Error value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_SuccessPagination value)? successPagination,
    TResult? Function(_LoadedSplitBillHistory value)? loadedSplitBillHistory,
    TResult? Function(_LoadedBillHistory value)? loadedBillHistory,
    TResult? Function(_Error value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_SuccessPagination value)? successPagination,
    TResult Function(_LoadedSplitBillHistory value)? loadedSplitBillHistory,
    TResult Function(_LoadedBillHistory value)? loadedBillHistory,
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
    required TResult Function(PaginationResponse<HistoryModel> response)
        successPagination,
    required TResult Function(HistorySplitBillModel data)
        loadedSplitBillHistory,
    required TResult Function(HistoryItemModel data) loadedBillHistory,
    required TResult Function(NetworkExceptions error) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(PaginationResponse<HistoryModel> response)?
        successPagination,
    TResult? Function(HistorySplitBillModel data)? loadedSplitBillHistory,
    TResult? Function(HistoryItemModel data)? loadedBillHistory,
    TResult? Function(NetworkExceptions error)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(PaginationResponse<HistoryModel> response)?
        successPagination,
    TResult Function(HistorySplitBillModel data)? loadedSplitBillHistory,
    TResult Function(HistoryItemModel data)? loadedBillHistory,
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
    required TResult Function(_SuccessPagination value) successPagination,
    required TResult Function(_LoadedSplitBillHistory value)
        loadedSplitBillHistory,
    required TResult Function(_LoadedBillHistory value) loadedBillHistory,
    required TResult Function(_Error value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_SuccessPagination value)? successPagination,
    TResult? Function(_LoadedSplitBillHistory value)? loadedSplitBillHistory,
    TResult? Function(_LoadedBillHistory value)? loadedBillHistory,
    TResult? Function(_Error value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_SuccessPagination value)? successPagination,
    TResult Function(_LoadedSplitBillHistory value)? loadedSplitBillHistory,
    TResult Function(_LoadedBillHistory value)? loadedBillHistory,
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
    required TResult Function(PaginationResponse<HistoryModel> response)
        successPagination,
    required TResult Function(HistorySplitBillModel data)
        loadedSplitBillHistory,
    required TResult Function(HistoryItemModel data) loadedBillHistory,
    required TResult Function(NetworkExceptions error) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(PaginationResponse<HistoryModel> response)?
        successPagination,
    TResult? Function(HistorySplitBillModel data)? loadedSplitBillHistory,
    TResult? Function(HistoryItemModel data)? loadedBillHistory,
    TResult? Function(NetworkExceptions error)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(PaginationResponse<HistoryModel> response)?
        successPagination,
    TResult Function(HistorySplitBillModel data)? loadedSplitBillHistory,
    TResult Function(HistoryItemModel data)? loadedBillHistory,
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
    required TResult Function(_SuccessPagination value) successPagination,
    required TResult Function(_LoadedSplitBillHistory value)
        loadedSplitBillHistory,
    required TResult Function(_LoadedBillHistory value) loadedBillHistory,
    required TResult Function(_Error value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_SuccessPagination value)? successPagination,
    TResult? Function(_LoadedSplitBillHistory value)? loadedSplitBillHistory,
    TResult? Function(_LoadedBillHistory value)? loadedBillHistory,
    TResult? Function(_Error value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_SuccessPagination value)? successPagination,
    TResult Function(_LoadedSplitBillHistory value)? loadedSplitBillHistory,
    TResult Function(_LoadedBillHistory value)? loadedBillHistory,
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
abstract class _$$SuccessPaginationImplCopyWith<$Res> {
  factory _$$SuccessPaginationImplCopyWith(_$SuccessPaginationImpl value,
          $Res Function(_$SuccessPaginationImpl) then) =
      __$$SuccessPaginationImplCopyWithImpl<$Res>;
  @useResult
  $Res call({PaginationResponse<HistoryModel> response});

  $PaginationResponseCopyWith<HistoryModel, $Res> get response;
}

/// @nodoc
class __$$SuccessPaginationImplCopyWithImpl<$Res>
    extends _$HistoryStateCopyWithImpl<$Res, _$SuccessPaginationImpl>
    implements _$$SuccessPaginationImplCopyWith<$Res> {
  __$$SuccessPaginationImplCopyWithImpl(_$SuccessPaginationImpl _value,
      $Res Function(_$SuccessPaginationImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? response = null,
  }) {
    return _then(_$SuccessPaginationImpl(
      null == response
          ? _value.response
          : response // ignore: cast_nullable_to_non_nullable
              as PaginationResponse<HistoryModel>,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $PaginationResponseCopyWith<HistoryModel, $Res> get response {
    return $PaginationResponseCopyWith<HistoryModel, $Res>(_value.response,
        (value) {
      return _then(_value.copyWith(response: value));
    });
  }
}

/// @nodoc

class _$SuccessPaginationImpl implements _SuccessPagination {
  const _$SuccessPaginationImpl(this.response);

  @override
  final PaginationResponse<HistoryModel> response;

  @override
  String toString() {
    return 'HistoryState.successPagination(response: $response)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SuccessPaginationImpl &&
            (identical(other.response, response) ||
                other.response == response));
  }

  @override
  int get hashCode => Object.hash(runtimeType, response);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SuccessPaginationImplCopyWith<_$SuccessPaginationImpl> get copyWith =>
      __$$SuccessPaginationImplCopyWithImpl<_$SuccessPaginationImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(PaginationResponse<HistoryModel> response)
        successPagination,
    required TResult Function(HistorySplitBillModel data)
        loadedSplitBillHistory,
    required TResult Function(HistoryItemModel data) loadedBillHistory,
    required TResult Function(NetworkExceptions error) error,
  }) {
    return successPagination(response);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(PaginationResponse<HistoryModel> response)?
        successPagination,
    TResult? Function(HistorySplitBillModel data)? loadedSplitBillHistory,
    TResult? Function(HistoryItemModel data)? loadedBillHistory,
    TResult? Function(NetworkExceptions error)? error,
  }) {
    return successPagination?.call(response);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(PaginationResponse<HistoryModel> response)?
        successPagination,
    TResult Function(HistorySplitBillModel data)? loadedSplitBillHistory,
    TResult Function(HistoryItemModel data)? loadedBillHistory,
    TResult Function(NetworkExceptions error)? error,
    required TResult orElse(),
  }) {
    if (successPagination != null) {
      return successPagination(response);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_SuccessPagination value) successPagination,
    required TResult Function(_LoadedSplitBillHistory value)
        loadedSplitBillHistory,
    required TResult Function(_LoadedBillHistory value) loadedBillHistory,
    required TResult Function(_Error value) error,
  }) {
    return successPagination(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_SuccessPagination value)? successPagination,
    TResult? Function(_LoadedSplitBillHistory value)? loadedSplitBillHistory,
    TResult? Function(_LoadedBillHistory value)? loadedBillHistory,
    TResult? Function(_Error value)? error,
  }) {
    return successPagination?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_SuccessPagination value)? successPagination,
    TResult Function(_LoadedSplitBillHistory value)? loadedSplitBillHistory,
    TResult Function(_LoadedBillHistory value)? loadedBillHistory,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (successPagination != null) {
      return successPagination(this);
    }
    return orElse();
  }
}

abstract class _SuccessPagination implements HistoryState {
  const factory _SuccessPagination(
          final PaginationResponse<HistoryModel> response) =
      _$SuccessPaginationImpl;

  PaginationResponse<HistoryModel> get response;
  @JsonKey(ignore: true)
  _$$SuccessPaginationImplCopyWith<_$SuccessPaginationImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadedSplitBillHistoryImplCopyWith<$Res> {
  factory _$$LoadedSplitBillHistoryImplCopyWith(
          _$LoadedSplitBillHistoryImpl value,
          $Res Function(_$LoadedSplitBillHistoryImpl) then) =
      __$$LoadedSplitBillHistoryImplCopyWithImpl<$Res>;
  @useResult
  $Res call({HistorySplitBillModel data});

  $HistorySplitBillModelCopyWith<$Res> get data;
}

/// @nodoc
class __$$LoadedSplitBillHistoryImplCopyWithImpl<$Res>
    extends _$HistoryStateCopyWithImpl<$Res, _$LoadedSplitBillHistoryImpl>
    implements _$$LoadedSplitBillHistoryImplCopyWith<$Res> {
  __$$LoadedSplitBillHistoryImplCopyWithImpl(
      _$LoadedSplitBillHistoryImpl _value,
      $Res Function(_$LoadedSplitBillHistoryImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$LoadedSplitBillHistoryImpl(
      null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as HistorySplitBillModel,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $HistorySplitBillModelCopyWith<$Res> get data {
    return $HistorySplitBillModelCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value));
    });
  }
}

/// @nodoc

class _$LoadedSplitBillHistoryImpl implements _LoadedSplitBillHistory {
  const _$LoadedSplitBillHistoryImpl(this.data);

  @override
  final HistorySplitBillModel data;

  @override
  String toString() {
    return 'HistoryState.loadedSplitBillHistory(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadedSplitBillHistoryImpl &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadedSplitBillHistoryImplCopyWith<_$LoadedSplitBillHistoryImpl>
      get copyWith => __$$LoadedSplitBillHistoryImplCopyWithImpl<
          _$LoadedSplitBillHistoryImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(PaginationResponse<HistoryModel> response)
        successPagination,
    required TResult Function(HistorySplitBillModel data)
        loadedSplitBillHistory,
    required TResult Function(HistoryItemModel data) loadedBillHistory,
    required TResult Function(NetworkExceptions error) error,
  }) {
    return loadedSplitBillHistory(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(PaginationResponse<HistoryModel> response)?
        successPagination,
    TResult? Function(HistorySplitBillModel data)? loadedSplitBillHistory,
    TResult? Function(HistoryItemModel data)? loadedBillHistory,
    TResult? Function(NetworkExceptions error)? error,
  }) {
    return loadedSplitBillHistory?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(PaginationResponse<HistoryModel> response)?
        successPagination,
    TResult Function(HistorySplitBillModel data)? loadedSplitBillHistory,
    TResult Function(HistoryItemModel data)? loadedBillHistory,
    TResult Function(NetworkExceptions error)? error,
    required TResult orElse(),
  }) {
    if (loadedSplitBillHistory != null) {
      return loadedSplitBillHistory(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_SuccessPagination value) successPagination,
    required TResult Function(_LoadedSplitBillHistory value)
        loadedSplitBillHistory,
    required TResult Function(_LoadedBillHistory value) loadedBillHistory,
    required TResult Function(_Error value) error,
  }) {
    return loadedSplitBillHistory(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_SuccessPagination value)? successPagination,
    TResult? Function(_LoadedSplitBillHistory value)? loadedSplitBillHistory,
    TResult? Function(_LoadedBillHistory value)? loadedBillHistory,
    TResult? Function(_Error value)? error,
  }) {
    return loadedSplitBillHistory?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_SuccessPagination value)? successPagination,
    TResult Function(_LoadedSplitBillHistory value)? loadedSplitBillHistory,
    TResult Function(_LoadedBillHistory value)? loadedBillHistory,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (loadedSplitBillHistory != null) {
      return loadedSplitBillHistory(this);
    }
    return orElse();
  }
}

abstract class _LoadedSplitBillHistory implements HistoryState {
  const factory _LoadedSplitBillHistory(final HistorySplitBillModel data) =
      _$LoadedSplitBillHistoryImpl;

  HistorySplitBillModel get data;
  @JsonKey(ignore: true)
  _$$LoadedSplitBillHistoryImplCopyWith<_$LoadedSplitBillHistoryImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadedBillHistoryImplCopyWith<$Res> {
  factory _$$LoadedBillHistoryImplCopyWith(_$LoadedBillHistoryImpl value,
          $Res Function(_$LoadedBillHistoryImpl) then) =
      __$$LoadedBillHistoryImplCopyWithImpl<$Res>;
  @useResult
  $Res call({HistoryItemModel data});

  $HistoryItemModelCopyWith<$Res> get data;
}

/// @nodoc
class __$$LoadedBillHistoryImplCopyWithImpl<$Res>
    extends _$HistoryStateCopyWithImpl<$Res, _$LoadedBillHistoryImpl>
    implements _$$LoadedBillHistoryImplCopyWith<$Res> {
  __$$LoadedBillHistoryImplCopyWithImpl(_$LoadedBillHistoryImpl _value,
      $Res Function(_$LoadedBillHistoryImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$LoadedBillHistoryImpl(
      null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as HistoryItemModel,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $HistoryItemModelCopyWith<$Res> get data {
    return $HistoryItemModelCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value));
    });
  }
}

/// @nodoc

class _$LoadedBillHistoryImpl implements _LoadedBillHistory {
  const _$LoadedBillHistoryImpl(this.data);

  @override
  final HistoryItemModel data;

  @override
  String toString() {
    return 'HistoryState.loadedBillHistory(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadedBillHistoryImpl &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadedBillHistoryImplCopyWith<_$LoadedBillHistoryImpl> get copyWith =>
      __$$LoadedBillHistoryImplCopyWithImpl<_$LoadedBillHistoryImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(PaginationResponse<HistoryModel> response)
        successPagination,
    required TResult Function(HistorySplitBillModel data)
        loadedSplitBillHistory,
    required TResult Function(HistoryItemModel data) loadedBillHistory,
    required TResult Function(NetworkExceptions error) error,
  }) {
    return loadedBillHistory(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(PaginationResponse<HistoryModel> response)?
        successPagination,
    TResult? Function(HistorySplitBillModel data)? loadedSplitBillHistory,
    TResult? Function(HistoryItemModel data)? loadedBillHistory,
    TResult? Function(NetworkExceptions error)? error,
  }) {
    return loadedBillHistory?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(PaginationResponse<HistoryModel> response)?
        successPagination,
    TResult Function(HistorySplitBillModel data)? loadedSplitBillHistory,
    TResult Function(HistoryItemModel data)? loadedBillHistory,
    TResult Function(NetworkExceptions error)? error,
    required TResult orElse(),
  }) {
    if (loadedBillHistory != null) {
      return loadedBillHistory(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_SuccessPagination value) successPagination,
    required TResult Function(_LoadedSplitBillHistory value)
        loadedSplitBillHistory,
    required TResult Function(_LoadedBillHistory value) loadedBillHistory,
    required TResult Function(_Error value) error,
  }) {
    return loadedBillHistory(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_SuccessPagination value)? successPagination,
    TResult? Function(_LoadedSplitBillHistory value)? loadedSplitBillHistory,
    TResult? Function(_LoadedBillHistory value)? loadedBillHistory,
    TResult? Function(_Error value)? error,
  }) {
    return loadedBillHistory?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_SuccessPagination value)? successPagination,
    TResult Function(_LoadedSplitBillHistory value)? loadedSplitBillHistory,
    TResult Function(_LoadedBillHistory value)? loadedBillHistory,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (loadedBillHistory != null) {
      return loadedBillHistory(this);
    }
    return orElse();
  }
}

abstract class _LoadedBillHistory implements HistoryState {
  const factory _LoadedBillHistory(final HistoryItemModel data) =
      _$LoadedBillHistoryImpl;

  HistoryItemModel get data;
  @JsonKey(ignore: true)
  _$$LoadedBillHistoryImplCopyWith<_$LoadedBillHistoryImpl> get copyWith =>
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
    required TResult Function(PaginationResponse<HistoryModel> response)
        successPagination,
    required TResult Function(HistorySplitBillModel data)
        loadedSplitBillHistory,
    required TResult Function(HistoryItemModel data) loadedBillHistory,
    required TResult Function(NetworkExceptions error) error,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(PaginationResponse<HistoryModel> response)?
        successPagination,
    TResult? Function(HistorySplitBillModel data)? loadedSplitBillHistory,
    TResult? Function(HistoryItemModel data)? loadedBillHistory,
    TResult? Function(NetworkExceptions error)? error,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(PaginationResponse<HistoryModel> response)?
        successPagination,
    TResult Function(HistorySplitBillModel data)? loadedSplitBillHistory,
    TResult Function(HistoryItemModel data)? loadedBillHistory,
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
    required TResult Function(_SuccessPagination value) successPagination,
    required TResult Function(_LoadedSplitBillHistory value)
        loadedSplitBillHistory,
    required TResult Function(_LoadedBillHistory value) loadedBillHistory,
    required TResult Function(_Error value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_SuccessPagination value)? successPagination,
    TResult? Function(_LoadedSplitBillHistory value)? loadedSplitBillHistory,
    TResult? Function(_LoadedBillHistory value)? loadedBillHistory,
    TResult? Function(_Error value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_SuccessPagination value)? successPagination,
    TResult Function(_LoadedSplitBillHistory value)? loadedSplitBillHistory,
    TResult Function(_LoadedBillHistory value)? loadedBillHistory,
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
