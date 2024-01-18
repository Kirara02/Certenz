// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'card_account_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CardAccountEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(FormData formData) addCard,
    required TResult Function() getCards,
    required TResult Function(int cardId) deleteCard,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(FormData formData)? addCard,
    TResult? Function()? getCards,
    TResult? Function(int cardId)? deleteCard,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(FormData formData)? addCard,
    TResult Function()? getCards,
    TResult Function(int cardId)? deleteCard,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddCard value) addCard,
    required TResult Function(_GetCards value) getCards,
    required TResult Function(_DeleteCard value) deleteCard,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AddCard value)? addCard,
    TResult? Function(_GetCards value)? getCards,
    TResult? Function(_DeleteCard value)? deleteCard,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddCard value)? addCard,
    TResult Function(_GetCards value)? getCards,
    TResult Function(_DeleteCard value)? deleteCard,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CardAccountEventCopyWith<$Res> {
  factory $CardAccountEventCopyWith(
          CardAccountEvent value, $Res Function(CardAccountEvent) then) =
      _$CardAccountEventCopyWithImpl<$Res, CardAccountEvent>;
}

/// @nodoc
class _$CardAccountEventCopyWithImpl<$Res, $Val extends CardAccountEvent>
    implements $CardAccountEventCopyWith<$Res> {
  _$CardAccountEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$AddCardImplCopyWith<$Res> {
  factory _$$AddCardImplCopyWith(
          _$AddCardImpl value, $Res Function(_$AddCardImpl) then) =
      __$$AddCardImplCopyWithImpl<$Res>;
  @useResult
  $Res call({FormData formData});
}

/// @nodoc
class __$$AddCardImplCopyWithImpl<$Res>
    extends _$CardAccountEventCopyWithImpl<$Res, _$AddCardImpl>
    implements _$$AddCardImplCopyWith<$Res> {
  __$$AddCardImplCopyWithImpl(
      _$AddCardImpl _value, $Res Function(_$AddCardImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? formData = null,
  }) {
    return _then(_$AddCardImpl(
      formData: null == formData
          ? _value.formData
          : formData // ignore: cast_nullable_to_non_nullable
              as FormData,
    ));
  }
}

/// @nodoc

class _$AddCardImpl implements _AddCard {
  const _$AddCardImpl({required this.formData});

  @override
  final FormData formData;

  @override
  String toString() {
    return 'CardAccountEvent.addCard(formData: $formData)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddCardImpl &&
            (identical(other.formData, formData) ||
                other.formData == formData));
  }

  @override
  int get hashCode => Object.hash(runtimeType, formData);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddCardImplCopyWith<_$AddCardImpl> get copyWith =>
      __$$AddCardImplCopyWithImpl<_$AddCardImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(FormData formData) addCard,
    required TResult Function() getCards,
    required TResult Function(int cardId) deleteCard,
  }) {
    return addCard(formData);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(FormData formData)? addCard,
    TResult? Function()? getCards,
    TResult? Function(int cardId)? deleteCard,
  }) {
    return addCard?.call(formData);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(FormData formData)? addCard,
    TResult Function()? getCards,
    TResult Function(int cardId)? deleteCard,
    required TResult orElse(),
  }) {
    if (addCard != null) {
      return addCard(formData);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddCard value) addCard,
    required TResult Function(_GetCards value) getCards,
    required TResult Function(_DeleteCard value) deleteCard,
  }) {
    return addCard(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AddCard value)? addCard,
    TResult? Function(_GetCards value)? getCards,
    TResult? Function(_DeleteCard value)? deleteCard,
  }) {
    return addCard?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddCard value)? addCard,
    TResult Function(_GetCards value)? getCards,
    TResult Function(_DeleteCard value)? deleteCard,
    required TResult orElse(),
  }) {
    if (addCard != null) {
      return addCard(this);
    }
    return orElse();
  }
}

abstract class _AddCard implements CardAccountEvent {
  const factory _AddCard({required final FormData formData}) = _$AddCardImpl;

