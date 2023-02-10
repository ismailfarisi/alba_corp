// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'payment_card.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PaymentCard _$PaymentCardFromJson(Map<String, dynamic> json) {
  return _PaymentCard.fromJson(json);
}

/// @nodoc
mixin _$PaymentCard {
  int get id => throw _privateConstructorUsedError;
  String get brand => throw _privateConstructorUsedError;
  @JsonKey(name: "card_number")
  String get cardNumber => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: "exp_month")
  int get expMonth => throw _privateConstructorUsedError;
  @JsonKey(name: "exp_year")
  int get expYear => throw _privateConstructorUsedError;
  bool get isDefault => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PaymentCardCopyWith<PaymentCard> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaymentCardCopyWith<$Res> {
  factory $PaymentCardCopyWith(
          PaymentCard value, $Res Function(PaymentCard) then) =
      _$PaymentCardCopyWithImpl<$Res, PaymentCard>;
  @useResult
  $Res call(
      {int id,
      String brand,
      @JsonKey(name: "card_number") String cardNumber,
      String name,
      @JsonKey(name: "exp_month") int expMonth,
      @JsonKey(name: "exp_year") int expYear,
      bool isDefault});
}

/// @nodoc
class _$PaymentCardCopyWithImpl<$Res, $Val extends PaymentCard>
    implements $PaymentCardCopyWith<$Res> {
  _$PaymentCardCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? brand = null,
    Object? cardNumber = null,
    Object? name = null,
    Object? expMonth = null,
    Object? expYear = null,
    Object? isDefault = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      brand: null == brand
          ? _value.brand
          : brand // ignore: cast_nullable_to_non_nullable
              as String,
      cardNumber: null == cardNumber
          ? _value.cardNumber
          : cardNumber // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      expMonth: null == expMonth
          ? _value.expMonth
          : expMonth // ignore: cast_nullable_to_non_nullable
              as int,
      expYear: null == expYear
          ? _value.expYear
          : expYear // ignore: cast_nullable_to_non_nullable
              as int,
      isDefault: null == isDefault
          ? _value.isDefault
          : isDefault // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PaymentCardCopyWith<$Res>
    implements $PaymentCardCopyWith<$Res> {
  factory _$$_PaymentCardCopyWith(
          _$_PaymentCard value, $Res Function(_$_PaymentCard) then) =
      __$$_PaymentCardCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String brand,
      @JsonKey(name: "card_number") String cardNumber,
      String name,
      @JsonKey(name: "exp_month") int expMonth,
      @JsonKey(name: "exp_year") int expYear,
      bool isDefault});
}

/// @nodoc
class __$$_PaymentCardCopyWithImpl<$Res>
    extends _$PaymentCardCopyWithImpl<$Res, _$_PaymentCard>
    implements _$$_PaymentCardCopyWith<$Res> {
  __$$_PaymentCardCopyWithImpl(
      _$_PaymentCard _value, $Res Function(_$_PaymentCard) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? brand = null,
    Object? cardNumber = null,
    Object? name = null,
    Object? expMonth = null,
    Object? expYear = null,
    Object? isDefault = null,
  }) {
    return _then(_$_PaymentCard(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      brand: null == brand
          ? _value.brand
          : brand // ignore: cast_nullable_to_non_nullable
              as String,
      cardNumber: null == cardNumber
          ? _value.cardNumber
          : cardNumber // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      expMonth: null == expMonth
          ? _value.expMonth
          : expMonth // ignore: cast_nullable_to_non_nullable
              as int,
      expYear: null == expYear
          ? _value.expYear
          : expYear // ignore: cast_nullable_to_non_nullable
              as int,
      isDefault: null == isDefault
          ? _value.isDefault
          : isDefault // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PaymentCard implements _PaymentCard {
  const _$_PaymentCard(
      {required this.id,
      required this.brand,
      @JsonKey(name: "card_number") required this.cardNumber,
      required this.name,
      @JsonKey(name: "exp_month") required this.expMonth,
      @JsonKey(name: "exp_year") required this.expYear,
      this.isDefault = false});

  factory _$_PaymentCard.fromJson(Map<String, dynamic> json) =>
      _$$_PaymentCardFromJson(json);

  @override
  final int id;
  @override
  final String brand;
  @override
  @JsonKey(name: "card_number")
  final String cardNumber;
  @override
  final String name;
  @override
  @JsonKey(name: "exp_month")
  final int expMonth;
  @override
  @JsonKey(name: "exp_year")
  final int expYear;
  @override
  @JsonKey()
  final bool isDefault;

  @override
  String toString() {
    return 'PaymentCard(id: $id, brand: $brand, cardNumber: $cardNumber, name: $name, expMonth: $expMonth, expYear: $expYear, isDefault: $isDefault)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PaymentCard &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.brand, brand) || other.brand == brand) &&
            (identical(other.cardNumber, cardNumber) ||
                other.cardNumber == cardNumber) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.expMonth, expMonth) ||
                other.expMonth == expMonth) &&
            (identical(other.expYear, expYear) || other.expYear == expYear) &&
            (identical(other.isDefault, isDefault) ||
                other.isDefault == isDefault));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, brand, cardNumber, name, expMonth, expYear, isDefault);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PaymentCardCopyWith<_$_PaymentCard> get copyWith =>
      __$$_PaymentCardCopyWithImpl<_$_PaymentCard>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PaymentCardToJson(
      this,
    );
  }
}

abstract class _PaymentCard implements PaymentCard {
  const factory _PaymentCard(
      {required final int id,
      required final String brand,
      @JsonKey(name: "card_number") required final String cardNumber,
      required final String name,
      @JsonKey(name: "exp_month") required final int expMonth,
      @JsonKey(name: "exp_year") required final int expYear,
      final bool isDefault}) = _$_PaymentCard;

  factory _PaymentCard.fromJson(Map<String, dynamic> json) =
      _$_PaymentCard.fromJson;

  @override
  int get id;
  @override
  String get brand;
  @override
  @JsonKey(name: "card_number")
  String get cardNumber;
  @override
  String get name;
  @override
  @JsonKey(name: "exp_month")
  int get expMonth;
  @override
  @JsonKey(name: "exp_year")
  int get expYear;
  @override
  bool get isDefault;
  @override
  @JsonKey(ignore: true)
  _$$_PaymentCardCopyWith<_$_PaymentCard> get copyWith =>
      throw _privateConstructorUsedError;
}
