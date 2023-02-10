import 'package:alba_corp/core/result.dart';
import 'package:alba_corp/domain/models/payment_card.dart';
import 'package:alba_corp/domain/repository/payment_repository.dart';
import 'package:injectable/injectable.dart';

@injectable
class GetCardsUsecase {
  final PaymentRepository _paymentRepository;

  GetCardsUsecase(this._paymentRepository);

  Future<Result<List<PaymentCard>>> call() => _paymentRepository.getSavedCard();
}
