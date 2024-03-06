// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'payment_bank_va_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PaymentBankVaModel _$PaymentBankVaModelFromJson(Map<String, dynamic> json) {
  return _PaymentBankVaModel.fromJson(json);
}

/// @nodoc
mixin _$PaymentBankVaModel {
  @JsonKey(name: "va_code")
  String get vaCode => throw _privateConstructorUsedError;
  @JsonKey(name: "partner_reff")
  String? get partnerReff => throw _privateConstructorUsedError;
  @JsonKey(name: "partner_reff2")
  String get partnerReff2 => throw _privateConstructorUsedError;
  @JsonKey(name: "amount")
  int get amount => throw _privateConstructorUsedError;
  @JsonKey(name: "created")
  String get created => throw _privateConstructorUsedError;
  @JsonKey(name: "expired")
  String get expired => throw _privateConstructorUsedError;
  @JsonKey(name: "bank_name")
  String get bankName => throw _privateConstructorUsedError;
  @JsonKey(name: "bank_image")
  String get bankImage => throw _privateConstructorUsedError;
  @JsonKey(name: "customer_name")
  String? get customerName => throw _privateConstructorUsedError;
  @JsonKey(name: "customer_email")
  String? get customerEmail => throw _privateConstructorUsedError;
  @JsonKey(name: "note")
  String? get note => throw _privateConstructorUsedError;
  @JsonKey(name: "url_callback")
  String get urlCallback => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PaymentBankVaModelCopyWith<PaymentBankVaModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaymentBankVaModelCopyWith<$Res> {
  factory $PaymentBankVaModelCopyWith(
          PaymentBankVaModel value, $Res Function(PaymentBankVaModel) then) =
      _$PaymentBankVaModelCopyWithImpl<$Res, PaymentBankVaModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "va_code") String vaCode,
      @JsonKey(name: "partner_reff") String? partnerReff,
      @JsonKey(name: "partner_reff2") String partnerReff2,
      @JsonKey(name: "amount") int amount,
      @JsonKey(name: "created") String created,
      @JsonKey(name: "expired") String expired,
      @JsonKey(name: "bank_name") String bankName,
      @JsonKey(name: "bank_image") String bankImage,
      @JsonKey(name: "customer_name") String? customerName,
      @JsonKey(name: "customer_email") String? customerEmail,
      @JsonKey(name: "note") String? note,
      @JsonKey(name: "url_callback") String urlCallback});
}

/// @nodoc
class _$PaymentBankVaModelCopyWithImpl<$Res, $Val extends PaymentBankVaModel>
    implements $PaymentBankVaModelCopyWith<$Res> {
  _$PaymentBankVaModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? vaCode = null,
    Object? partnerReff = freezed,
    Object? partnerReff2 = null,
    Object? amount = null,
    Object? created = null,
    Object? expired = null,
    Object? bankName = null,
    Object? bankImage = null,
    Object? customerName = freezed,
    Object? customerEmail = freezed,
    Object? note = freezed,
    Object? urlCallback = null,
  }) {
    return _then(_value.copyWith(
      vaCode: null == vaCode
          ? _value.vaCode
          : vaCode // ignore: cast_nullable_to_non_nullable
              as String,
      partnerReff: freezed == partnerReff
          ? _value.partnerReff
          : partnerReff // ignore: cast_nullable_to_non_nullable
              as String?,
      partnerReff2: null == partnerReff2
          ? _value.partnerReff2
          : partnerReff2 // ignore: cast_nullable_to_non_nullable
              as String,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as int,
      created: null == created
          ? _value.created
          : created // ignore: cast_nullable_to_non_nullable
              as String,
      expired: null == expired
          ? _value.expired
          : expired // ignore: cast_nullable_to_non_nullable
              as String,
      bankName: null == bankName
          ? _value.bankName
          : bankName // ignore: cast_nullable_to_non_nullable
              as String,
      bankImage: null == bankImage
          ? _value.bankImage
          : bankImage // ignore: cast_nullable_to_non_nullable
              as String,
      customerName: freezed == customerName
          ? _value.customerName
          : customerName // ignore: cast_nullable_to_non_nullable
              as String?,
      customerEmail: freezed == customerEmail
          ? _value.customerEmail
          : customerEmail // ignore: cast_nullable_to_non_nullable
              as String?,
      note: freezed == note
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as String?,
      urlCallback: null == urlCallback
          ? _value.urlCallback
          : urlCallback // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PaymentBankVaModelImplCopyWith<$Res>
    implements $PaymentBankVaModelCopyWith<$Res> {
  factory _$$PaymentBankVaModelImplCopyWith(_$PaymentBankVaModelImpl value,
          $Res Function(_$PaymentBankVaModelImpl) then) =
      __$$PaymentBankVaModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "va_code") String vaCode,
      @JsonKey(name: "partner_reff") String? partnerReff,
      @JsonKey(name: "partner_reff2") String partnerReff2,
      @JsonKey(name: "amount") int amount,
      @JsonKey(name: "created") String created,
      @JsonKey(name: "expired") String expired,
      @JsonKey(name: "bank_name") String bankName,
      @JsonKey(name: "bank_image") String bankImage,
      @JsonKey(name: "customer_name") String? customerName,
      @JsonKey(name: "customer_email") String? customerEmail,
      @JsonKey(name: "note") String? note,
      @JsonKey(name: "url_callback") String urlCallback});
}

