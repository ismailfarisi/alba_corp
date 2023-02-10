// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'service.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Service _$$_ServiceFromJson(Map<String, dynamic> json) => _$_Service(
      id: json['id'] as int,
      name: json['name'] as String,
      image: json['image'] as String,
      description: json['description'] as String?,
      subServices: (json['sub_services'] as List<dynamic>?)
              ?.map((e) => SubService.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$_ServiceToJson(_$_Service instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'image': instance.image,
      'description': instance.description,
      'sub_services': instance.subServices,
    };

_$_SubService _$$_SubServiceFromJson(Map<String, dynamic> json) =>
    _$_SubService(
      id: json['id'] as int,
      name: json['name'] as String,
    );

Map<String, dynamic> _$$_SubServiceToJson(_$_SubService instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
    };
