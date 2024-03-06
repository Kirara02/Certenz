// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'bill_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

BillModel _$BillModelFromJson(Map<String, dynamic> json) {
  return _BillModel.fromJson(json);
}

/// @nodoc
mixin _$BillModel {
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: "bill_number")
  String get billNumber => throw _privateConstructorUsedError;
  @JsonKey(name: "user_id")
  int get userId => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  @JsonKey(name: "total_amount_bill")
  double get totalAmountBill => throw _privateConstructorUsedError;
  @JsonKey(name: "transaction_datetime")
  String get transactionDatetime => throw _privateConstructorUsedError;
  @JsonKey(name: "to_email")
  String? get toEmail => throw _privateConstructorUsedError;
  @JsonKey(name: "to_name")
  String? get toName => throw _privateConstructorUsedError;
  @JsonKey(name: "to_account")
  String? get toAccount => throw _privateConstructorUsedError;
  @JsonKey(name: "from_account")
  String get fromAccount => throw _privateConstructorUsedError;
  @JsonKey(name: "from_name")
  String get fromName => throw _privateConstructorUsedError;
  @JsonKey(name: "payment_method")
  String? get paymentMethod => throw _privateConstructorUsedError;
  @JsonKey(name: "bill_type")
  String get billType => throw _privateConstructorUsedError;
  @JsonKey(name: "phone_number")
  String? get phoneNumber => throw _privateConstructorUsedError;
  String? get note => throw _privateConstructorUsedError;
  @JsonKey(name: "qr_code")
  String? get qrCode => throw _privateConstructorUsedError;
  @JsonKey(name: "split_id")
  int? get splitId => throw _privateConstructorUsedError;
  @JsonKey(name: 'tenant_period')
  String? get tenantPeriod => throw _privateConstructorUsedError;
  @JsonKey(name: 'paid_on_date')
  String? get paidOnDate => throw _privateConstructorUsedError;
  @JsonKey(name: 'paid_on_time')
  String? get paidOnTime => throw _privateConstructorUsedError;
  @JsonKey(name: 'status')
  String? get status => throw _privateConstructorUsedError;
  @JsonKey(name: "created_at")
  String? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: "updated_at")
  String? get updatedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BillModelCopyWith<BillModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BillModelCopyWith<$Res> {
  factory $BillModelCopyWith(BillModel value, $Res Function(BillModel) then) =
      _$BillModelCopyWithImpl<$Res, BillModel>;
  @useResult
  $Res call(
      {int? id,
      @JsonKey(name: "bill_number") String billNumber,
      @JsonKey(name: "user_id") int userId,
      String title,
      @JsonKey(name: "total_amount_bill") double totalAmountBill,
      @JsonKey(name: "transaction_datetime") String transactionDatetime,
      @JsonKey(name: "to_email") String? toEmail,
      @JsonKey(name: "to_name") String? toName,
      @JsonKey(name: "to_account") String? toAccount,
      @JsonKey(name: "from_account") String fromAccount,
      @JsonKey(name: "from_name") String fromName,
      @JsonKey(name: "payment_method") String? paymentMethod,
      @JsonKey(name: "bill_type") String billType,
      @JsonKey(name: "phone_number") String? phoneNumber,
      String? note,
      @JsonKey(name: "qr_code") String? qrCode,
      @JsonKey(name: "split_id") int? splitId,
      @JsonKey(name: 'tenant_period') String? tenantPeriod,
      @JsonKey(name: 'paid_on_date') String? paidOnDate,
      @JsonKey(name: 'paid_on_time') String? paidOnTime,
      @JsonKey(name: 'status') String? status,
      @JsonKey(name: "created_at") String? createdAt,
      @JsonKey(name: "updated_at") String? updatedAt});
}

