part of 'card_account_bloc.dart';

@freezed
class CardAccountEvent with _$CardAccountEvent {
  const factory CardAccountEvent.addCard({
    required FormData formData,
  }) = _AddCard;
  const factory CardAccountEvent.getCards() = _GetCards;
  const factory CardAccountEvent.deleteCard({
    required int cardId,
  }) = _DeleteCard;
}
