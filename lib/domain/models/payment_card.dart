// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'payment_card.freezed.dart';
part 'payment_card.g.dart';

@freezed
class PaymentCard with _$PaymentCard {
  const factory PaymentCard({
    required int id,
    required String brand,
    @JsonKey(name: "card_number") required String cardNumber,
    required String name,
    @JsonKey(name: "exp_month") required int expMonth,
    @JsonKey(name: "exp_year") required int expYear,
    @Default(false) bool isDefault,
  }) = _PaymentCard;

  factory PaymentCard.fromJson(Map<String, dynamic> json) =>
      _$PaymentCardFromJson(json);
}
