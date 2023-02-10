import 'package:alba_corp/domain/models/payment_card.dart';

import '../../core/result.dart';

abstract class PaymentRepository {
  Future<Result<List<PaymentCard>>> getSavedCard();
  Future<Result<void>> addCard();
}
