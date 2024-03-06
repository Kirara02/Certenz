// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'history_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

HistoryModel _$HistoryModelFromJson(Map<String, dynamic> json) {
  return _HistoryModel.fromJson(json);
}

/// @nodoc
mixin _$HistoryModel {
  @JsonKey(name: 'transaction_id')
  int? get transactionId => throw _privateConstructorUsedError;
  @JsonKey(name: 'transaction_number')
  String? get transactionNumber => throw _privateConstructorUsedError;
  @JsonKey(name: 'transaction_title')
  String? get transactionTitle => throw _privateConstructorUsedError;
  @JsonKey(name: 'amount_total')
  int? get amountTotal => throw _privateConstructorUsedError;
  @JsonKey(name: 'transaction_time')
  String? get transactionTime => throw _privateConstructorUsedError;
  @JsonKey(name: 'transaction_category')
  String? get transactionCategory => throw _privateConstructorUsedError;
  @JsonKey(name: 'transaction_status')
  String? get transactionStatus => throw _privateConstructorUsedError;
  String? get criteria => throw _privateConstructorUsedError;
  @JsonKey(name: 'from_name')
  String? get fromName => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $HistoryModelCopyWith<HistoryModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HistoryModelCopyWith<$Res> {
  factory $HistoryModelCopyWith(
          HistoryModel value, $Res Function(HistoryModel) then) =
      _$HistoryModelCopyWithImpl<$Res, HistoryModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'transaction_id') int? transactionId,
      @JsonKey(name: 'transaction_number') String? transactionNumber,
      @JsonKey(name: 'transaction_title') String? transactionTitle,
      @JsonKey(name: 'amount_total') int? amountTotal,
      @JsonKey(name: 'transaction_time') String? transactionTime,
      @JsonKey(name: 'transaction_category') String? transactionCategory,
      @JsonKey(name: 'transaction_status') String? transactionStatus,
      String? criteria,
      @JsonKey(name: 'from_name') String? fromName});
}

/// @nodoc
class _$HistoryModelCopyWithImpl<$Res, $Val extends HistoryModel>
    implements $HistoryModelCopyWith<$Res> {
  _$HistoryModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? transactionId = freezed,
    Object? transactionNumber = freezed,
    Object? transactionTitle = freezed,
    Object? amountTotal = freezed,
    Object? transactionTime = freezed,
    Object? transactionCategory = freezed,
    Object? transactionStatus = freezed,
    Object? criteria = freezed,
    Object? fromName = freezed,
  }) {
    return _then(_value.copyWith(
      transactionId: freezed == transactionId
          ? _value.transactionId
          : transactionId // ignore: cast_nullable_to_non_nullable
              as int?,
      transactionNumber: freezed == transactionNumber
          ? _value.transactionNumber
          : transactionNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      transactionTitle: freezed == transactionTitle
          ? _value.transactionTitle
          : transactionTitle // ignore: cast_nullable_to_non_nullable
              as String?,
      amountTotal: freezed == amountTotal
          ? _value.amountTotal
          : amountTotal // ignore: cast_nullable_to_non_nullable
              as int?,
      transactionTime: freezed == transactionTime
          ? _value.transactionTime
          : transactionTime // ignore: cast_nullable_to_non_nullable
              as String?,
      transactionCategory: freezed == transactionCategory
          ? _value.transactionCategory
          : transactionCategory // ignore: cast_nullable_to_non_nullable
              as String?,
      transactionStatus: freezed == transactionStatus
          ? _value.transactionStatus
          : transactionStatus // ignore: cast_nullable_to_non_nullable
              as String?,
      criteria: freezed == criteria
          ? _value.criteria
          : criteria // ignore: cast_nullable_to_non_nullable
              as String?,
      fromName: freezed == fromName
          ? _value.fromName
          : fromName // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$HistoryModelImplCopyWith<$Res>
    implements $HistoryModelCopyWith<$Res> {
  factory _$$HistoryModelImplCopyWith(
          _$HistoryModelImpl value, $Res Function(_$HistoryModelImpl) then) =
      __$$HistoryModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'transaction_id') int? transactionId,
      @JsonKey(name: 'transaction_number') String? transactionNumber,
      @JsonKey(name: 'transaction_title') String? transactionTitle,
      @JsonKey(name: 'amount_total') int? amountTotal,
      @JsonKey(name: 'transaction_time') String? transactionTime,
      @JsonKey(name: 'transaction_category') String? transactionCategory,
      @JsonKey(name: 'transaction_status') String? transactionStatus,
      String? criteria,
      @JsonKey(name: 'from_name') String? fromName});
}

