import 'package:injectable/injectable.dart';

import '../../../core/result.dart';
import '../../models/service.dart';
import '../../repository/services_repository.dart';

@injectable
class GetServicesUsecase {
  GetServicesUsecase(this._serviceRepository);
  final ServicesRepository _serviceRepository;
  Future<Result<List<Service>>> call() => _serviceRepository.getServices();
}