  FormData get formData;
  @JsonKey(ignore: true)
  _$$AddCardImplCopyWith<_$AddCardImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetCardsImplCopyWith<$Res> {
  factory _$$GetCardsImplCopyWith(
          _$GetCardsImpl value, $Res Function(_$GetCardsImpl) then) =
      __$$GetCardsImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetCardsImplCopyWithImpl<$Res>
    extends _$CardAccountEventCopyWithImpl<$Res, _$GetCardsImpl>
    implements _$$GetCardsImplCopyWith<$Res> {
  __$$GetCardsImplCopyWithImpl(
      _$GetCardsImpl _value, $Res Function(_$GetCardsImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetCardsImpl implements _GetCards {
  const _$GetCardsImpl();

  @override
  String toString() {
    return 'CardAccountEvent.getCards()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetCardsImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(FormData formData) addCard,
    required TResult Function() getCards,
    required TResult Function(int cardId) deleteCard,
  }) {
    return getCards();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(FormData formData)? addCard,
    TResult? Function()? getCards,
    TResult? Function(int cardId)? deleteCard,
  }) {
    return getCards?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(FormData formData)? addCard,
    TResult Function()? getCards,
    TResult Function(int cardId)? deleteCard,
    required TResult orElse(),
  }) {
    if (getCards != null) {
      return getCards();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddCard value) addCard,
    required TResult Function(_GetCards value) getCards,
    required TResult Function(_DeleteCard value) deleteCard,
  }) {
    return getCards(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AddCard value)? addCard,
    TResult? Function(_GetCards value)? getCards,
    TResult? Function(_DeleteCard value)? deleteCard,
  }) {
    return getCards?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddCard value)? addCard,
    TResult Function(_GetCards value)? getCards,
    TResult Function(_DeleteCard value)? deleteCard,
    required TResult orElse(),
  }) {
    if (getCards != null) {
      return getCards(this);
    }
    return orElse();
  }
}

abstract class _GetCards implements CardAccountEvent {
  const factory _GetCards() = _$GetCardsImpl;
}

/// @nodoc
abstract class _$$DeleteCardImplCopyWith<$Res> {
  factory _$$DeleteCardImplCopyWith(
          _$DeleteCardImpl value, $Res Function(_$DeleteCardImpl) then) =
      __$$DeleteCardImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int cardId});
}