/// @nodoc
class _$BillModelCopyWithImpl<$Res, $Val extends BillModel>
    implements $BillModelCopyWith<$Res> {
  _$BillModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? billNumber = null,
    Object? userId = null,
    Object? title = null,
    Object? totalAmountBill = null,
    Object? transactionDatetime = null,
    Object? toEmail = freezed,
    Object? toName = freezed,
    Object? toAccount = freezed,
    Object? fromAccount = null,
    Object? fromName = null,
    Object? paymentMethod = freezed,
    Object? billType = null,
    Object? phoneNumber = freezed,
    Object? note = freezed,
    Object? qrCode = freezed,
    Object? splitId = freezed,
    Object? tenantPeriod = freezed,
    Object? paidOnDate = freezed,
    Object? paidOnTime = freezed,
    Object? status = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      billNumber: null == billNumber
          ? _value.billNumber
          : billNumber // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      totalAmountBill: null == totalAmountBill
          ? _value.totalAmountBill
          : totalAmountBill // ignore: cast_nullable_to_non_nullable
              as double,
      transactionDatetime: null == transactionDatetime
          ? _value.transactionDatetime
          : transactionDatetime // ignore: cast_nullable_to_non_nullable
              as String,
      toEmail: freezed == toEmail
          ? _value.toEmail
          : toEmail // ignore: cast_nullable_to_non_nullable
              as String?,
      toName: freezed == toName
          ? _value.toName
          : toName // ignore: cast_nullable_to_non_nullable
              as String?,
      toAccount: freezed == toAccount
          ? _value.toAccount
          : toAccount // ignore: cast_nullable_to_non_nullable
              as String?,
      fromAccount: null == fromAccount
          ? _value.fromAccount
          : fromAccount // ignore: cast_nullable_to_non_nullable
              as String,
      fromName: null == fromName
          ? _value.fromName
          : fromName // ignore: cast_nullable_to_non_nullable
              as String,
      paymentMethod: freezed == paymentMethod
          ? _value.paymentMethod
          : paymentMethod // ignore: cast_nullable_to_non_nullable
              as String?,
      billType: null == billType
          ? _value.billType
          : billType // ignore: cast_nullable_to_non_nullable
              as String,
      phoneNumber: freezed == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      note: freezed == note
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as String?,
      qrCode: freezed == qrCode
          ? _value.qrCode
          : qrCode // ignore: cast_nullable_to_non_nullable
              as String?,
      splitId: freezed == splitId
          ? _value.splitId
          : splitId // ignore: cast_nullable_to_non_nullable
              as int?,
      tenantPeriod: freezed == tenantPeriod
          ? _value.tenantPeriod
          : tenantPeriod // ignore: cast_nullable_to_non_nullable
              as String?,
      paidOnDate: freezed == paidOnDate
          ? _value.paidOnDate
          : paidOnDate // ignore: cast_nullable_to_non_nullable
              as String?,
      paidOnTime: freezed == paidOnTime
          ? _value.paidOnTime
          : paidOnTime // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BillModelImplCopyWith<$Res>
    implements $BillModelCopyWith<$Res> {
  factory _$$BillModelImplCopyWith(
          _$BillModelImpl value, $Res Function(_$BillModelImpl) then) =
      __$$BillModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      @JsonKey(name: "bill_number") String billNumber,
      @JsonKey(name: "user_id") int userId,
      String title,
      @JsonKey(name: "total_amount_bill") double totalAmountBill,
      @JsonKey(name: "transaction_datetime") String transactionDatetime,
      @JsonKey(name: "to_email") String? toEmail,
      @JsonKey(name: "to_name") String? toName,
      @JsonKey(name: "to_account") String? toAccount,
      @JsonKey(name: "from_account") String fromAccount,
      @JsonKey(name: "from_name") String fromName,
      @JsonKey(name: "payment_method") String? paymentMethod,
      @JsonKey(name: "bill_type") String billType,
      @JsonKey(name: "phone_number") String? phoneNumber,
      String? note,
      @JsonKey(name: "qr_code") String? qrCode,
      @JsonKey(name: "split_id") int? splitId,
      @JsonKey(name: 'tenant_period') String? tenantPeriod,
      @JsonKey(name: 'paid_on_date') String? paidOnDate,
      @JsonKey(name: 'paid_on_time') String? paidOnTime,
      @JsonKey(name: 'status') String? status,
      @JsonKey(name: "created_at") String? createdAt,
      @JsonKey(name: "updated_at") String? updatedAt});
}

