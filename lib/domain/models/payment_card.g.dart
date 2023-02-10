// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payment_card.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PaymentCard _$$_PaymentCardFromJson(Map<String, dynamic> json) =>
    _$_PaymentCard(
      id: json['id'] as int,
      brand: json['brand'] as String,
      cardNumber: json['card_number'] as String,
      name: json['name'] as String,
      expMonth: json['exp_month'] as int,
      expYear: json['exp_year'] as int,
      isDefault: json['isDefault'] as bool? ?? false,
    );

Map<String, dynamic> _$$_PaymentCardToJson(_$_PaymentCard instance) =>
    <String, dynamic>{
      'id': instance.id,
      'brand': instance.brand,
      'card_number': instance.cardNumber,
      'name': instance.name,
      'exp_month': instance.expMonth,
      'exp_year': instance.expYear,
      'isDefault': instance.isDefault,
    };
