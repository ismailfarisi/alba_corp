// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'saved_cards_page_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SavedCardsPageState {
  int? get selectedCardIndex => throw _privateConstructorUsedError;
  List<PaymentCard> get cards => throw _privateConstructorUsedError;
  Status get getCardsStatus => throw _privateConstructorUsedError;
  Status get addCardStatus => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SavedCardsPageStateCopyWith<SavedCardsPageState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SavedCardsPageStateCopyWith<$Res> {
  factory $SavedCardsPageStateCopyWith(
          SavedCardsPageState value, $Res Function(SavedCardsPageState) then) =
      _$SavedCardsPageStateCopyWithImpl<$Res, SavedCardsPageState>;
  @useResult
  $Res call(
      {int? selectedCardIndex,
      List<PaymentCard> cards,
      Status getCardsStatus,
      Status addCardStatus});
}

/// @nodoc
class _$SavedCardsPageStateCopyWithImpl<$Res, $Val extends SavedCardsPageState>
    implements $SavedCardsPageStateCopyWith<$Res> {
  _$SavedCardsPageStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedCardIndex = freezed,
    Object? cards = null,
    Object? getCardsStatus = null,
    Object? addCardStatus = null,
  }) {
    return _then(_value.copyWith(
      selectedCardIndex: freezed == selectedCardIndex
          ? _value.selectedCardIndex
          : selectedCardIndex // ignore: cast_nullable_to_non_nullable
              as int?,
      cards: null == cards
          ? _value.cards
          : cards // ignore: cast_nullable_to_non_nullable
              as List<PaymentCard>,
      getCardsStatus: null == getCardsStatus
          ? _value.getCardsStatus
          : getCardsStatus // ignore: cast_nullable_to_non_nullable
              as Status,
      addCardStatus: null == addCardStatus
          ? _value.addCardStatus
          : addCardStatus // ignore: cast_nullable_to_non_nullable
              as Status,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SavedCardsPageCubitCopyWith<$Res>
    implements $SavedCardsPageStateCopyWith<$Res> {
  factory _$$_SavedCardsPageCubitCopyWith(_$_SavedCardsPageCubit value,
          $Res Function(_$_SavedCardsPageCubit) then) =
      __$$_SavedCardsPageCubitCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? selectedCardIndex,
      List<PaymentCard> cards,
      Status getCardsStatus,
      Status addCardStatus});
}

/// @nodoc
class __$$_SavedCardsPageCubitCopyWithImpl<$Res>
    extends _$SavedCardsPageStateCopyWithImpl<$Res, _$_SavedCardsPageCubit>
    implements _$$_SavedCardsPageCubitCopyWith<$Res> {
  __$$_SavedCardsPageCubitCopyWithImpl(_$_SavedCardsPageCubit _value,
      $Res Function(_$_SavedCardsPageCubit) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedCardIndex = freezed,
    Object? cards = null,
    Object? getCardsStatus = null,
    Object? addCardStatus = null,
  }) {
    return _then(_$_SavedCardsPageCubit(
      selectedCardIndex: freezed == selectedCardIndex
          ? _value.selectedCardIndex
          : selectedCardIndex // ignore: cast_nullable_to_non_nullable
              as int?,
      cards: null == cards
          ? _value._cards
          : cards // ignore: cast_nullable_to_non_nullable
              as List<PaymentCard>,
      getCardsStatus: null == getCardsStatus
          ? _value.getCardsStatus
          : getCardsStatus // ignore: cast_nullable_to_non_nullable
              as Status,
      addCardStatus: null == addCardStatus
          ? _value.addCardStatus
          : addCardStatus // ignore: cast_nullable_to_non_nullable
              as Status,
    ));
  }
}

/// @nodoc

class _$_SavedCardsPageCubit implements _SavedCardsPageCubit {
  const _$_SavedCardsPageCubit(
      {this.selectedCardIndex,
      final List<PaymentCard> cards = const [],
      this.getCardsStatus = Status.init,
      this.addCardStatus = Status.init})
      : _cards = cards;

  @override
  final int? selectedCardIndex;
  final List<PaymentCard> _cards;
  @override
  @JsonKey()
  List<PaymentCard> get cards {
    if (_cards is EqualUnmodifiableListView) return _cards;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_cards);
  }

  @override
  @JsonKey()
  final Status getCardsStatus;
  @override
  @JsonKey()
  final Status addCardStatus;

  @override
  String toString() {
    return 'SavedCardsPageState(selectedCardIndex: $selectedCardIndex, cards: $cards, getCardsStatus: $getCardsStatus, addCardStatus: $addCardStatus)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SavedCardsPageCubit &&
            (identical(other.selectedCardIndex, selectedCardIndex) ||
                other.selectedCardIndex == selectedCardIndex) &&
            const DeepCollectionEquality().equals(other._cards, _cards) &&
            (identical(other.getCardsStatus, getCardsStatus) ||
                other.getCardsStatus == getCardsStatus) &&
            (identical(other.addCardStatus, addCardStatus) ||
                other.addCardStatus == addCardStatus));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      selectedCardIndex,
      const DeepCollectionEquality().hash(_cards),
      getCardsStatus,
      addCardStatus);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SavedCardsPageCubitCopyWith<_$_SavedCardsPageCubit> get copyWith =>
      __$$_SavedCardsPageCubitCopyWithImpl<_$_SavedCardsPageCubit>(
          this, _$identity);
}

abstract class _SavedCardsPageCubit implements SavedCardsPageState {
  const factory _SavedCardsPageCubit(
      {final int? selectedCardIndex,
      final List<PaymentCard> cards,
      final Status getCardsStatus,
      final Status addCardStatus}) = _$_SavedCardsPageCubit;

  @override
  int? get selectedCardIndex;
  @override
  List<PaymentCard> get cards;
  @override
  Status get getCardsStatus;
  @override
  Status get addCardStatus;
  @override
  @JsonKey(ignore: true)
  _$$_SavedCardsPageCubitCopyWith<_$_SavedCardsPageCubit> get copyWith =>
      throw _privateConstructorUsedError;
}