/// @nodoc
class __$$PaymentBankVaModelImplCopyWithImpl<$Res>
    extends _$PaymentBankVaModelCopyWithImpl<$Res, _$PaymentBankVaModelImpl>
    implements _$$PaymentBankVaModelImplCopyWith<$Res> {
  __$$PaymentBankVaModelImplCopyWithImpl(_$PaymentBankVaModelImpl _value,
      $Res Function(_$PaymentBankVaModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? vaCode = null,
    Object? partnerReff = freezed,
    Object? partnerReff2 = null,
    Object? amount = null,
    Object? created = null,
    Object? expired = null,
    Object? bankName = null,
    Object? bankImage = null,
    Object? customerName = freezed,
    Object? customerEmail = freezed,
    Object? note = freezed,
    Object? urlCallback = null,
  }) {
    return _then(_$PaymentBankVaModelImpl(
      vaCode: null == vaCode
          ? _value.vaCode
          : vaCode // ignore: cast_nullable_to_non_nullable
              as String,
      partnerReff: freezed == partnerReff
          ? _value.partnerReff
          : partnerReff // ignore: cast_nullable_to_non_nullable
              as String?,
      partnerReff2: null == partnerReff2
          ? _value.partnerReff2
          : partnerReff2 // ignore: cast_nullable_to_non_nullable
              as String,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as int,
      created: null == created
          ? _value.created
          : created // ignore: cast_nullable_to_non_nullable
              as String,
      expired: null == expired
          ? _value.expired
          : expired // ignore: cast_nullable_to_non_nullable
              as String,
      bankName: null == bankName
          ? _value.bankName
          : bankName // ignore: cast_nullable_to_non_nullable
              as String,
      bankImage: null == bankImage
          ? _value.bankImage
          : bankImage // ignore: cast_nullable_to_non_nullable
              as String,
      customerName: freezed == customerName
          ? _value.customerName
          : customerName // ignore: cast_nullable_to_non_nullable
              as String?,
      customerEmail: freezed == customerEmail
          ? _value.customerEmail
          : customerEmail // ignore: cast_nullable_to_non_nullable
              as String?,
      note: freezed == note
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as String?,
      urlCallback: null == urlCallback
          ? _value.urlCallback
          : urlCallback // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PaymentBankVaModelImpl implements _PaymentBankVaModel {
  const _$PaymentBankVaModelImpl(
      {@JsonKey(name: "va_code") required this.vaCode,
      @JsonKey(name: "partner_reff") required this.partnerReff,
      @JsonKey(name: "partner_reff2") required this.partnerReff2,
      @JsonKey(name: "amount") required this.amount,
      @JsonKey(name: "created") required this.created,
      @JsonKey(name: "expired") required this.expired,
      @JsonKey(name: "bank_name") required this.bankName,
      @JsonKey(name: "bank_image") required this.bankImage,
      @JsonKey(name: "customer_name") this.customerName,
      @JsonKey(name: "customer_email") this.customerEmail,
      @JsonKey(name: "note") this.note,
      @JsonKey(name: "url_callback") required this.urlCallback});

  factory _$PaymentBankVaModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$PaymentBankVaModelImplFromJson(json);

  @override
  @JsonKey(name: "va_code")
  final String vaCode;
  @override
  @JsonKey(name: "partner_reff")
  final String? partnerReff;
  @override
  @JsonKey(name: "partner_reff2")
  final String partnerReff2;
  @override
  @JsonKey(name: "amount")
  final int amount;
  @override
  @JsonKey(name: "created")
  final String created;
  @override
  @JsonKey(name: "expired")
  final String expired;
  @override
  @JsonKey(name: "bank_name")
  final String bankName;
  @override
  @JsonKey(name: "bank_image")
  final String bankImage;
  @override
  @JsonKey(name: "customer_name")
  final String? customerName;
  @override
  @JsonKey(name: "customer_email")
  final String? customerEmail;
  @override
  @JsonKey(name: "note")
  final String? note;
  @override
  @JsonKey(name: "url_callback")
  final String urlCallback;

  @override
  String toString() {
    return 'PaymentBankVaModel(vaCode: $vaCode, partnerReff: $partnerReff, partnerReff2: $partnerReff2, amount: $amount, created: $created, expired: $expired, bankName: $bankName, bankImage: $bankImage, customerName: $customerName, customerEmail: $customerEmail, note: $note, urlCallback: $urlCallback)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PaymentBankVaModelImpl &&
            (identical(other.vaCode, vaCode) || other.vaCode == vaCode) &&
            (identical(other.partnerReff, partnerReff) ||
                other.partnerReff == partnerReff) &&
            (identical(other.partnerReff2, partnerReff2) ||
                other.partnerReff2 == partnerReff2) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.created, created) || other.created == created) &&
            (identical(other.expired, expired) || other.expired == expired) &&
            (identical(other.bankName, bankName) ||
                other.bankName == bankName) &&
            (identical(other.bankImage, bankImage) ||
                other.bankImage == bankImage) &&
            (identical(other.customerName, customerName) ||
                other.customerName == customerName) &&
            (identical(other.customerEmail, customerEmail) ||
                other.customerEmail == customerEmail) &&
            (identical(other.note, note) || other.note == note) &&
            (identical(other.urlCallback, urlCallback) ||
                other.urlCallback == urlCallback));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      vaCode,
      partnerReff,
      partnerReff2,
      amount,
      created,
      expired,
      bankName,
      bankImage,
      customerName,
      customerEmail,
      note,
      urlCallback);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PaymentBankVaModelImplCopyWith<_$PaymentBankVaModelImpl> get copyWith =>
      __$$PaymentBankVaModelImplCopyWithImpl<_$PaymentBankVaModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PaymentBankVaModelImplToJson(
      this,
    );
  }
}

