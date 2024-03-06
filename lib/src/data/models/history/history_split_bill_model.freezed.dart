// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'history_split_bill_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

HistorySplitBillModel _$HistorySplitBillModelFromJson(
    Map<String, dynamic> json) {
  return _HistorySplitBillModel.fromJson(json);
}

/// @nodoc
mixin _$HistorySplitBillModel {
  @JsonKey(name: "transaction_id")
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: "user_id")
  int get userId => throw _privateConstructorUsedError;
  @JsonKey(name: "bill_number")
  String get billNumber => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  @JsonKey(name: "split_data")
  List<HistoryItemModel> get splitData => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $HistorySplitBillModelCopyWith<HistorySplitBillModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HistorySplitBillModelCopyWith<$Res> {
  factory $HistorySplitBillModelCopyWith(HistorySplitBillModel value,
          $Res Function(HistorySplitBillModel) then) =
      _$HistorySplitBillModelCopyWithImpl<$Res, HistorySplitBillModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "transaction_id") int id,
      @JsonKey(name: "user_id") int userId,
      @JsonKey(name: "bill_number") String billNumber,
      String title,
      @JsonKey(name: "split_data") List<HistoryItemModel> splitData});
}

/// @nodoc
class _$HistorySplitBillModelCopyWithImpl<$Res,
        $Val extends HistorySplitBillModel>
    implements $HistorySplitBillModelCopyWith<$Res> {
  _$HistorySplitBillModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userId = null,
    Object? billNumber = null,
    Object? title = null,
    Object? splitData = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
      billNumber: null == billNumber
          ? _value.billNumber
          : billNumber // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      splitData: null == splitData
          ? _value.splitData
          : splitData // ignore: cast_nullable_to_non_nullable
              as List<HistoryItemModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$HistorySplitBillModelImplCopyWith<$Res>
    implements $HistorySplitBillModelCopyWith<$Res> {
  factory _$$HistorySplitBillModelImplCopyWith(
          _$HistorySplitBillModelImpl value,
          $Res Function(_$HistorySplitBillModelImpl) then) =
      __$$HistorySplitBillModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "transaction_id") int id,
      @JsonKey(name: "user_id") int userId,
      @JsonKey(name: "bill_number") String billNumber,
      String title,
      @JsonKey(name: "split_data") List<HistoryItemModel> splitData});
}

/// @nodoc
class __$$HistorySplitBillModelImplCopyWithImpl<$Res>
    extends _$HistorySplitBillModelCopyWithImpl<$Res,
        _$HistorySplitBillModelImpl>
    implements _$$HistorySplitBillModelImplCopyWith<$Res> {
  __$$HistorySplitBillModelImplCopyWithImpl(_$HistorySplitBillModelImpl _value,
      $Res Function(_$HistorySplitBillModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userId = null,
    Object? billNumber = null,
    Object? title = null,
    Object? splitData = null,
  }) {
    return _then(_$HistorySplitBillModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
      billNumber: null == billNumber
          ? _value.billNumber
          : billNumber // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      splitData: null == splitData
          ? _value._splitData
          : splitData // ignore: cast_nullable_to_non_nullable
              as List<HistoryItemModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$HistorySplitBillModelImpl implements _HistorySplitBillModel {
  _$HistorySplitBillModelImpl(
      {@JsonKey(name: "transaction_id") required this.id,
      @JsonKey(name: "user_id") required this.userId,
      @JsonKey(name: "bill_number") required this.billNumber,
      required this.title,
      @JsonKey(name: "split_data")
      required final List<HistoryItemModel> splitData})
      : _splitData = splitData;

  factory _$HistorySplitBillModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$HistorySplitBillModelImplFromJson(json);

  @override
  @JsonKey(name: "transaction_id")
  final int id;
  @override
  @JsonKey(name: "user_id")
  final int userId;
  @override
  @JsonKey(name: "bill_number")
  final String billNumber;
  @override
  final String title;
  final List<HistoryItemModel> _splitData;
  @override
  @JsonKey(name: "split_data")
  List<HistoryItemModel> get splitData {
    if (_splitData is EqualUnmodifiableListView) return _splitData;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_splitData);
  }

  @override
  String toString() {
    return 'HistorySplitBillModel(id: $id, userId: $userId, billNumber: $billNumber, title: $title, splitData: $splitData)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HistorySplitBillModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.billNumber, billNumber) ||
                other.billNumber == billNumber) &&
            (identical(other.title, title) || other.title == title) &&
            const DeepCollectionEquality()
                .equals(other._splitData, _splitData));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, userId, billNumber, title,
      const DeepCollectionEquality().hash(_splitData));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HistorySplitBillModelImplCopyWith<_$HistorySplitBillModelImpl>
      get copyWith => __$$HistorySplitBillModelImplCopyWithImpl<
          _$HistorySplitBillModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$HistorySplitBillModelImplToJson(
      this,
    );
  }
}

abstract class _HistorySplitBillModel implements HistorySplitBillModel {
  factory _HistorySplitBillModel(
          {@JsonKey(name: "transaction_id") required final int id,
          @JsonKey(name: "user_id") required final int userId,
          @JsonKey(name: "bill_number") required final String billNumber,
          required final String title,
          @JsonKey(name: "split_data")
          required final List<HistoryItemModel> splitData}) =
      _$HistorySplitBillModelImpl;

  factory _HistorySplitBillModel.fromJson(Map<String, dynamic> json) =
      _$HistorySplitBillModelImpl.fromJson;

  @override
  @JsonKey(name: "transaction_id")
  int get id;
  @override
  @JsonKey(name: "user_id")
  int get userId;
  @override
  @JsonKey(name: "bill_number")
  String get billNumber;
  @override
  String get title;
  @override
  @JsonKey(name: "split_data")
  List<HistoryItemModel> get splitData;
  @override
  @JsonKey(ignore: true)
  _$$HistorySplitBillModelImplCopyWith<_$HistorySplitBillModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
