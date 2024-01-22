// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'reimbursement_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ReimbursementModel _$ReimbursementModelFromJson(Map<String, dynamic> json) {
  return _ReimbursementModel.fromJson(json);
}

/// @nodoc
mixin _$ReimbursementModel {
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'user_id')
  int? get userId => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  double? get amount => throw _privateConstructorUsedError;
  @JsonKey(name: 'activity_details')
  List<String>? get activityDetails => throw _privateConstructorUsedError;
  @JsonKey(name: 'start_date')
  String? get startDate => throw _privateConstructorUsedError;
  @JsonKey(name: 'account_destination')
  int? get accountDestination => throw _privateConstructorUsedError;
  String? get notes => throw _privateConstructorUsedError;
  List<String>? get documentation => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  @DateTimeConverter()
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  @DateTimeConverter()
  DateTime? get updatedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ReimbursementModelCopyWith<ReimbursementModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReimbursementModelCopyWith<$Res> {
  factory $ReimbursementModelCopyWith(
          ReimbursementModel value, $Res Function(ReimbursementModel) then) =
      _$ReimbursementModelCopyWithImpl<$Res, ReimbursementModel>;
  @useResult
  $Res call(
      {int? id,
      @JsonKey(name: 'user_id') int? userId,
      String? email,
      String? title,
      double? amount,
      @JsonKey(name: 'activity_details') List<String>? activityDetails,
      @JsonKey(name: 'start_date') String? startDate,
      @JsonKey(name: 'account_destination') int? accountDestination,
      String? notes,
      List<String>? documentation,
      @JsonKey(name: 'created_at') @DateTimeConverter() DateTime? createdAt,
      @JsonKey(name: 'updated_at') @DateTimeConverter() DateTime? updatedAt});
}

/// @nodoc
class _$ReimbursementModelCopyWithImpl<$Res, $Val extends ReimbursementModel>
    implements $ReimbursementModelCopyWith<$Res> {
  _$ReimbursementModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? userId = freezed,
    Object? email = freezed,
    Object? title = freezed,
    Object? amount = freezed,
    Object? activityDetails = freezed,
    Object? startDate = freezed,
    Object? accountDestination = freezed,
    Object? notes = freezed,
    Object? documentation = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      amount: freezed == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double?,
      activityDetails: freezed == activityDetails
          ? _value.activityDetails
          : activityDetails // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      startDate: freezed == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as String?,
      accountDestination: freezed == accountDestination
          ? _value.accountDestination
          : accountDestination // ignore: cast_nullable_to_non_nullable
              as int?,
      notes: freezed == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      documentation: freezed == documentation
          ? _value.documentation
          : documentation // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ReimbursementModelImplCopyWith<$Res>
    implements $ReimbursementModelCopyWith<$Res> {
  factory _$$ReimbursementModelImplCopyWith(_$ReimbursementModelImpl value,
          $Res Function(_$ReimbursementModelImpl) then) =
      __$$ReimbursementModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      @JsonKey(name: 'user_id') int? userId,
      String? email,
      String? title,
      double? amount,
      @JsonKey(name: 'activity_details') List<String>? activityDetails,
      @JsonKey(name: 'start_date') String? startDate,
      @JsonKey(name: 'account_destination') int? accountDestination,
      String? notes,
      List<String>? documentation,
      @JsonKey(name: 'created_at') @DateTimeConverter() DateTime? createdAt,
      @JsonKey(name: 'updated_at') @DateTimeConverter() DateTime? updatedAt});
}

