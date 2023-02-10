// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'time_slot.freezed.dart';
part 'time_slot.g.dart';

@freezed
class TimeSlot with _$TimeSlot {
  const factory TimeSlot({
    required int id,
    @JsonKey(name: "time_slot_from") required String timeSlotFrom,
    @JsonKey(name: "time_slot_to") required String timeSlotTo,
  }) = _TimeSlot;

  factory TimeSlot.fromJson(Map<String, dynamic> json) =>
      _$TimeSlotFromJson(json);
}
