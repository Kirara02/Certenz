// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'split_bill_item_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SplitBillItemModel _$SplitBillItemModelFromJson(Map<String, dynamic> json) {
  return _SplitBillItemModel.fromJson(json);
}

/// @nodoc
mixin _$SplitBillItemModel {
  String get title => throw _privateConstructorUsedError;
  @JsonKey(name: 'bill_number')
  String get billNumber => throw _privateConstructorUsedError;
  @JsonKey(name: 'to_email')
  String get toEmail => throw _privateConstructorUsedError;
  String? get note => throw _privateConstructorUsedError;
  @JsonKey(name: 'phone_number')
  String? get phoneNumber => throw _privateConstructorUsedError;
  @JsonKey(name: 'user_id')
  int get userId => throw _privateConstructorUsedError;
  @JsonKey(name: 'from_account')
  String get fromAccount => throw _privateConstructorUsedError;
  @JsonKey(name: 'from_name')
  String get fromName => throw _privateConstructorUsedError;
  @JsonKey(name: 'to_account')
  String get toAccount => throw _privateConstructorUsedError;
  @JsonKey(name: 'to_name')
  String get toName => throw _privateConstructorUsedError;
  @JsonKey(name: 'payment_method')
  String get paymentMethod => throw _privateConstructorUsedError;
  @JsonKey(name: 'transaction_datetime')
  String get transactionDatetime => throw _privateConstructorUsedError;
  @JsonKey(name: 'bill_type')
  String get billType => throw _privateConstructorUsedError;
  @JsonKey(name: 'create_bill_status')
  String get createBillStatus => throw _privateConstructorUsedError;
  @JsonKey(name: 'split_id')
  int get splitId => throw _privateConstructorUsedError;
  @JsonKey(name: 'total_amount_bill')
  int get totalAmountBill => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SplitBillItemModelCopyWith<SplitBillItemModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SplitBillItemModelCopyWith<$Res> {
  factory $SplitBillItemModelCopyWith(
          SplitBillItemModel value, $Res Function(SplitBillItemModel) then) =
      _$SplitBillItemModelCopyWithImpl<$Res, SplitBillItemModel>;
  @useResult
  $Res call(
      {String title,
      @JsonKey(name: 'bill_number') String billNumber,
      @JsonKey(name: 'to_email') String toEmail,
      String? note,
      @JsonKey(name: 'phone_number') String? phoneNumber,
      @JsonKey(name: 'user_id') int userId,
      @JsonKey(name: 'from_account') String fromAccount,
      @JsonKey(name: 'from_name') String fromName,
      @JsonKey(name: 'to_account') String toAccount,
      @JsonKey(name: 'to_name') String toName,
      @JsonKey(name: 'payment_method') String paymentMethod,
      @JsonKey(name: 'transaction_datetime') String transactionDatetime,
      @JsonKey(name: 'bill_type') String billType,
      @JsonKey(name: 'create_bill_status') String createBillStatus,
      @JsonKey(name: 'split_id') int splitId,
      @JsonKey(name: 'total_amount_bill') int totalAmountBill});
}

/// @nodoc
class _$SplitBillItemModelCopyWithImpl<$Res, $Val extends SplitBillItemModel>
    implements $SplitBillItemModelCopyWith<$Res> {
  _$SplitBillItemModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? billNumber = null,
    Object? toEmail = null,
    Object? note = freezed,
    Object? phoneNumber = freezed,
    Object? userId = null,
    Object? fromAccount = null,
    Object? fromName = null,
    Object? toAccount = null,
    Object? toName = null,
    Object? paymentMethod = null,
    Object? transactionDatetime = null,
    Object? billType = null,
    Object? createBillStatus = null,
    Object? splitId = null,
    Object? totalAmountBill = null,
  }) {
    return _then(_value.copyWith(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      billNumber: null == billNumber
          ? _value.billNumber
          : billNumber // ignore: cast_nullable_to_non_nullable
              as String,
      toEmail: null == toEmail
          ? _value.toEmail
          : toEmail // ignore: cast_nullable_to_non_nullable
              as String,
      note: freezed == note
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as String?,
      phoneNumber: freezed == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
      fromAccount: null == fromAccount
          ? _value.fromAccount
          : fromAccount // ignore: cast_nullable_to_non_nullable
              as String,
      fromName: null == fromName
          ? _value.fromName
          : fromName // ignore: cast_nullable_to_non_nullable
              as String,
      toAccount: null == toAccount
          ? _value.toAccount
          : toAccount // ignore: cast_nullable_to_non_nullable
              as String,
      toName: null == toName
          ? _value.toName
          : toName // ignore: cast_nullable_to_non_nullable
              as String,
      paymentMethod: null == paymentMethod
          ? _value.paymentMethod
          : paymentMethod // ignore: cast_nullable_to_non_nullable
              as String,
      transactionDatetime: null == transactionDatetime
          ? _value.transactionDatetime
          : transactionDatetime // ignore: cast_nullable_to_non_nullable
              as String,
      billType: null == billType
          ? _value.billType
          : billType // ignore: cast_nullable_to_non_nullable
              as String,
      createBillStatus: null == createBillStatus
          ? _value.createBillStatus
          : createBillStatus // ignore: cast_nullable_to_non_nullable
              as String,
      splitId: null == splitId
          ? _value.splitId
          : splitId // ignore: cast_nullable_to_non_nullable
              as int,
      totalAmountBill: null == totalAmountBill
          ? _value.totalAmountBill
          : totalAmountBill // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SplitBillItemModelImplCopyWith<$Res>
    implements $SplitBillItemModelCopyWith<$Res> {
  factory _$$SplitBillItemModelImplCopyWith(_$SplitBillItemModelImpl value,
          $Res Function(_$SplitBillItemModelImpl) then) =
      __$$SplitBillItemModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String title,
      @JsonKey(name: 'bill_number') String billNumber,
      @JsonKey(name: 'to_email') String toEmail,
      String? note,
      @JsonKey(name: 'phone_number') String? phoneNumber,
      @JsonKey(name: 'user_id') int userId,
      @JsonKey(name: 'from_account') String fromAccount,
      @JsonKey(name: 'from_name') String fromName,
      @JsonKey(name: 'to_account') String toAccount,
      @JsonKey(name: 'to_name') String toName,
      @JsonKey(name: 'payment_method') String paymentMethod,
      @JsonKey(name: 'transaction_datetime') String transactionDatetime,
      @JsonKey(name: 'bill_type') String billType,
      @JsonKey(name: 'create_bill_status') String createBillStatus,
      @JsonKey(name: 'split_id') int splitId,
      @JsonKey(name: 'total_amount_bill') int totalAmountBill});
}

/// @nodoc
class __$$SplitBillItemModelImplCopyWithImpl<$Res>
    extends _$SplitBillItemModelCopyWithImpl<$Res, _$SplitBillItemModelImpl>
    implements _$$SplitBillItemModelImplCopyWith<$Res> {
  __$$SplitBillItemModelImplCopyWithImpl(_$SplitBillItemModelImpl _value,
      $Res Function(_$SplitBillItemModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? billNumber = null,
    Object? toEmail = null,
    Object? note = freezed,
    Object? phoneNumber = freezed,
    Object? userId = null,
    Object? fromAccount = null,
    Object? fromName = null,
    Object? toAccount = null,
    Object? toName = null,
    Object? paymentMethod = null,
    Object? transactionDatetime = null,
    Object? billType = null,
    Object? createBillStatus = null,
    Object? splitId = null,
    Object? totalAmountBill = null,
  }) {
    return _then(_$SplitBillItemModelImpl(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      billNumber: null == billNumber
          ? _value.billNumber
          : billNumber // ignore: cast_nullable_to_non_nullable
              as String,
      toEmail: null == toEmail
          ? _value.toEmail
          : toEmail // ignore: cast_nullable_to_non_nullable
              as String,
      note: freezed == note
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as String?,
      phoneNumber: freezed == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
      fromAccount: null == fromAccount
          ? _value.fromAccount
          : fromAccount // ignore: cast_nullable_to_non_nullable
              as String,
      fromName: null == fromName
          ? _value.fromName
          : fromName // ignore: cast_nullable_to_non_nullable
              as String,
      toAccount: null == toAccount
          ? _value.toAccount
          : toAccount // ignore: cast_nullable_to_non_nullable
              as String,
      toName: null == toName
          ? _value.toName
          : toName // ignore: cast_nullable_to_non_nullable
              as String,
      paymentMethod: null == paymentMethod
          ? _value.paymentMethod
          : paymentMethod // ignore: cast_nullable_to_non_nullable
              as String,
      transactionDatetime: null == transactionDatetime
          ? _value.transactionDatetime
          : transactionDatetime // ignore: cast_nullable_to_non_nullable
              as String,
      billType: null == billType
          ? _value.billType
          : billType // ignore: cast_nullable_to_non_nullable
              as String,
      createBillStatus: null == createBillStatus
          ? _value.createBillStatus
          : createBillStatus // ignore: cast_nullable_to_non_nullable
              as String,
      splitId: null == splitId
          ? _value.splitId
          : splitId // ignore: cast_nullable_to_non_nullable
              as int,
      totalAmountBill: null == totalAmountBill
          ? _value.totalAmountBill
          : totalAmountBill // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SplitBillItemModelImpl implements _SplitBillItemModel {
  _$SplitBillItemModelImpl(
      {required this.title,
      @JsonKey(name: 'bill_number') required this.billNumber,
      @JsonKey(name: 'to_email') required this.toEmail,
      this.note,
      @JsonKey(name: 'phone_number') this.phoneNumber,
      @JsonKey(name: 'user_id') required this.userId,
      @JsonKey(name: 'from_account') required this.fromAccount,
      @JsonKey(name: 'from_name') required this.fromName,
      @JsonKey(name: 'to_account') required this.toAccount,
      @JsonKey(name: 'to_name') required this.toName,
      @JsonKey(name: 'payment_method') required this.paymentMethod,
      @JsonKey(name: 'transaction_datetime') required this.transactionDatetime,
      @JsonKey(name: 'bill_type') required this.billType,
      @JsonKey(name: 'create_bill_status') required this.createBillStatus,
      @JsonKey(name: 'split_id') required this.splitId,
      @JsonKey(name: 'total_amount_bill') required this.totalAmountBill});

  factory _$SplitBillItemModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$SplitBillItemModelImplFromJson(json);

  @override
  final String title;
  @override
  @JsonKey(name: 'bill_number')
  final String billNumber;
  @override
  @JsonKey(name: 'to_email')
  final String toEmail;
  @override
  final String? note;
  @override
  @JsonKey(name: 'phone_number')
  final String? phoneNumber;
  @override
  @JsonKey(name: 'user_id')
  final int userId;
  @override
  @JsonKey(name: 'from_account')
  final String fromAccount;
  @override
  @JsonKey(name: 'from_name')
  final String fromName;
  @override
  @JsonKey(name: 'to_account')
  final String toAccount;
  @override
  @JsonKey(name: 'to_name')
  final String toName;
  @override
  @JsonKey(name: 'payment_method')
  final String paymentMethod;
  @override
  @JsonKey(name: 'transaction_datetime')
  final String transactionDatetime;
  @override
  @JsonKey(name: 'bill_type')
  final String billType;
  @override
  @JsonKey(name: 'create_bill_status')
  final String createBillStatus;
  @override
  @JsonKey(name: 'split_id')
  final int splitId;
  @override
  @JsonKey(name: 'total_amount_bill')
  final int totalAmountBill;

  @override
  String toString() {
    return 'SplitBillItemModel(title: $title, billNumber: $billNumber, toEmail: $toEmail, note: $note, phoneNumber: $phoneNumber, userId: $userId, fromAccount: $fromAccount, fromName: $fromName, toAccount: $toAccount, toName: $toName, paymentMethod: $paymentMethod, transactionDatetime: $transactionDatetime, billType: $billType, createBillStatus: $createBillStatus, splitId: $splitId, totalAmountBill: $totalAmountBill)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SplitBillItemModelImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.billNumber, billNumber) ||
                other.billNumber == billNumber) &&
            (identical(other.toEmail, toEmail) || other.toEmail == toEmail) &&
            (identical(other.note, note) || other.note == note) &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.fromAccount, fromAccount) ||
                other.fromAccount == fromAccount) &&
            (identical(other.fromName, fromName) ||
                other.fromName == fromName) &&
            (identical(other.toAccount, toAccount) ||
                other.toAccount == toAccount) &&
            (identical(other.toName, toName) || other.toName == toName) &&
            (identical(other.paymentMethod, paymentMethod) ||
                other.paymentMethod == paymentMethod) &&
            (identical(other.transactionDatetime, transactionDatetime) ||
                other.transactionDatetime == transactionDatetime) &&
            (identical(other.billType, billType) ||
                other.billType == billType) &&
            (identical(other.createBillStatus, createBillStatus) ||
                other.createBillStatus == createBillStatus) &&
            (identical(other.splitId, splitId) || other.splitId == splitId) &&
            (identical(other.totalAmountBill, totalAmountBill) ||
                other.totalAmountBill == totalAmountBill));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      title,
      billNumber,
      toEmail,
      note,
      phoneNumber,
      userId,
      fromAccount,
      fromName,
      toAccount,
      toName,
      paymentMethod,
      transactionDatetime,
      billType,
      createBillStatus,
      splitId,
      totalAmountBill);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SplitBillItemModelImplCopyWith<_$SplitBillItemModelImpl> get copyWith =>
      __$$SplitBillItemModelImplCopyWithImpl<_$SplitBillItemModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SplitBillItemModelImplToJson(
      this,
    );
  }
}

