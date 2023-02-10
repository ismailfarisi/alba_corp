import 'package:alba_corp/core/result.dart';
import 'package:alba_corp/domain/models/time_slot.dart';
import 'package:alba_corp/domain/repository/services_repository.dart';
import 'package:injectable/injectable.dart';

@injectable
class GetTimeSlotsUsecase {
  final ServicesRepository _repository;

  GetTimeSlotsUsecase(this._repository);

  Future<Result<List<TimeSlot>>> call() => _repository.getTimeSlots();
}
