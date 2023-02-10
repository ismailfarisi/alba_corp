import 'package:freezed_annotation/freezed_annotation.dart';

part 'result.freezed.dart';

@freezed
class Result<T> with _$Result {
  const factory Result.success(T data) = _Success;
  const factory Result.error([Exception? exception]) = _Error;
}