/// @nodoc
class __$$BillModelImplCopyWithImpl<$Res>
    extends _$BillModelCopyWithImpl<$Res, _$BillModelImpl>
    implements _$$BillModelImplCopyWith<$Res> {
  __$$BillModelImplCopyWithImpl(
      _$BillModelImpl _value, $Res Function(_$BillModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? billNumber = null,
    Object? userId = null,
    Object? title = null,
    Object? totalAmountBill = null,
    Object? transactionDatetime = null,
    Object? toEmail = freezed,
    Object? toName = freezed,
    Object? toAccount = freezed,
    Object? fromAccount = null,
    Object? fromName = null,
    Object? paymentMethod = freezed,
    Object? billType = null,
    Object? phoneNumber = freezed,
    Object? note = freezed,
    Object? qrCode = freezed,
    Object? splitId = freezed,
    Object? tenantPeriod = freezed,
    Object? paidOnDate = freezed,
    Object? paidOnTime = freezed,
    Object? status = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_$BillModelImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      billNumber: null == billNumber
          ? _value.billNumber
          : billNumber // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      totalAmountBill: null == totalAmountBill
          ? _value.totalAmountBill
          : totalAmountBill // ignore: cast_nullable_to_non_nullable
              as double,
      transactionDatetime: null == transactionDatetime
          ? _value.transactionDatetime
          : transactionDatetime // ignore: cast_nullable_to_non_nullable
              as String,
      toEmail: freezed == toEmail
          ? _value.toEmail
          : toEmail // ignore: cast_nullable_to_non_nullable
              as String?,
      toName: freezed == toName
          ? _value.toName
          : toName // ignore: cast_nullable_to_non_nullable
              as String?,
      toAccount: freezed == toAccount
          ? _value.toAccount
          : toAccount // ignore: cast_nullable_to_non_nullable
              as String?,
      fromAccount: null == fromAccount
          ? _value.fromAccount
          : fromAccount // ignore: cast_nullable_to_non_nullable
              as String,
      fromName: null == fromName
          ? _value.fromName
          : fromName // ignore: cast_nullable_to_non_nullable
              as String,
      paymentMethod: freezed == paymentMethod
          ? _value.paymentMethod
          : paymentMethod // ignore: cast_nullable_to_non_nullable
              as String?,
      billType: null == billType
          ? _value.billType
          : billType // ignore: cast_nullable_to_non_nullable
              as String,
      phoneNumber: freezed == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      note: freezed == note
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as String?,
      qrCode: freezed == qrCode
          ? _value.qrCode
          : qrCode // ignore: cast_nullable_to_non_nullable
              as String?,
      splitId: freezed == splitId
          ? _value.splitId
          : splitId // ignore: cast_nullable_to_non_nullable
              as int?,
      tenantPeriod: freezed == tenantPeriod
          ? _value.tenantPeriod
          : tenantPeriod // ignore: cast_nullable_to_non_nullable
              as String?,
      paidOnDate: freezed == paidOnDate
          ? _value.paidOnDate
          : paidOnDate // ignore: cast_nullable_to_non_nullable
              as String?,
      paidOnTime: freezed == paidOnTime
          ? _value.paidOnTime
          : paidOnTime // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BillModelImpl implements _BillModel {
  _$BillModelImpl(
      {this.id,
      @JsonKey(name: "bill_number") required this.billNumber,
      @JsonKey(name: "user_id") required this.userId,
      required this.title,
      @JsonKey(name: "total_amount_bill") required this.totalAmountBill,
      @JsonKey(name: "transaction_datetime") required this.transactionDatetime,
      @JsonKey(name: "to_email") this.toEmail,
      @JsonKey(name: "to_name") this.toName,
      @JsonKey(name: "to_account") this.toAccount,
      @JsonKey(name: "from_account") required this.fromAccount,
      @JsonKey(name: "from_name") required this.fromName,
      @JsonKey(name: "payment_method") this.paymentMethod,
      @JsonKey(name: "bill_type") required this.billType,
      @JsonKey(name: "phone_number") this.phoneNumber,
      this.note,
      @JsonKey(name: "qr_code") this.qrCode,
      @JsonKey(name: "split_id") this.splitId,
      @JsonKey(name: 'tenant_period') this.tenantPeriod,
      @JsonKey(name: 'paid_on_date') this.paidOnDate,
      @JsonKey(name: 'paid_on_time') this.paidOnTime,
      @JsonKey(name: 'status') this.status,
      @JsonKey(name: "created_at") this.createdAt,
      @JsonKey(name: "updated_at") this.updatedAt});

  factory _$BillModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$BillModelImplFromJson(json);

  @override
  final int? id;
  @override
  @JsonKey(name: "bill_number")
  final String billNumber;
  @override
  @JsonKey(name: "user_id")
  final int userId;
  @override
  final String title;
  @override
  @JsonKey(name: "total_amount_bill")
  final double totalAmountBill;
  @override
  @JsonKey(name: "transaction_datetime")
  final String transactionDatetime;
  @override
  @JsonKey(name: "to_email")
  final String? toEmail;
  @override
  @JsonKey(name: "to_name")
  final String? toName;
  @override
  @JsonKey(name: "to_account")
  final String? toAccount;
  @override
  @JsonKey(name: "from_account")
  final String fromAccount;
  @override
  @JsonKey(name: "from_name")
  final String fromName;
  @override
  @JsonKey(name: "payment_method")
  final String? paymentMethod;
  @override
  @JsonKey(name: "bill_type")
  final String billType;
  @override
  @JsonKey(name: "phone_number")
  final String? phoneNumber;
  @override
  final String? note;
  @override
  @JsonKey(name: "qr_code")
  final String? qrCode;
  @override
  @JsonKey(name: "split_id")
  final int? splitId;
  @override
  @JsonKey(name: 'tenant_period')
  final String? tenantPeriod;
  @override
  @JsonKey(name: 'paid_on_date')
  final String? paidOnDate;
  @override
  @JsonKey(name: 'paid_on_time')
  final String? paidOnTime;
  @override
  @JsonKey(name: 'status')
  final String? status;
  @override
  @JsonKey(name: "created_at")
  final String? createdAt;
  @override
  @JsonKey(name: "updated_at")
  final String? updatedAt;

  @override
  String toString() {
    return 'BillModel(id: $id, billNumber: $billNumber, userId: $userId, title: $title, totalAmountBill: $totalAmountBill, transactionDatetime: $transactionDatetime, toEmail: $toEmail, toName: $toName, toAccount: $toAccount, fromAccount: $fromAccount, fromName: $fromName, paymentMethod: $paymentMethod, billType: $billType, phoneNumber: $phoneNumber, note: $note, qrCode: $qrCode, splitId: $splitId, tenantPeriod: $tenantPeriod, paidOnDate: $paidOnDate, paidOnTime: $paidOnTime, status: $status, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BillModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.billNumber, billNumber) ||
                other.billNumber == billNumber) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.totalAmountBill, totalAmountBill) ||
                other.totalAmountBill == totalAmountBill) &&
            (identical(other.transactionDatetime, transactionDatetime) ||
                other.transactionDatetime == transactionDatetime) &&
            (identical(other.toEmail, toEmail) || other.toEmail == toEmail) &&
            (identical(other.toName, toName) || other.toName == toName) &&
            (identical(other.toAccount, toAccount) ||
                other.toAccount == toAccount) &&
            (identical(other.fromAccount, fromAccount) ||
                other.fromAccount == fromAccount) &&
            (identical(other.fromName, fromName) ||
                other.fromName == fromName) &&
            (identical(other.paymentMethod, paymentMethod) ||
                other.paymentMethod == paymentMethod) &&
            (identical(other.billType, billType) ||
                other.billType == billType) &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber) &&
            (identical(other.note, note) || other.note == note) &&
            (identical(other.qrCode, qrCode) || other.qrCode == qrCode) &&
            (identical(other.splitId, splitId) || other.splitId == splitId) &&
            (identical(other.tenantPeriod, tenantPeriod) ||
                other.tenantPeriod == tenantPeriod) &&
            (identical(other.paidOnDate, paidOnDate) ||
                other.paidOnDate == paidOnDate) &&
            (identical(other.paidOnTime, paidOnTime) ||
                other.paidOnTime == paidOnTime) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        billNumber,
        userId,
        title,
        totalAmountBill,
        transactionDatetime,
        toEmail,
        toName,
        toAccount,
        fromAccount,
        fromName,
        paymentMethod,
        billType,
        phoneNumber,
        note,
        qrCode,
        splitId,
        tenantPeriod,
        paidOnDate,
        paidOnTime,
        status,
        createdAt,
        updatedAt
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BillModelImplCopyWith<_$BillModelImpl> get copyWith =>
      __$$BillModelImplCopyWithImpl<_$BillModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BillModelImplToJson(
      this,
    );
  }
}

