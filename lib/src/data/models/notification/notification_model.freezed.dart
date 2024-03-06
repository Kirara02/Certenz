// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'notification_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

NotificationModel _$NotificationModelFromJson(Map<String, dynamic> json) {
  return _NotificationModel.fromJson(json);
}

/// @nodoc
mixin _$NotificationModel {
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
  @JsonKey(name: 'from_name')
  String? get fromName => throw _privateConstructorUsedError;
  @JsonKey(name: 'to_name')
  String? get toName => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NotificationModelCopyWith<NotificationModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NotificationModelCopyWith<$Res> {
  factory $NotificationModelCopyWith(
          NotificationModel value, $Res Function(NotificationModel) then) =
      _$NotificationModelCopyWithImpl<$Res, NotificationModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'transaction_id') int? transactionId,
      @JsonKey(name: 'transaction_number') String? transactionNumber,
      @JsonKey(name: 'transaction_title') String? transactionTitle,
      @JsonKey(name: 'amount_total') int? amountTotal,
      @JsonKey(name: 'transaction_time') String? transactionTime,
      @JsonKey(name: 'transaction_category') String? transactionCategory,
      @JsonKey(name: 'transaction_status') String? transactionStatus,
      @JsonKey(name: 'from_name') String? fromName,
      @JsonKey(name: 'to_name') String? toName});
}

/// @nodoc
class _$NotificationModelCopyWithImpl<$Res, $Val extends NotificationModel>
    implements $NotificationModelCopyWith<$Res> {
  _$NotificationModelCopyWithImpl(this._value, this._then);

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
    Object? fromName = freezed,
    Object? toName = freezed,
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
      fromName: freezed == fromName
          ? _value.fromName
          : fromName // ignore: cast_nullable_to_non_nullable
              as String?,
      toName: freezed == toName
          ? _value.toName
          : toName // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$NotificationModelImplCopyWith<$Res>
    implements $NotificationModelCopyWith<$Res> {
  factory _$$NotificationModelImplCopyWith(_$NotificationModelImpl value,
          $Res Function(_$NotificationModelImpl) then) =
      __$$NotificationModelImplCopyWithImpl<$Res>;
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
      @JsonKey(name: 'from_name') String? fromName,
      @JsonKey(name: 'to_name') String? toName});
}

/// @nodoc
class __$$NotificationModelImplCopyWithImpl<$Res>
    extends _$NotificationModelCopyWithImpl<$Res, _$NotificationModelImpl>
    implements _$$NotificationModelImplCopyWith<$Res> {
  __$$NotificationModelImplCopyWithImpl(_$NotificationModelImpl _value,
      $Res Function(_$NotificationModelImpl) _then)
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
    Object? fromName = freezed,
    Object? toName = freezed,
  }) {
    return _then(_$NotificationModelImpl(
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
      fromName: freezed == fromName
          ? _value.fromName
          : fromName // ignore: cast_nullable_to_non_nullable
              as String?,
      toName: freezed == toName
          ? _value.toName
          : toName // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$NotificationModelImpl implements _NotificationModel {
  _$NotificationModelImpl(
      {@JsonKey(name: 'transaction_id') this.transactionId,
      @JsonKey(name: 'transaction_number') this.transactionNumber,
      @JsonKey(name: 'transaction_title') this.transactionTitle,
      @JsonKey(name: 'amount_total') this.amountTotal,
      @JsonKey(name: 'transaction_time') this.transactionTime,
      @JsonKey(name: 'transaction_category') this.transactionCategory,
      @JsonKey(name: 'transaction_status') this.transactionStatus,
      @JsonKey(name: 'from_name') this.fromName,
      @JsonKey(name: 'to_name') this.toName});

  factory _$NotificationModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$NotificationModelImplFromJson(json);

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
  @JsonKey(name: 'from_name')
  final String? fromName;
  @override
  @JsonKey(name: 'to_name')
  final String? toName;

  @override
  String toString() {
    return 'NotificationModel(transactionId: $transactionId, transactionNumber: $transactionNumber, transactionTitle: $transactionTitle, amountTotal: $amountTotal, transactionTime: $transactionTime, transactionCategory: $transactionCategory, transactionStatus: $transactionStatus, fromName: $fromName, toName: $toName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NotificationModelImpl &&
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
            (identical(other.fromName, fromName) ||
                other.fromName == fromName) &&
            (identical(other.toName, toName) || other.toName == toName));
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
      fromName,
      toName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NotificationModelImplCopyWith<_$NotificationModelImpl> get copyWith =>
      __$$NotificationModelImplCopyWithImpl<_$NotificationModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$NotificationModelImplToJson(
      this,
    );
  }
}

abstract class _NotificationModel implements NotificationModel {
  factory _NotificationModel(
      {@JsonKey(name: 'transaction_id') final int? transactionId,
      @JsonKey(name: 'transaction_number') final String? transactionNumber,
      @JsonKey(name: 'transaction_title') final String? transactionTitle,
      @JsonKey(name: 'amount_total') final int? amountTotal,
      @JsonKey(name: 'transaction_time') final String? transactionTime,
      @JsonKey(name: 'transaction_category') final String? transactionCategory,
      @JsonKey(name: 'transaction_status') final String? transactionStatus,
      @JsonKey(name: 'from_name') final String? fromName,
      @JsonKey(name: 'to_name')
      final String? toName}) = _$NotificationModelImpl;

  factory _NotificationModel.fromJson(Map<String, dynamic> json) =
      _$NotificationModelImpl.fromJson;

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
  @JsonKey(name: 'from_name')
  String? get fromName;
  @override
  @JsonKey(name: 'to_name')
  String? get toName;
  @override
  @JsonKey(ignore: true)
  _$$NotificationModelImplCopyWith<_$NotificationModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
