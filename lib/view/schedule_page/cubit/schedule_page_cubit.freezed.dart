// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'schedule_page_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SchedulePageState {
  int? get selectedTimeSlotId => throw _privateConstructorUsedError;
  List<TimeSlot> get timeSlots => throw _privateConstructorUsedError;
  Status get getTimeSlotsStatus => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SchedulePageStateCopyWith<SchedulePageState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SchedulePageStateCopyWith<$Res> {
  factory $SchedulePageStateCopyWith(
          SchedulePageState value, $Res Function(SchedulePageState) then) =
      _$SchedulePageStateCopyWithImpl<$Res, SchedulePageState>;
  @useResult
  $Res call(
      {int? selectedTimeSlotId,
      List<TimeSlot> timeSlots,
      Status getTimeSlotsStatus});
}

/// @nodoc
class _$SchedulePageStateCopyWithImpl<$Res, $Val extends SchedulePageState>
    implements $SchedulePageStateCopyWith<$Res> {
  _$SchedulePageStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedTimeSlotId = freezed,
    Object? timeSlots = null,
    Object? getTimeSlotsStatus = null,
  }) {
    return _then(_value.copyWith(
      selectedTimeSlotId: freezed == selectedTimeSlotId
          ? _value.selectedTimeSlotId
          : selectedTimeSlotId // ignore: cast_nullable_to_non_nullable
              as int?,
      timeSlots: null == timeSlots
          ? _value.timeSlots
          : timeSlots // ignore: cast_nullable_to_non_nullable
              as List<TimeSlot>,
      getTimeSlotsStatus: null == getTimeSlotsStatus
          ? _value.getTimeSlotsStatus
          : getTimeSlotsStatus // ignore: cast_nullable_to_non_nullable
              as Status,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SchedulePageStateCopyWith<$Res>
    implements $SchedulePageStateCopyWith<$Res> {
  factory _$$_SchedulePageStateCopyWith(_$_SchedulePageState value,
          $Res Function(_$_SchedulePageState) then) =
      __$$_SchedulePageStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? selectedTimeSlotId,
      List<TimeSlot> timeSlots,
      Status getTimeSlotsStatus});
}

/// @nodoc
class __$$_SchedulePageStateCopyWithImpl<$Res>
    extends _$SchedulePageStateCopyWithImpl<$Res, _$_SchedulePageState>
    implements _$$_SchedulePageStateCopyWith<$Res> {
  __$$_SchedulePageStateCopyWithImpl(
      _$_SchedulePageState _value, $Res Function(_$_SchedulePageState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedTimeSlotId = freezed,
    Object? timeSlots = null,
    Object? getTimeSlotsStatus = null,
  }) {
    return _then(_$_SchedulePageState(
      selectedTimeSlotId: freezed == selectedTimeSlotId
          ? _value.selectedTimeSlotId
          : selectedTimeSlotId // ignore: cast_nullable_to_non_nullable
              as int?,
      timeSlots: null == timeSlots
          ? _value._timeSlots
          : timeSlots // ignore: cast_nullable_to_non_nullable
              as List<TimeSlot>,
      getTimeSlotsStatus: null == getTimeSlotsStatus
          ? _value.getTimeSlotsStatus
          : getTimeSlotsStatus // ignore: cast_nullable_to_non_nullable
              as Status,
    ));
  }
}

/// @nodoc

class _$_SchedulePageState implements _SchedulePageState {
  const _$_SchedulePageState(
      {this.selectedTimeSlotId,
      final List<TimeSlot> timeSlots = const [],
      this.getTimeSlotsStatus = Status.init})
      : _timeSlots = timeSlots;

  @override
  final int? selectedTimeSlotId;
  final List<TimeSlot> _timeSlots;
  @override
  @JsonKey()
  List<TimeSlot> get timeSlots {
    if (_timeSlots is EqualUnmodifiableListView) return _timeSlots;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_timeSlots);
  }

  @override
  @JsonKey()
  final Status getTimeSlotsStatus;

  @override
  String toString() {
    return 'SchedulePageState(selectedTimeSlotId: $selectedTimeSlotId, timeSlots: $timeSlots, getTimeSlotsStatus: $getTimeSlotsStatus)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SchedulePageState &&
            (identical(other.selectedTimeSlotId, selectedTimeSlotId) ||
                other.selectedTimeSlotId == selectedTimeSlotId) &&
            const DeepCollectionEquality()
                .equals(other._timeSlots, _timeSlots) &&
            (identical(other.getTimeSlotsStatus, getTimeSlotsStatus) ||
                other.getTimeSlotsStatus == getTimeSlotsStatus));
  }

  @override
  int get hashCode => Object.hash(runtimeType, selectedTimeSlotId,
      const DeepCollectionEquality().hash(_timeSlots), getTimeSlotsStatus);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SchedulePageStateCopyWith<_$_SchedulePageState> get copyWith =>
      __$$_SchedulePageStateCopyWithImpl<_$_SchedulePageState>(
          this, _$identity);
}

abstract class _SchedulePageState implements SchedulePageState {
  const factory _SchedulePageState(
      {final int? selectedTimeSlotId,
      final List<TimeSlot> timeSlots,
      final Status getTimeSlotsStatus}) = _$_SchedulePageState;

  @override
  int? get selectedTimeSlotId;
  @override
  List<TimeSlot> get timeSlots;
  @override
  Status get getTimeSlotsStatus;
  @override
  @JsonKey(ignore: true)
  _$$_SchedulePageStateCopyWith<_$_SchedulePageState> get copyWith =>
      throw _privateConstructorUsedError;
}