abstract class _BillModel implements BillModel {
  factory _BillModel(
      {final int? id,
      @JsonKey(name: "bill_number") required final String billNumber,
      @JsonKey(name: "user_id") required final int userId,
      required final String title,
      @JsonKey(name: "total_amount_bill") required final double totalAmountBill,
      @JsonKey(name: "transaction_datetime")
      required final String transactionDatetime,
      @JsonKey(name: "to_email") final String? toEmail,
      @JsonKey(name: "to_name") final String? toName,
      @JsonKey(name: "to_account") final String? toAccount,
      @JsonKey(name: "from_account") required final String fromAccount,
      @JsonKey(name: "from_name") required final String fromName,
      @JsonKey(name: "payment_method") final String? paymentMethod,
      @JsonKey(name: "bill_type") required final String billType,
      @JsonKey(name: "phone_number") final String? phoneNumber,
      final String? note,
      @JsonKey(name: "qr_code") final String? qrCode,
      @JsonKey(name: "split_id") final int? splitId,
      @JsonKey(name: 'tenant_period') final String? tenantPeriod,
      @JsonKey(name: 'paid_on_date') final String? paidOnDate,
      @JsonKey(name: 'paid_on_time') final String? paidOnTime,
      @JsonKey(name: 'status') final String? status,
      @JsonKey(name: "created_at") final String? createdAt,
      @JsonKey(name: "updated_at") final String? updatedAt}) = _$BillModelImpl;

