part of 'saved_cards_page_cubit.dart';

@freezed
class SavedCardsPageState with _$SavedCardsPageState {
  const factory SavedCardsPageState({
    int? selectedCardIndex,
    @Default([]) List<PaymentCard> cards,
    @Default(Status.init) Status getCardsStatus,
    @Default(Status.init) Status addCardStatus,
  }) = _SavedCardsPageCubit;
}
