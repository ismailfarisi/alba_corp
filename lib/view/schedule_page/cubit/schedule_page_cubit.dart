import 'package:alba_corp/domain/usecases/services/get_time_slots.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../core/status.dart';
import '../../../domain/models/time_slot.dart';

part 'schedule_page_state.dart';
part 'schedule_page_cubit.freezed.dart';

@injectable
class SchedulePageCubit extends Cubit<SchedulePageState> {
  SchedulePageCubit(this._getTimeSlotsUsecase)
      : super(const SchedulePageState()) {
    getTimeSlots(DateTime.now());
  }

  final GetTimeSlotsUsecase _getTimeSlotsUsecase;

  void selectTimeSlot(int id) {
    emit(state.copyWith(selectedTimeSlotId: id));
  }

  Future<void> getTimeSlots(DateTime date) async {
    emit(state.copyWith(getTimeSlotsStatus: Status.loading));
    final results = await _getTimeSlotsUsecase.call();
    results.when(success: (data) {
      emit(state.copyWith(timeSlots: data, getTimeSlotsStatus: Status.success));
    }, error: (error) {
      emit(state.copyWith(getTimeSlotsStatus: Status.error));
    });
  }
}
