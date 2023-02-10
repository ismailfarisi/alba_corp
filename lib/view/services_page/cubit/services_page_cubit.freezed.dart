// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'services_page_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ServicesPageState {
  Status get getServicesStatus => throw _privateConstructorUsedError;
  List<Service> get services => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ServicesPageStateCopyWith<ServicesPageState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ServicesPageStateCopyWith<$Res> {
  factory $ServicesPageStateCopyWith(
          ServicesPageState value, $Res Function(ServicesPageState) then) =
      _$ServicesPageStateCopyWithImpl<$Res, ServicesPageState>;
  @useResult
  $Res call({Status getServicesStatus, List<Service> services});
}

/// @nodoc
class _$ServicesPageStateCopyWithImpl<$Res, $Val extends ServicesPageState>
    implements $ServicesPageStateCopyWith<$Res> {
  _$ServicesPageStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? getServicesStatus = null,
    Object? services = null,
  }) {
    return _then(_value.copyWith(
      getServicesStatus: null == getServicesStatus
          ? _value.getServicesStatus
          : getServicesStatus // ignore: cast_nullable_to_non_nullable
              as Status,
      services: null == services
          ? _value.services
          : services // ignore: cast_nullable_to_non_nullable
              as List<Service>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ServicesPageStateCopyWith<$Res>
    implements $ServicesPageStateCopyWith<$Res> {
  factory _$$_ServicesPageStateCopyWith(_$_ServicesPageState value,
          $Res Function(_$_ServicesPageState) then) =
      __$$_ServicesPageStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Status getServicesStatus, List<Service> services});
}

/// @nodoc
class __$$_ServicesPageStateCopyWithImpl<$Res>
    extends _$ServicesPageStateCopyWithImpl<$Res, _$_ServicesPageState>
    implements _$$_ServicesPageStateCopyWith<$Res> {
  __$$_ServicesPageStateCopyWithImpl(
      _$_ServicesPageState _value, $Res Function(_$_ServicesPageState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? getServicesStatus = null,
    Object? services = null,
  }) {
    return _then(_$_ServicesPageState(
      getServicesStatus: null == getServicesStatus
          ? _value.getServicesStatus
          : getServicesStatus // ignore: cast_nullable_to_non_nullable
              as Status,
      services: null == services
          ? _value._services
          : services // ignore: cast_nullable_to_non_nullable
              as List<Service>,
    ));
  }
}

/// @nodoc

class _$_ServicesPageState implements _ServicesPageState {
  const _$_ServicesPageState(
      {this.getServicesStatus = Status.init,
      final List<Service> services = const []})
      : _services = services;

  @override
  @JsonKey()
  final Status getServicesStatus;
  final List<Service> _services;
  @override
  @JsonKey()
  List<Service> get services {
    if (_services is EqualUnmodifiableListView) return _services;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_services);
  }

  @override
  String toString() {
    return 'ServicesPageState(getServicesStatus: $getServicesStatus, services: $services)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ServicesPageState &&
            (identical(other.getServicesStatus, getServicesStatus) ||
                other.getServicesStatus == getServicesStatus) &&
            const DeepCollectionEquality().equals(other._services, _services));
  }

  @override
  int get hashCode => Object.hash(runtimeType, getServicesStatus,
      const DeepCollectionEquality().hash(_services));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ServicesPageStateCopyWith<_$_ServicesPageState> get copyWith =>
      __$$_ServicesPageStateCopyWithImpl<_$_ServicesPageState>(
          this, _$identity);
}

abstract class _ServicesPageState implements ServicesPageState {
  const factory _ServicesPageState(
      {final Status getServicesStatus,
      final List<Service> services}) = _$_ServicesPageState;

  @override
  Status get getServicesStatus;
  @override
  List<Service> get services;
  @override
  @JsonKey(ignore: true)
  _$$_ServicesPageStateCopyWith<_$_ServicesPageState> get copyWith =>
      throw _privateConstructorUsedError;
}
