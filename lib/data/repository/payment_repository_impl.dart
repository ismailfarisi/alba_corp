import 'package:alba_corp/data/data_source/fake_api_source.dart';
import 'package:alba_corp/domain/models/payment_card.dart';
import 'package:alba_corp/core/result.dart';
import 'package:alba_corp/domain/repository/payment_repository.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: PaymentRepository)
class PaymentRepositoryImpl implements PaymentRepository {
  final FakeApiSource _apiSource;

  PaymentRepositoryImpl(this._apiSource);
  @override
  Future<Result<List<PaymentCard>>> getSavedCard() =>
      _apiSource.getSavedCards();

  @override
  Future<Result<void>> addCard() => _apiSource.addCard();
}