/// @nodoc
class __$$DeleteCardImplCopyWithImpl<$Res>
    extends _$CardAccountEventCopyWithImpl<$Res, _$DeleteCardImpl>
    implements _$$DeleteCardImplCopyWith<$Res> {
  __$$DeleteCardImplCopyWithImpl(
      _$DeleteCardImpl _value, $Res Function(_$DeleteCardImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cardId = null,
  }) {
    return _then(_$DeleteCardImpl(
      cardId: null == cardId
          ? _value.cardId
          : cardId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$DeleteCardImpl implements _DeleteCard {
  const _$DeleteCardImpl({required this.cardId});

  @override
  final int cardId;

  @override
  String toString() {
    return 'CardAccountEvent.deleteCard(cardId: $cardId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteCardImpl &&
            (identical(other.cardId, cardId) || other.cardId == cardId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, cardId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteCardImplCopyWith<_$DeleteCardImpl> get copyWith =>
      __$$DeleteCardImplCopyWithImpl<_$DeleteCardImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(FormData formData) addCard,
    required TResult Function() getCards,
    required TResult Function(int cardId) deleteCard,
  }) {
    return deleteCard(cardId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(FormData formData)? addCard,
    TResult? Function()? getCards,
    TResult? Function(int cardId)? deleteCard,
  }) {
    return deleteCard?.call(cardId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(FormData formData)? addCard,
    TResult Function()? getCards,
    TResult Function(int cardId)? deleteCard,
    required TResult orElse(),
  }) {
    if (deleteCard != null) {
      return deleteCard(cardId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddCard value) addCard,
    required TResult Function(_GetCards value) getCards,
    required TResult Function(_DeleteCard value) deleteCard,
  }) {
    return deleteCard(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AddCard value)? addCard,
    TResult? Function(_GetCards value)? getCards,
    TResult? Function(_DeleteCard value)? deleteCard,
  }) {
    return deleteCard?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddCard value)? addCard,
    TResult Function(_GetCards value)? getCards,
    TResult Function(_DeleteCard value)? deleteCard,
    required TResult orElse(),
  }) {
    if (deleteCard != null) {
      return deleteCard(this);
    }
    return orElse();
  }
}

abstract class _DeleteCard implements CardAccountEvent {
  const factory _DeleteCard({required final int cardId}) = _$DeleteCardImpl;

  int get cardId;
  @JsonKey(ignore: true)
  _$$DeleteCardImplCopyWith<_$DeleteCardImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CardAccountState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(BankAccountModel data) success,
    required TResult Function(DefaultResponse response) defaultSuccess,
    required TResult Function(List<BankAccountModel> data) successList,
    required TResult Function(NetworkExceptions error) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(BankAccountModel data)? success,
    TResult? Function(DefaultResponse response)? defaultSuccess,
    TResult? Function(List<BankAccountModel> data)? successList,
    TResult? Function(NetworkExceptions error)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(BankAccountModel data)? success,
    TResult Function(DefaultResponse response)? defaultSuccess,
    TResult Function(List<BankAccountModel> data)? successList,
    TResult Function(NetworkExceptions error)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_DefaultSuccess value) defaultSuccess,
    required TResult Function(_SuccessList value) successList,
    required TResult Function(_Error value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_DefaultSuccess value)? defaultSuccess,
    TResult? Function(_SuccessList value)? successList,
    TResult? Function(_Error value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_DefaultSuccess value)? defaultSuccess,
    TResult Function(_SuccessList value)? successList,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CardAccountStateCopyWith<$Res> {
  factory $CardAccountStateCopyWith(
          CardAccountState value, $Res Function(CardAccountState) then) =
      _$CardAccountStateCopyWithImpl<$Res, CardAccountState>;
}

/// @nodoc
class _$CardAccountStateCopyWithImpl<$Res, $Val extends CardAccountState>
    implements $CardAccountStateCopyWith<$Res> {
  _$CardAccountStateCopyWithImpl(this._value, this._then);

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
    extends _$CardAccountStateCopyWithImpl<$Res, _$InitialImpl>
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
    return 'CardAccountState.initial()';
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
    required TResult Function(BankAccountModel data) success,
    required TResult Function(DefaultResponse response) defaultSuccess,
    required TResult Function(List<BankAccountModel> data) successList,
    required TResult Function(NetworkExceptions error) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(BankAccountModel data)? success,
    TResult? Function(DefaultResponse response)? defaultSuccess,
    TResult? Function(List<BankAccountModel> data)? successList,
    TResult? Function(NetworkExceptions error)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(BankAccountModel data)? success,
    TResult Function(DefaultResponse response)? defaultSuccess,
    TResult Function(List<BankAccountModel> data)? successList,
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
    required TResult Function(_DefaultSuccess value) defaultSuccess,
    required TResult Function(_SuccessList value) successList,
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
    TResult? Function(_DefaultSuccess value)? defaultSuccess,
    TResult? Function(_SuccessList value)? successList,
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
    TResult Function(_DefaultSuccess value)? defaultSuccess,
    TResult Function(_SuccessList value)? successList,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements CardAccountState {
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
    extends _$CardAccountStateCopyWithImpl<$Res, _$LoadingImpl>
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
    return 'CardAccountState.loading()';
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
    required TResult Function(BankAccountModel data) success,
    required TResult Function(DefaultResponse response) defaultSuccess,
    required TResult Function(List<BankAccountModel> data) successList,
    required TResult Function(NetworkExceptions error) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(BankAccountModel data)? success,
    TResult? Function(DefaultResponse response)? defaultSuccess,
    TResult? Function(List<BankAccountModel> data)? successList,
    TResult? Function(NetworkExceptions error)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(BankAccountModel data)? success,
    TResult Function(DefaultResponse response)? defaultSuccess,
    TResult Function(List<BankAccountModel> data)? successList,
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
    required TResult Function(_DefaultSuccess value) defaultSuccess,
    required TResult Function(_SuccessList value) successList,
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
    TResult? Function(_DefaultSuccess value)? defaultSuccess,
    TResult? Function(_SuccessList value)? successList,
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
    TResult Function(_DefaultSuccess value)? defaultSuccess,
    TResult Function(_SuccessList value)? successList,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements CardAccountState {
  const factory _Loading() = _$LoadingImpl;
}

/// @nodoc
abstract class _$$SuccessImplCopyWith<$Res> {
  factory _$$SuccessImplCopyWith(
          _$SuccessImpl value, $Res Function(_$SuccessImpl) then) =
      __$$SuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({BankAccountModel data});

  $BankAccountModelCopyWith<$Res> get data;
}

/// @nodoc
class __$$SuccessImplCopyWithImpl<$Res>
    extends _$CardAccountStateCopyWithImpl<$Res, _$SuccessImpl>
    implements _$$SuccessImplCopyWith<$Res> {
  __$$SuccessImplCopyWithImpl(
      _$SuccessImpl _value, $Res Function(_$SuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$SuccessImpl(
      null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as BankAccountModel,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $BankAccountModelCopyWith<$Res> get data {
    return $BankAccountModelCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value));
    });
  }
}

/// @nodoc

class _$SuccessImpl implements _Success {
  const _$SuccessImpl(this.data);

  @override
  final BankAccountModel data;

  @override
  String toString() {
    return 'CardAccountState.success(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SuccessImpl &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

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
    required TResult Function(BankAccountModel data) success,
    required TResult Function(DefaultResponse response) defaultSuccess,
    required TResult Function(List<BankAccountModel> data) successList,
    required TResult Function(NetworkExceptions error) error,
  }) {
    return success(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(BankAccountModel data)? success,
    TResult? Function(DefaultResponse response)? defaultSuccess,
    TResult? Function(List<BankAccountModel> data)? successList,
    TResult? Function(NetworkExceptions error)? error,
  }) {
    return success?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(BankAccountModel data)? success,
    TResult Function(DefaultResponse response)? defaultSuccess,
    TResult Function(List<BankAccountModel> data)? successList,
    TResult Function(NetworkExceptions error)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_DefaultSuccess value) defaultSuccess,
    required TResult Function(_SuccessList value) successList,
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
    TResult? Function(_DefaultSuccess value)? defaultSuccess,
    TResult? Function(_SuccessList value)? successList,
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
    TResult Function(_DefaultSuccess value)? defaultSuccess,
    TResult Function(_SuccessList value)? successList,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _Success implements CardAccountState {
  const factory _Success(final BankAccountModel data) = _$SuccessImpl;

  BankAccountModel get data;
  @JsonKey(ignore: true)
  _$$SuccessImplCopyWith<_$SuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DefaultSuccessImplCopyWith<$Res> {
  factory _$$DefaultSuccessImplCopyWith(_$DefaultSuccessImpl value,
          $Res Function(_$DefaultSuccessImpl) then) =
      __$$DefaultSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({DefaultResponse response});

  $DefaultResponseCopyWith<$Res> get response;
}

/// @nodoc
class __$$DefaultSuccessImplCopyWithImpl<$Res>
    extends _$CardAccountStateCopyWithImpl<$Res, _$DefaultSuccessImpl>
    implements _$$DefaultSuccessImplCopyWith<$Res> {
  __$$DefaultSuccessImplCopyWithImpl(
      _$DefaultSuccessImpl _value, $Res Function(_$DefaultSuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? response = null,
  }) {
    return _then(_$DefaultSuccessImpl(
      null == response
          ? _value.response
          : response // ignore: cast_nullable_to_non_nullable
              as DefaultResponse,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $DefaultResponseCopyWith<$Res> get response {
    return $DefaultResponseCopyWith<$Res>(_value.response, (value) {
      return _then(_value.copyWith(response: value));
    });
  }
}

/// @nodoc

class _$DefaultSuccessImpl implements _DefaultSuccess {
  const _$DefaultSuccessImpl(this.response);

  @override
  final DefaultResponse response;

  @override
  String toString() {
    return 'CardAccountState.defaultSuccess(response: $response)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DefaultSuccessImpl &&
            (identical(other.response, response) ||
                other.response == response));
  }

  @override
  int get hashCode => Object.hash(runtimeType, response);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DefaultSuccessImplCopyWith<_$DefaultSuccessImpl> get copyWith =>
      __$$DefaultSuccessImplCopyWithImpl<_$DefaultSuccessImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(BankAccountModel data) success,
    required TResult Function(DefaultResponse response) defaultSuccess,
    required TResult Function(List<BankAccountModel> data) successList,
    required TResult Function(NetworkExceptions error) error,
  }) {
    return defaultSuccess(response);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(BankAccountModel data)? success,
    TResult? Function(DefaultResponse response)? defaultSuccess,
    TResult? Function(List<BankAccountModel> data)? successList,
    TResult? Function(NetworkExceptions error)? error,
  }) {
    return defaultSuccess?.call(response);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(BankAccountModel data)? success,
    TResult Function(DefaultResponse response)? defaultSuccess,
    TResult Function(List<BankAccountModel> data)? successList,
    TResult Function(NetworkExceptions error)? error,
    required TResult orElse(),
  }) {
    if (defaultSuccess != null) {
      return defaultSuccess(response);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_DefaultSuccess value) defaultSuccess,
    required TResult Function(_SuccessList value) successList,
    required TResult Function(_Error value) error,
  }) {
    return defaultSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_DefaultSuccess value)? defaultSuccess,
    TResult? Function(_SuccessList value)? successList,
    TResult? Function(_Error value)? error,
  }) {
    return defaultSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_DefaultSuccess value)? defaultSuccess,
    TResult Function(_SuccessList value)? successList,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (defaultSuccess != null) {
      return defaultSuccess(this);
    }
    return orElse();
  }
}

