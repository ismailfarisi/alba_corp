import 'package:injectable/injectable.dart';

import '../../../core/result.dart';
import '../../repository/payment_repository.dart';

@injectable
class AddCardUsecase {
  final PaymentRepository _paymentRepository;

  AddCardUsecase(this._paymentRepository);

  Future<Result<void>> call() => _paymentRepository.addCard();
}