/// @nodoc
class __$$ReimbursementModelImplCopyWithImpl<$Res>
    extends _$ReimbursementModelCopyWithImpl<$Res, _$ReimbursementModelImpl>
    implements _$$ReimbursementModelImplCopyWith<$Res> {
  __$$ReimbursementModelImplCopyWithImpl(_$ReimbursementModelImpl _value,
      $Res Function(_$ReimbursementModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? userId = freezed,
    Object? email = freezed,
    Object? title = freezed,
    Object? amount = freezed,
    Object? activityDetails = freezed,
    Object? startDate = freezed,
    Object? accountDestination = freezed,
    Object? notes = freezed,
    Object? documentation = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_$ReimbursementModelImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      amount: freezed == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double?,
      activityDetails: freezed == activityDetails
          ? _value._activityDetails
          : activityDetails // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      startDate: freezed == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as String?,
      accountDestination: freezed == accountDestination
          ? _value.accountDestination
          : accountDestination // ignore: cast_nullable_to_non_nullable
              as int?,
      notes: freezed == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      documentation: freezed == documentation
          ? _value._documentation
          : documentation // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ReimbursementModelImpl implements _ReimbursementModel {
  _$ReimbursementModelImpl(
      {this.id,
      @JsonKey(name: 'user_id') this.userId,
      this.email,
      this.title,
      this.amount,
      @JsonKey(name: 'activity_details') final List<String>? activityDetails,
      @JsonKey(name: 'start_date') this.startDate,
      @JsonKey(name: 'account_destination') this.accountDestination,
      this.notes,
      final List<String>? documentation,
      @JsonKey(name: 'created_at') @DateTimeConverter() this.createdAt,
      @JsonKey(name: 'updated_at') @DateTimeConverter() this.updatedAt})
      : _activityDetails = activityDetails,
        _documentation = documentation;

  factory _$ReimbursementModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ReimbursementModelImplFromJson(json);

  @override
  final int? id;
  @override
  @JsonKey(name: 'user_id')
  final int? userId;
  @override
  final String? email;
  @override
  final String? title;
  @override
  final double? amount;
  final List<String>? _activityDetails;
  @override
  @JsonKey(name: 'activity_details')
  List<String>? get activityDetails {
    final value = _activityDetails;
    if (value == null) return null;
    if (_activityDetails is EqualUnmodifiableListView) return _activityDetails;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: 'start_date')
  final String? startDate;
  @override
  @JsonKey(name: 'account_destination')
  final int? accountDestination;
  @override
  final String? notes;
  final List<String>? _documentation;
  @override
  List<String>? get documentation {
    final value = _documentation;
    if (value == null) return null;
    if (_documentation is EqualUnmodifiableListView) return _documentation;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: 'created_at')
  @DateTimeConverter()
  final DateTime? createdAt;
  @override
  @JsonKey(name: 'updated_at')
  @DateTimeConverter()
  final DateTime? updatedAt;

  @override
  String toString() {
    return 'ReimbursementModel(id: $id, userId: $userId, email: $email, title: $title, amount: $amount, activityDetails: $activityDetails, startDate: $startDate, accountDestination: $accountDestination, notes: $notes, documentation: $documentation, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReimbursementModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            const DeepCollectionEquality()
                .equals(other._activityDetails, _activityDetails) &&
            (identical(other.startDate, startDate) ||
                other.startDate == startDate) &&
            (identical(other.accountDestination, accountDestination) ||
                other.accountDestination == accountDestination) &&
            (identical(other.notes, notes) || other.notes == notes) &&
            const DeepCollectionEquality()
                .equals(other._documentation, _documentation) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      userId,
      email,
      title,
      amount,
      const DeepCollectionEquality().hash(_activityDetails),
      startDate,
      accountDestination,
      notes,
      const DeepCollectionEquality().hash(_documentation),
      createdAt,
      updatedAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ReimbursementModelImplCopyWith<_$ReimbursementModelImpl> get copyWith =>
      __$$ReimbursementModelImplCopyWithImpl<_$ReimbursementModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ReimbursementModelImplToJson(
      this,
    );
  }
}

abstract class _ReimbursementModel implements ReimbursementModel {
  factory _ReimbursementModel(
      {final int? id,
      @JsonKey(name: 'user_id') final int? userId,
      final String? email,
      final String? title,
      final double? amount,
      @JsonKey(name: 'activity_details') final List<String>? activityDetails,
      @JsonKey(name: 'start_date') final String? startDate,
      @JsonKey(name: 'account_destination') final int? accountDestination,
      final String? notes,
      final List<String>? documentation,
      @JsonKey(name: 'created_at')
      @DateTimeConverter()
      final DateTime? createdAt,
      @JsonKey(name: 'updated_at')
      @DateTimeConverter()
      final DateTime? updatedAt}) = _$ReimbursementModelImpl;

  factory _ReimbursementModel.fromJson(Map<String, dynamic> json) =
      _$ReimbursementModelImpl.fromJson;

  @override
  int? get id;
  @override
  @JsonKey(name: 'user_id')
  int? get userId;
  @override
  String? get email;
  @override
  String? get title;
  @override
  double? get amount;
  @override
  @JsonKey(name: 'activity_details')
  List<String>? get activityDetails;
  @override
  @JsonKey(name: 'start_date')
  String? get startDate;
  @override
  @JsonKey(name: 'account_destination')
  int? get accountDestination;
  @override
  String? get notes;
  @override
  List<String>? get documentation;
  @override
  @JsonKey(name: 'created_at')
  @DateTimeConverter()
  DateTime? get createdAt;
  @override
  @JsonKey(name: 'updated_at')
  @DateTimeConverter()
  DateTime? get updatedAt;
  @override
  @JsonKey(ignore: true)
  _$$ReimbursementModelImplCopyWith<_$ReimbursementModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