abstract class _DefaultSuccess implements CardAccountState {
  const factory _DefaultSuccess(final DefaultResponse response) =
      _$DefaultSuccessImpl;

  DefaultResponse get response;
  @JsonKey(ignore: true)
  _$$DefaultSuccessImplCopyWith<_$DefaultSuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SuccessListImplCopyWith<$Res> {
  factory _$$SuccessListImplCopyWith(
          _$SuccessListImpl value, $Res Function(_$SuccessListImpl) then) =
      __$$SuccessListImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<BankAccountModel> data});
}

/// @nodoc
class __$$SuccessListImplCopyWithImpl<$Res>
    extends _$CardAccountStateCopyWithImpl<$Res, _$SuccessListImpl>
    implements _$$SuccessListImplCopyWith<$Res> {
  __$$SuccessListImplCopyWithImpl(
      _$SuccessListImpl _value, $Res Function(_$SuccessListImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$SuccessListImpl(
      null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<BankAccountModel>,
    ));
  }
}

/// @nodoc

class _$SuccessListImpl implements _SuccessList {
  const _$SuccessListImpl(final List<BankAccountModel> data) : _data = data;

  final List<BankAccountModel> _data;
  @override
  List<BankAccountModel> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  String toString() {
    return 'CardAccountState.successList(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SuccessListImpl &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SuccessListImplCopyWith<_$SuccessListImpl> get copyWith =>
      __$$SuccessListImplCopyWithImpl<_$SuccessListImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(BankAccountModel data) success,
    required TResult Function(DefaultResponse response) defaultSuccess,
    required TResult Function(List<BankAccountModel> data) successList,
    required TResult Function(NetworkExceptions error) error,
  }) {
    return successList(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(BankAccountModel data)? success,
    TResult? Function(DefaultResponse response)? defaultSuccess,
    TResult? Function(List<BankAccountModel> data)? successList,
    TResult? Function(NetworkExceptions error)? error,
  }) {
    return successList?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(BankAccountModel data)? success,
    TResult Function(DefaultResponse response)? defaultSuccess,
    TResult Function(List<BankAccountModel> data)? successList,
    TResult Function(NetworkExceptions error)? error,
    required TResult orElse(),
  }) {
    if (successList != null) {
      return successList(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_DefaultSuccess value) defaultSuccess,
    required TResult Function(_SuccessList value) successList,
    required TResult Function(_Error value) error,
  }) {
    return successList(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_DefaultSuccess value)? defaultSuccess,
    TResult? Function(_SuccessList value)? successList,
    TResult? Function(_Error value)? error,
  }) {
    return successList?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_DefaultSuccess value)? defaultSuccess,
    TResult Function(_SuccessList value)? successList,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (successList != null) {
      return successList(this);
    }
    return orElse();
  }
}