/// @nodoc
class __$$HistoryModelImplCopyWithImpl<$Res>
    extends _$HistoryModelCopyWithImpl<$Res, _$HistoryModelImpl>
    implements _$$HistoryModelImplCopyWith<$Res> {
  __$$HistoryModelImplCopyWithImpl(
      _$HistoryModelImpl _value, $Res Function(_$HistoryModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? transactionId = freezed,
    Object? transactionNumber = freezed,
    Object? transactionTitle = freezed,
    Object? amountTotal = freezed,
    Object? transactionTime = freezed,
    Object? transactionCategory = freezed,
    Object? transactionStatus = freezed,
    Object? criteria = freezed,
    Object? fromName = freezed,
  }) {
    return _then(_$HistoryModelImpl(
      transactionId: freezed == transactionId
          ? _value.transactionId
          : transactionId // ignore: cast_nullable_to_non_nullable
              as int?,
      transactionNumber: freezed == transactionNumber
          ? _value.transactionNumber
          : transactionNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      transactionTitle: freezed == transactionTitle
          ? _value.transactionTitle
          : transactionTitle // ignore: cast_nullable_to_non_nullable
              as String?,
      amountTotal: freezed == amountTotal
          ? _value.amountTotal
          : amountTotal // ignore: cast_nullable_to_non_nullable
              as int?,
      transactionTime: freezed == transactionTime
          ? _value.transactionTime
          : transactionTime // ignore: cast_nullable_to_non_nullable
              as String?,
      transactionCategory: freezed == transactionCategory
          ? _value.transactionCategory
          : transactionCategory // ignore: cast_nullable_to_non_nullable
              as String?,
      transactionStatus: freezed == transactionStatus
          ? _value.transactionStatus
          : transactionStatus // ignore: cast_nullable_to_non_nullable
              as String?,
      criteria: freezed == criteria
          ? _value.criteria
          : criteria // ignore: cast_nullable_to_non_nullable
              as String?,
      fromName: freezed == fromName
          ? _value.fromName
          : fromName // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$HistoryModelImpl implements _HistoryModel {
  const _$HistoryModelImpl(
      {@JsonKey(name: 'transaction_id') this.transactionId,
      @JsonKey(name: 'transaction_number') this.transactionNumber,
      @JsonKey(name: 'transaction_title') this.transactionTitle,
      @JsonKey(name: 'amount_total') this.amountTotal,
      @JsonKey(name: 'transaction_time') this.transactionTime,
      @JsonKey(name: 'transaction_category') this.transactionCategory,
      @JsonKey(name: 'transaction_status') this.transactionStatus,
      this.criteria,
      @JsonKey(name: 'from_name') this.fromName});

  factory _$HistoryModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$HistoryModelImplFromJson(json);

  @override
  @JsonKey(name: 'transaction_id')
  final int? transactionId;
  @override
  @JsonKey(name: 'transaction_number')
  final String? transactionNumber;
  @override
  @JsonKey(name: 'transaction_title')
  final String? transactionTitle;
  @override
  @JsonKey(name: 'amount_total')
  final int? amountTotal;
  @override
  @JsonKey(name: 'transaction_time')
  final String? transactionTime;
  @override
  @JsonKey(name: 'transaction_category')
  final String? transactionCategory;
  @override
  @JsonKey(name: 'transaction_status')
  final String? transactionStatus;
  @override
  final String? criteria;
  @override
  @JsonKey(name: 'from_name')
  final String? fromName;

  @override
  String toString() {
    return 'HistoryModel(transactionId: $transactionId, transactionNumber: $transactionNumber, transactionTitle: $transactionTitle, amountTotal: $amountTotal, transactionTime: $transactionTime, transactionCategory: $transactionCategory, transactionStatus: $transactionStatus, criteria: $criteria, fromName: $fromName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HistoryModelImpl &&
            (identical(other.transactionId, transactionId) ||
                other.transactionId == transactionId) &&
            (identical(other.transactionNumber, transactionNumber) ||
                other.transactionNumber == transactionNumber) &&
            (identical(other.transactionTitle, transactionTitle) ||
                other.transactionTitle == transactionTitle) &&
            (identical(other.amountTotal, amountTotal) ||
                other.amountTotal == amountTotal) &&
            (identical(other.transactionTime, transactionTime) ||
                other.transactionTime == transactionTime) &&
            (identical(other.transactionCategory, transactionCategory) ||
                other.transactionCategory == transactionCategory) &&
            (identical(other.transactionStatus, transactionStatus) ||
                other.transactionStatus == transactionStatus) &&
            (identical(other.criteria, criteria) ||
                other.criteria == criteria) &&
            (identical(other.fromName, fromName) ||
                other.fromName == fromName));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      transactionId,
      transactionNumber,
      transactionTitle,
      amountTotal,
      transactionTime,
      transactionCategory,
      transactionStatus,
      criteria,
      fromName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HistoryModelImplCopyWith<_$HistoryModelImpl> get copyWith =>
      __$$HistoryModelImplCopyWithImpl<_$HistoryModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$HistoryModelImplToJson(
      this,
    );
  }
}

abstract class _HistoryModel implements HistoryModel {
  const factory _HistoryModel(
      {@JsonKey(name: 'transaction_id') final int? transactionId,
      @JsonKey(name: 'transaction_number') final String? transactionNumber,
      @JsonKey(name: 'transaction_title') final String? transactionTitle,
      @JsonKey(name: 'amount_total') final int? amountTotal,
      @JsonKey(name: 'transaction_time') final String? transactionTime,
      @JsonKey(name: 'transaction_category') final String? transactionCategory,
      @JsonKey(name: 'transaction_status') final String? transactionStatus,
      final String? criteria,
      @JsonKey(name: 'from_name') final String? fromName}) = _$HistoryModelImpl;

  factory _HistoryModel.fromJson(Map<String, dynamic> json) =
      _$HistoryModelImpl.fromJson;

  @override
  @JsonKey(name: 'transaction_id')
  int? get transactionId;
  @override
  @JsonKey(name: 'transaction_number')
  String? get transactionNumber;
  @override
  @JsonKey(name: 'transaction_title')
  String? get transactionTitle;
  @override
  @JsonKey(name: 'amount_total')
  int? get amountTotal;
  @override
  @JsonKey(name: 'transaction_time')
  String? get transactionTime;
  @override
  @JsonKey(name: 'transaction_category')
  String? get transactionCategory;
  @override
  @JsonKey(name: 'transaction_status')
  String? get transactionStatus;
  @override
  String? get criteria;
  @override
  @JsonKey(name: 'from_name')
  String? get fromName;
  @override
  @JsonKey(ignore: true)
  _$$HistoryModelImplCopyWith<_$HistoryModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