abstract class _SplitBillItemModel implements SplitBillItemModel {
  factory _SplitBillItemModel(
      {required final String title,
      @JsonKey(name: 'bill_number') required final String billNumber,
      @JsonKey(name: 'to_email') required final String toEmail,
      final String? note,
      @JsonKey(name: 'phone_number') final String? phoneNumber,
      @JsonKey(name: 'user_id') required final int userId,
      @JsonKey(name: 'from_account') required final String fromAccount,
      @JsonKey(name: 'from_name') required final String fromName,
      @JsonKey(name: 'to_account') required final String toAccount,
      @JsonKey(name: 'to_name') required final String toName,
      @JsonKey(name: 'payment_method') required final String paymentMethod,
      @JsonKey(name: 'transaction_datetime')
      required final String transactionDatetime,
      @JsonKey(name: 'bill_type') required final String billType,
      @JsonKey(name: 'create_bill_status')
      required final String createBillStatus,
      @JsonKey(name: 'split_id') required final int splitId,
      @JsonKey(name: 'total_amount_bill')
      required final int totalAmountBill}) = _$SplitBillItemModelImpl;

  factory _SplitBillItemModel.fromJson(Map<String, dynamic> json) =
      _$SplitBillItemModelImpl.fromJson;

  @override
  String get title;
  @override
  @JsonKey(name: 'bill_number')
  String get billNumber;
  @override
  @JsonKey(name: 'to_email')
  String get toEmail;
  @override
  String? get note;
  @override
  @JsonKey(name: 'phone_number')
  String? get phoneNumber;
  @override
  @JsonKey(name: 'user_id')
  int get userId;
  @override
  @JsonKey(name: 'from_account')
  String get fromAccount;
  @override
  @JsonKey(name: 'from_name')
  String get fromName;
  @override
  @JsonKey(name: 'to_account')
  String get toAccount;
  @override
  @JsonKey(name: 'to_name')
  String get toName;
  @override
  @JsonKey(name: 'payment_method')
  String get paymentMethod;
  @override
  @JsonKey(name: 'transaction_datetime')
  String get transactionDatetime;
  @override
  @JsonKey(name: 'bill_type')
  String get billType;
  @override
  @JsonKey(name: 'create_bill_status')
  String get createBillStatus;
  @override
  @JsonKey(name: 'split_id')
  int get splitId;
  @override
  @JsonKey(name: 'total_amount_bill')
  int get totalAmountBill;
  @override
  @JsonKey(ignore: true)
  _$$SplitBillItemModelImplCopyWith<_$SplitBillItemModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
