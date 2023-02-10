import 'package:alba_corp/domain/usecases/payments/add_card.dart';
import 'package:alba_corp/domain/usecases/payments/get_cards.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../core/status.dart';
import '../../../domain/models/payment_card.dart';

part 'saved_cards_page_state.dart';
part 'saved_cards_page_cubit.freezed.dart';

@injectable
class SavedCardsPageCubit extends Cubit<SavedCardsPageState> {
  SavedCardsPageCubit(this._getCardsUsecase, this._addCardUsecase)
      : super(const SavedCardsPageState()) {
    getSavedCards();
  }

  final GetCardsUsecase _getCardsUsecase;
  final AddCardUsecase _addCardUsecase;

  void setSelectedCard(int cardId) {
    emit(state.copyWith(selectedCardIndex: cardId));
  }

  Future<void> getSavedCards() async {
    emit(state.copyWith(getCardsStatus: Status.loading));
    final result = await _getCardsUsecase.call();
    result.when(success: (data) async {
      emit(state.copyWith(
        cards: data,
        getCardsStatus: Status.success,
      ));
      await Future.delayed(const Duration(milliseconds: 500));
      emit(state.copyWith(selectedCardIndex: 2));
    }, error: (e) {
      emit(state.copyWith(getCardsStatus: Status.error));
    });
  }

  Future<void> addCard(
    String name,
    String cardNumber,
    String month,
    String year,
  ) async {
    if (state.addCardStatus == Status.loading) {
      return;
    }
    emit(state.copyWith(addCardStatus: Status.loading));
    final id = state.cards[state.cards.length - 1].id + 1;

    final PaymentCard card = PaymentCard(
        id: id,
        brand: "visa",
        cardNumber: cardNumber.replaceAll("-", ""),
        name: name,
        expMonth: int.parse(month),
        expYear: int.parse(year));
    final result = await _addCardUsecase.call();
    result.when(success: (data) {
      emit(state.copyWith(
          addCardStatus: Status.success,
          cards: [
            ...state.cards,
            card,
          ],
          selectedCardIndex: id));
    }, error: (e) {
      emit(state.copyWith(addCardStatus: Status.error));
    });
  }
}
