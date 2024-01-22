// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'bank_account_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

BankAccountModel _$BankAccountModelFromJson(Map<String, dynamic> json) {
  return _BankAccountModel.fromJson(json);
}

/// @nodoc
mixin _$BankAccountModel {
  @JsonKey(name: "bank_account_id")
  int? get bankAccountId => throw _privateConstructorUsedError;
  @JsonKey(name: "bank_id")
  int? get bankId => throw _privateConstructorUsedError;
  @JsonKey(name: "user_id")
  int? get userId => throw _privateConstructorUsedError;
  @JsonKey(name: "bank_name")
  String? get bankName => throw _privateConstructorUsedError;
  @JsonKey(name: "bank_image")
  String? get bankImage => throw _privateConstructorUsedError;
  @JsonKey(name: "card_number")
  String? get cardNumber => throw _privateConstructorUsedError;
  @JsonKey(name: "account_number")
  String? get accountNumber => throw _privateConstructorUsedError;
  @JsonKey(name: "account_name")
  String? get accountName => throw _privateConstructorUsedError;
  @JsonKey(name: "expired")
  String? get expired => throw _privateConstructorUsedError;
  int? get cvv => throw _privateConstructorUsedError;
  @JsonKey(name: "expired_bbtt")
  String? get expiredBbtt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BankAccountModelCopyWith<BankAccountModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BankAccountModelCopyWith<$Res> {
  factory $BankAccountModelCopyWith(
          BankAccountModel value, $Res Function(BankAccountModel) then) =
      _$BankAccountModelCopyWithImpl<$Res, BankAccountModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "bank_account_id") int? bankAccountId,
      @JsonKey(name: "bank_id") int? bankId,
      @JsonKey(name: "user_id") int? userId,
      @JsonKey(name: "bank_name") String? bankName,
      @JsonKey(name: "bank_image") String? bankImage,
      @JsonKey(name: "card_number") String? cardNumber,
      @JsonKey(name: "account_number") String? accountNumber,
      @JsonKey(name: "account_name") String? accountName,
      @JsonKey(name: "expired") String? expired,
      int? cvv,
      @JsonKey(name: "expired_bbtt") String? expiredBbtt});
}

/// @nodoc
class _$BankAccountModelCopyWithImpl<$Res, $Val extends BankAccountModel>
    implements $BankAccountModelCopyWith<$Res> {
  _$BankAccountModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bankAccountId = freezed,
    Object? bankId = freezed,
    Object? userId = freezed,
    Object? bankName = freezed,
    Object? bankImage = freezed,
    Object? cardNumber = freezed,
    Object? accountNumber = freezed,
    Object? accountName = freezed,
    Object? expired = freezed,
    Object? cvv = freezed,
    Object? expiredBbtt = freezed,
  }) {
    return _then(_value.copyWith(
      bankAccountId: freezed == bankAccountId
          ? _value.bankAccountId
          : bankAccountId // ignore: cast_nullable_to_non_nullable
              as int?,
      bankId: freezed == bankId
          ? _value.bankId
          : bankId // ignore: cast_nullable_to_non_nullable
              as int?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int?,
      bankName: freezed == bankName
          ? _value.bankName
          : bankName // ignore: cast_nullable_to_non_nullable
              as String?,
      bankImage: freezed == bankImage
          ? _value.bankImage
          : bankImage // ignore: cast_nullable_to_non_nullable
              as String?,
      cardNumber: freezed == cardNumber
          ? _value.cardNumber
          : cardNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      accountNumber: freezed == accountNumber
          ? _value.accountNumber
          : accountNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      accountName: freezed == accountName
          ? _value.accountName
          : accountName // ignore: cast_nullable_to_non_nullable
              as String?,
      expired: freezed == expired
          ? _value.expired
          : expired // ignore: cast_nullable_to_non_nullable
              as String?,
      cvv: freezed == cvv
          ? _value.cvv
          : cvv // ignore: cast_nullable_to_non_nullable
              as int?,
      expiredBbtt: freezed == expiredBbtt
          ? _value.expiredBbtt
          : expiredBbtt // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BankAccountModelImplCopyWith<$Res>
    implements $BankAccountModelCopyWith<$Res> {
  factory _$$BankAccountModelImplCopyWith(_$BankAccountModelImpl value,
          $Res Function(_$BankAccountModelImpl) then) =
      __$$BankAccountModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "bank_account_id") int? bankAccountId,
      @JsonKey(name: "bank_id") int? bankId,
      @JsonKey(name: "user_id") int? userId,
      @JsonKey(name: "bank_name") String? bankName,
      @JsonKey(name: "bank_image") String? bankImage,
      @JsonKey(name: "card_number") String? cardNumber,
      @JsonKey(name: "account_number") String? accountNumber,
      @JsonKey(name: "account_name") String? accountName,
      @JsonKey(name: "expired") String? expired,
      int? cvv,
      @JsonKey(name: "expired_bbtt") String? expiredBbtt});
}