  factory _BillModel.fromJson(Map<String, dynamic> json) =
      _$BillModelImpl.fromJson;

  @override
  int? get id;
  @override
  @JsonKey(name: "bill_number")
  String get billNumber;
  @override
  @JsonKey(name: "user_id")
  int get userId;
  @override
  String get title;
  @override
  @JsonKey(name: "total_amount_bill")
  double get totalAmountBill;
  @override
  @JsonKey(name: "transaction_datetime")
  String get transactionDatetime;
  @override
  @JsonKey(name: "to_email")
  String? get toEmail;
  @override
  @JsonKey(name: "to_name")
  String? get toName;
  @override
  @JsonKey(name: "to_account")
  String? get toAccount;
  @override
  @JsonKey(name: "from_account")
  String get fromAccount;
  @override
  @JsonKey(name: "from_name")
  String get fromName;
  @override
  @JsonKey(name: "payment_method")
  String? get paymentMethod;
  @override
  @JsonKey(name: "bill_type")
  String get billType;
  @override
  @JsonKey(name: "phone_number")
  String? get phoneNumber;
  @override
  String? get note;
  @override
  @JsonKey(name: "qr_code")
  String? get qrCode;
  @override
  @JsonKey(name: "split_id")
  int? get splitId;
  @override
  @JsonKey(name: 'tenant_period')
  String? get tenantPeriod;
  @override
  @JsonKey(name: 'paid_on_date')
  String? get paidOnDate;
  @override
  @JsonKey(name: 'paid_on_time')
  String? get paidOnTime;
  @override
  @JsonKey(name: 'status')
  String? get status;
  @override
  @JsonKey(name: "created_at")
  String? get createdAt;
  @override
  @JsonKey(name: "updated_at")
  String? get updatedAt;
  @override
  @JsonKey(ignore: true)
  _$$BillModelImplCopyWith<_$BillModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