abstract class _SuccessList implements CardAccountState {
  const factory _SuccessList(final List<BankAccountModel> data) =
      _$SuccessListImpl;

  List<BankAccountModel> get data;
  @JsonKey(ignore: true)
  _$$SuccessListImplCopyWith<_$SuccessListImpl> get copyWith =>
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
    extends _$CardAccountStateCopyWithImpl<$Res, _$ErrorImpl>
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
    return 'CardAccountState.error(error: $error)';
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
    required TResult Function(BankAccountModel data) success,
    required TResult Function(DefaultResponse response) defaultSuccess,
    required TResult Function(List<BankAccountModel> data) successList,
    required TResult Function(NetworkExceptions error) error,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(BankAccountModel data)? success,
    TResult? Function(DefaultResponse response)? defaultSuccess,
    TResult? Function(List<BankAccountModel> data)? successList,
    TResult? Function(NetworkExceptions error)? error,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(BankAccountModel data)? success,
    TResult Function(DefaultResponse response)? defaultSuccess,
    TResult Function(List<BankAccountModel> data)? successList,
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
    required TResult Function(_DefaultSuccess value) defaultSuccess,
    required TResult Function(_SuccessList value) successList,
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
    TResult? Function(_DefaultSuccess value)? defaultSuccess,
    TResult? Function(_SuccessList value)? successList,
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
    TResult Function(_DefaultSuccess value)? defaultSuccess,
    TResult Function(_SuccessList value)? successList,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error implements CardAccountState {
  const factory _Error(final NetworkExceptions error) = _$ErrorImpl;

  NetworkExceptions get error;
  @JsonKey(ignore: true)
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