/// @nodoc
class __$$BankAccountModelImplCopyWithImpl<$Res>
    extends _$BankAccountModelCopyWithImpl<$Res, _$BankAccountModelImpl>
    implements _$$BankAccountModelImplCopyWith<$Res> {
  __$$BankAccountModelImplCopyWithImpl(_$BankAccountModelImpl _value,
      $Res Function(_$BankAccountModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bankAccountId = freezed,
    Object? bankId = freezed,
    Object? userId = freezed,
    Object? bankName = freezed,
    Object? bankImage = freezed,
    Object? cardNumber = freezed,
    Object? accountNumber = freezed,
    Object? accountName = freezed,
    Object? expired = freezed,
    Object? cvv = freezed,
    Object? expiredBbtt = freezed,
  }) {
    return _then(_$BankAccountModelImpl(
      bankAccountId: freezed == bankAccountId
          ? _value.bankAccountId
          : bankAccountId // ignore: cast_nullable_to_non_nullable
              as int?,
      bankId: freezed == bankId
          ? _value.bankId
          : bankId // ignore: cast_nullable_to_non_nullable
              as int?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int?,
      bankName: freezed == bankName
          ? _value.bankName
          : bankName // ignore: cast_nullable_to_non_nullable
              as String?,
      bankImage: freezed == bankImage
          ? _value.bankImage
          : bankImage // ignore: cast_nullable_to_non_nullable
              as String?,
      cardNumber: freezed == cardNumber
          ? _value.cardNumber
          : cardNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      accountNumber: freezed == accountNumber
          ? _value.accountNumber
          : accountNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      accountName: freezed == accountName
          ? _value.accountName
          : accountName // ignore: cast_nullable_to_non_nullable
              as String?,
      expired: freezed == expired
          ? _value.expired
          : expired // ignore: cast_nullable_to_non_nullable
              as String?,
      cvv: freezed == cvv
          ? _value.cvv
          : cvv // ignore: cast_nullable_to_non_nullable
              as int?,
      expiredBbtt: freezed == expiredBbtt
          ? _value.expiredBbtt
          : expiredBbtt // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BankAccountModelImpl implements _BankAccountModel {
  _$BankAccountModelImpl(
      {@JsonKey(name: "bank_account_id") this.bankAccountId,
      @JsonKey(name: "bank_id") this.bankId,
      @JsonKey(name: "user_id") this.userId,
      @JsonKey(name: "bank_name") this.bankName,
      @JsonKey(name: "bank_image") this.bankImage,
      @JsonKey(name: "card_number") this.cardNumber,
      @JsonKey(name: "account_number") this.accountNumber,
      @JsonKey(name: "account_name") this.accountName,
      @JsonKey(name: "expired") this.expired,
      this.cvv,
      @JsonKey(name: "expired_bbtt") this.expiredBbtt});

  factory _$BankAccountModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$BankAccountModelImplFromJson(json);

  @override
  @JsonKey(name: "bank_account_id")
  final int? bankAccountId;
  @override
  @JsonKey(name: "bank_id")
  final int? bankId;
  @override
  @JsonKey(name: "user_id")
  final int? userId;
  @override
  @JsonKey(name: "bank_name")
  final String? bankName;
  @override
  @JsonKey(name: "bank_image")
  final String? bankImage;
  @override
  @JsonKey(name: "card_number")
  final String? cardNumber;
  @override
  @JsonKey(name: "account_number")
  final String? accountNumber;
  @override
  @JsonKey(name: "account_name")
  final String? accountName;
  @override
  @JsonKey(name: "expired")
  final String? expired;
  @override
  final int? cvv;
  @override
  @JsonKey(name: "expired_bbtt")
  final String? expiredBbtt;

  @override
  String toString() {
    return 'BankAccountModel(bankAccountId: $bankAccountId, bankId: $bankId, userId: $userId, bankName: $bankName, bankImage: $bankImage, cardNumber: $cardNumber, accountNumber: $accountNumber, accountName: $accountName, expired: $expired, cvv: $cvv, expiredBbtt: $expiredBbtt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BankAccountModelImpl &&
            (identical(other.bankAccountId, bankAccountId) ||
                other.bankAccountId == bankAccountId) &&
            (identical(other.bankId, bankId) || other.bankId == bankId) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.bankName, bankName) ||
                other.bankName == bankName) &&
            (identical(other.bankImage, bankImage) ||
                other.bankImage == bankImage) &&
            (identical(other.cardNumber, cardNumber) ||
                other.cardNumber == cardNumber) &&
            (identical(other.accountNumber, accountNumber) ||
                other.accountNumber == accountNumber) &&
            (identical(other.accountName, accountName) ||
                other.accountName == accountName) &&
            (identical(other.expired, expired) || other.expired == expired) &&
            (identical(other.cvv, cvv) || other.cvv == cvv) &&
            (identical(other.expiredBbtt, expiredBbtt) ||
                other.expiredBbtt == expiredBbtt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      bankAccountId,
      bankId,
      userId,
      bankName,
      bankImage,
      cardNumber,
      accountNumber,
      accountName,
      expired,
      cvv,
      expiredBbtt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BankAccountModelImplCopyWith<_$BankAccountModelImpl> get copyWith =>
      __$$BankAccountModelImplCopyWithImpl<_$BankAccountModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BankAccountModelImplToJson(
      this,
    );
  }
}

abstract class _BankAccountModel implements BankAccountModel {
  factory _BankAccountModel(
          {@JsonKey(name: "bank_account_id") final int? bankAccountId,
          @JsonKey(name: "bank_id") final int? bankId,
          @JsonKey(name: "user_id") final int? userId,
          @JsonKey(name: "bank_name") final String? bankName,
          @JsonKey(name: "bank_image") final String? bankImage,
          @JsonKey(name: "card_number") final String? cardNumber,
          @JsonKey(name: "account_number") final String? accountNumber,
          @JsonKey(name: "account_name") final String? accountName,
          @JsonKey(name: "expired") final String? expired,
          final int? cvv,
          @JsonKey(name: "expired_bbtt") final String? expiredBbtt}) =
      _$BankAccountModelImpl;

  factory _BankAccountModel.fromJson(Map<String, dynamic> json) =
      _$BankAccountModelImpl.fromJson;

  @override
  @JsonKey(name: "bank_account_id")
  int? get bankAccountId;
  @override
  @JsonKey(name: "bank_id")
  int? get bankId;
  @override
  @JsonKey(name: "user_id")
  int? get userId;
  @override
  @JsonKey(name: "bank_name")
  String? get bankName;
  @override
  @JsonKey(name: "bank_image")
  String? get bankImage;
  @override
  @JsonKey(name: "card_number")
  String? get cardNumber;
  @override
  @JsonKey(name: "account_number")
  String? get accountNumber;
  @override
  @JsonKey(name: "account_name")
  String? get accountName;
  @override
  @JsonKey(name: "expired")
  String? get expired;
  @override
  int? get cvv;
  @override
  @JsonKey(name: "expired_bbtt")
  String? get expiredBbtt;
  @override
  @JsonKey(ignore: true)
  _$$BankAccountModelImplCopyWith<_$BankAccountModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