abstract class _PaymentBankVaModel implements PaymentBankVaModel {
  const factory _PaymentBankVaModel(
          {@JsonKey(name: "va_code") required final String vaCode,
          @JsonKey(name: "partner_reff") required final String? partnerReff,
          @JsonKey(name: "partner_reff2") required final String partnerReff2,
          @JsonKey(name: "amount") required final int amount,
          @JsonKey(name: "created") required final String created,
          @JsonKey(name: "expired") required final String expired,
          @JsonKey(name: "bank_name") required final String bankName,
          @JsonKey(name: "bank_image") required final String bankImage,
          @JsonKey(name: "customer_name") final String? customerName,
          @JsonKey(name: "customer_email") final String? customerEmail,
          @JsonKey(name: "note") final String? note,
          @JsonKey(name: "url_callback") required final String urlCallback}) =
      _$PaymentBankVaModelImpl;

  factory _PaymentBankVaModel.fromJson(Map<String, dynamic> json) =
      _$PaymentBankVaModelImpl.fromJson;

  @override
  @JsonKey(name: "va_code")
  String get vaCode;
  @override
  @JsonKey(name: "partner_reff")
  String? get partnerReff;
  @override
  @JsonKey(name: "partner_reff2")
  String get partnerReff2;
  @override
  @JsonKey(name: "amount")
  int get amount;
  @override
  @JsonKey(name: "created")
  String get created;
  @override
  @JsonKey(name: "expired")
  String get expired;
  @override
  @JsonKey(name: "bank_name")
  String get bankName;
  @override
  @JsonKey(name: "bank_image")
  String get bankImage;
  @override
  @JsonKey(name: "customer_name")
  String? get customerName;
  @override
  @JsonKey(name: "customer_email")
  String? get customerEmail;
  @override
  @JsonKey(name: "note")
  String? get note;
  @override
  @JsonKey(name: "url_callback")
  String get urlCallback;
  @override
  @JsonKey(ignore: true)
  _$$PaymentBankVaModelImplCopyWith<_$PaymentBankVaModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
