// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'service.freezed.dart';
part 'service.g.dart';

@freezed
class Service with _$Service {
  const factory Service({
    required int id,
    required String name,
    required String image,
    String? description,
    @JsonKey(name: "sub_services") @Default([]) List<SubService> subServices,
  }) = _Service;

  factory Service.fromJson(Map<String, dynamic> json) =>
      _$ServiceFromJson(json);
}

@freezed
class SubService with _$SubService {
  const factory SubService({
    required int id,
    required String name,
  }) = _SubService;

  factory SubService.fromJson(Map<String, dynamic> json) =>
      _$SubServiceFromJson(json);
}
