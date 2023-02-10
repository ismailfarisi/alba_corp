import 'package:alba_corp/core/result.dart';
import 'package:alba_corp/domain/models/time_slot.dart';

import '../models/service.dart';

abstract class ServicesRepository {
  Future<Result<List<Service>>> getServices();
  Future<Result<List<TimeSlot>>> getTimeSlots();
}
