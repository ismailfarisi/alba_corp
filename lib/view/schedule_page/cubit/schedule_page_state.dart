part of 'schedule_page_cubit.dart';

@freezed
class SchedulePageState with _$SchedulePageState {
  const factory SchedulePageState({
    int? selectedTimeSlotId,
    @Default([]) List<TimeSlot> timeSlots,
    @Default(Status.init) Status getTimeSlotsStatus,
  }) = _SchedulePageState;
}
