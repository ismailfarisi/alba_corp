// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'time_slot.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TimeSlot _$$_TimeSlotFromJson(Map<String, dynamic> json) => _$_TimeSlot(
      id: json['id'] as int,
      timeSlotFrom: json['time_slot_from'] as String,
      timeSlotTo: json['time_slot_to'] as String,
    );

Map<String, dynamic> _$$_TimeSlotToJson(_$_TimeSlot instance) =>
    <String, dynamic>{
      'id': instance.id,
      'time_slot_from': instance.timeSlotFrom,
      'time_slot_to': instance.timeSlotTo,
    };
