// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'service.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Service _$ServiceFromJson(Map<String, dynamic> json) {
  return _Service.fromJson(json);
}

/// @nodoc
mixin _$Service {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get image => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  @JsonKey(name: "sub_services")
  List<SubService> get subServices => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ServiceCopyWith<Service> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ServiceCopyWith<$Res> {
  factory $ServiceCopyWith(Service value, $Res Function(Service) then) =
      _$ServiceCopyWithImpl<$Res, Service>;
  @useResult
  $Res call(
      {int id,
      String name,
      String image,
      String? description,
      @JsonKey(name: "sub_services") List<SubService> subServices});
}

/// @nodoc
class _$ServiceCopyWithImpl<$Res, $Val extends Service>
    implements $ServiceCopyWith<$Res> {
  _$ServiceCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? image = null,
    Object? description = freezed,
    Object? subServices = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      subServices: null == subServices
          ? _value.subServices
          : subServices // ignore: cast_nullable_to_non_nullable
              as List<SubService>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ServiceCopyWith<$Res> implements $ServiceCopyWith<$Res> {
  factory _$$_ServiceCopyWith(
          _$_Service value, $Res Function(_$_Service) then) =
      __$$_ServiceCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String name,
      String image,
      String? description,
      @JsonKey(name: "sub_services") List<SubService> subServices});
}

/// @nodoc
class __$$_ServiceCopyWithImpl<$Res>
    extends _$ServiceCopyWithImpl<$Res, _$_Service>
    implements _$$_ServiceCopyWith<$Res> {
  __$$_ServiceCopyWithImpl(_$_Service _value, $Res Function(_$_Service) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? image = null,
    Object? description = freezed,
    Object? subServices = null,
  }) {
    return _then(_$_Service(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      subServices: null == subServices
          ? _value._subServices
          : subServices // ignore: cast_nullable_to_non_nullable
              as List<SubService>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Service implements _Service {
  const _$_Service(
      {required this.id,
      required this.name,
      required this.image,
      this.description,
      @JsonKey(name: "sub_services")
          final List<SubService> subServices = const []})
      : _subServices = subServices;

  factory _$_Service.fromJson(Map<String, dynamic> json) =>
      _$$_ServiceFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  final String image;
  @override
  final String? description;
  final List<SubService> _subServices;
  @override
  @JsonKey(name: "sub_services")
  List<SubService> get subServices {
    if (_subServices is EqualUnmodifiableListView) return _subServices;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_subServices);
  }

  @override
  String toString() {
    return 'Service(id: $id, name: $name, image: $image, description: $description, subServices: $subServices)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Service &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.description, description) ||
                other.description == description) &&
            const DeepCollectionEquality()
                .equals(other._subServices, _subServices));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, image, description,
      const DeepCollectionEquality().hash(_subServices));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ServiceCopyWith<_$_Service> get copyWith =>
      __$$_ServiceCopyWithImpl<_$_Service>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ServiceToJson(
      this,
    );
  }
}

abstract class _Service implements Service {
  const factory _Service(
          {required final int id,
          required final String name,
          required final String image,
          final String? description,
          @JsonKey(name: "sub_services") final List<SubService> subServices}) =
      _$_Service;

  factory _Service.fromJson(Map<String, dynamic> json) = _$_Service.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  String get image;
  @override
  String? get description;
  @override
  @JsonKey(name: "sub_services")
  List<SubService> get subServices;
  @override
  @JsonKey(ignore: true)
  _$$_ServiceCopyWith<_$_Service> get copyWith =>
      throw _privateConstructorUsedError;
}

SubService _$SubServiceFromJson(Map<String, dynamic> json) {
  return _SubService.fromJson(json);
}

/// @nodoc
mixin _$SubService {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SubServiceCopyWith<SubService> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SubServiceCopyWith<$Res> {
  factory $SubServiceCopyWith(
          SubService value, $Res Function(SubService) then) =
      _$SubServiceCopyWithImpl<$Res, SubService>;
  @useResult
  $Res call({int id, String name});
}

/// @nodoc
class _$SubServiceCopyWithImpl<$Res, $Val extends SubService>
    implements $SubServiceCopyWith<$Res> {
  _$SubServiceCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SubServiceCopyWith<$Res>
    implements $SubServiceCopyWith<$Res> {
  factory _$$_SubServiceCopyWith(
          _$_SubService value, $Res Function(_$_SubService) then) =
      __$$_SubServiceCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String name});
}

/// @nodoc
class __$$_SubServiceCopyWithImpl<$Res>
    extends _$SubServiceCopyWithImpl<$Res, _$_SubService>
    implements _$$_SubServiceCopyWith<$Res> {
  __$$_SubServiceCopyWithImpl(
      _$_SubService _value, $Res Function(_$_SubService) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
  }) {
    return _then(_$_SubService(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SubService implements _SubService {
  const _$_SubService({required this.id, required this.name});

  factory _$_SubService.fromJson(Map<String, dynamic> json) =>
      _$$_SubServiceFromJson(json);

  @override
  final int id;
  @override
  final String name;

  @override
  String toString() {
    return 'SubService(id: $id, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SubService &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SubServiceCopyWith<_$_SubService> get copyWith =>
      __$$_SubServiceCopyWithImpl<_$_SubService>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SubServiceToJson(
      this,
    );
  }
}

abstract class _SubService implements SubService {
  const factory _SubService(
      {required final int id, required final String name}) = _$_SubService;

  factory _SubService.fromJson(Map<String, dynamic> json) =
      _$_SubService.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  @JsonKey(ignore: true)
  _$$_SubServiceCopyWith<_$_SubService> get copyWith =>
      throw _privateConstructorUsedError;
}
