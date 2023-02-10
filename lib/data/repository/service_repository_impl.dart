import 'package:alba_corp/core/result.dart';
import 'package:alba_corp/data/data_source/fake_api_source.dart';
import 'package:alba_corp/domain/models/time_slot.dart';

import 'package:alba_corp/domain/repository/services_repository.dart';
import 'package:injectable/injectable.dart';

import '../../domain/models/service.dart';

@Injectable(as: ServicesRepository)
class ServiceRepositoryImpl implements ServicesRepository {
  final FakeApiSource _apiSource;

  ServiceRepositoryImpl(this._apiSource);
  @override
  Future<Result<List<Service>>> getServices() => _apiSource.getServices();

  @override
  Future<Result<List<TimeSlot>>> getTimeSlots() => _apiSource.getTimeSlots();
}
