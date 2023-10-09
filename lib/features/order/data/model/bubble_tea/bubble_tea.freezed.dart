// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'bubble_tea.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

BubbleTea _$BubbleTeaFromJson(Map<String, dynamic> json) {
  return _BubbleTea.fromJson(json);
}

/// @nodoc
mixin _$BubbleTea {
  @JsonKey(name: "login")
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: "url")
  String? get description => throw _privateConstructorUsedError;
  @JsonKey(name: "avatar_url")
  String? get image => throw _privateConstructorUsedError;
  @JsonKey(name: "id")
  int? get price => throw _privateConstructorUsedError;
  @JsonKey(name: "site_admin")
  bool? get bestSeller => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BubbleTeaCopyWith<BubbleTea> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BubbleTeaCopyWith<$Res> {
  factory $BubbleTeaCopyWith(BubbleTea value, $Res Function(BubbleTea) then) =
      _$BubbleTeaCopyWithImpl<$Res, BubbleTea>;
  @useResult
  $Res call(
      {@JsonKey(name: "login") String? name,
      @JsonKey(name: "url") String? description,
      @JsonKey(name: "avatar_url") String? image,
      @JsonKey(name: "id") int? price,
      @JsonKey(name: "site_admin") bool? bestSeller});
}

/// @nodoc
class _$BubbleTeaCopyWithImpl<$Res, $Val extends BubbleTea>
    implements $BubbleTeaCopyWith<$Res> {
  _$BubbleTeaCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? description = freezed,
    Object? image = freezed,
    Object? price = freezed,
    Object? bestSeller = freezed,
  }) {
    return _then(_value.copyWith(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int?,
      bestSeller: freezed == bestSeller
          ? _value.bestSeller
          : bestSeller // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_BubbleTeaCopyWith<$Res> implements $BubbleTeaCopyWith<$Res> {
  factory _$$_BubbleTeaCopyWith(
          _$_BubbleTea value, $Res Function(_$_BubbleTea) then) =
      __$$_BubbleTeaCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "login") String? name,
      @JsonKey(name: "url") String? description,
      @JsonKey(name: "avatar_url") String? image,
      @JsonKey(name: "id") int? price,
      @JsonKey(name: "site_admin") bool? bestSeller});
}

/// @nodoc
class __$$_BubbleTeaCopyWithImpl<$Res>
    extends _$BubbleTeaCopyWithImpl<$Res, _$_BubbleTea>
    implements _$$_BubbleTeaCopyWith<$Res> {
  __$$_BubbleTeaCopyWithImpl(
      _$_BubbleTea _value, $Res Function(_$_BubbleTea) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? description = freezed,
    Object? image = freezed,
    Object? price = freezed,
    Object? bestSeller = freezed,
  }) {
    return _then(_$_BubbleTea(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int?,
      bestSeller: freezed == bestSeller
          ? _value.bestSeller
          : bestSeller // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_BubbleTea implements _BubbleTea {
  const _$_BubbleTea(
      {@JsonKey(name: "login") this.name,
      @JsonKey(name: "url") this.description,
      @JsonKey(name: "avatar_url") this.image,
      @JsonKey(name: "id") this.price,
      @JsonKey(name: "site_admin") this.bestSeller});

  factory _$_BubbleTea.fromJson(Map<String, dynamic> json) =>
      _$$_BubbleTeaFromJson(json);

  @override
  @JsonKey(name: "login")
  final String? name;
  @override
  @JsonKey(name: "url")
  final String? description;
  @override
  @JsonKey(name: "avatar_url")
  final String? image;
  @override
  @JsonKey(name: "id")
  final int? price;
  @override
  @JsonKey(name: "site_admin")
  final bool? bestSeller;

  @override
  String toString() {
    return 'BubbleTea(name: $name, description: $description, image: $image, price: $price, bestSeller: $bestSeller)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_BubbleTea &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.bestSeller, bestSeller) ||
                other.bestSeller == bestSeller));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, name, description, image, price, bestSeller);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_BubbleTeaCopyWith<_$_BubbleTea> get copyWith =>
      __$$_BubbleTeaCopyWithImpl<_$_BubbleTea>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_BubbleTeaToJson(
      this,
    );
  }
}

abstract class _BubbleTea implements BubbleTea {
  const factory _BubbleTea(
      {@JsonKey(name: "login") final String? name,
      @JsonKey(name: "url") final String? description,
      @JsonKey(name: "avatar_url") final String? image,
      @JsonKey(name: "id") final int? price,
      @JsonKey(name: "site_admin") final bool? bestSeller}) = _$_BubbleTea;

  factory _BubbleTea.fromJson(Map<String, dynamic> json) =
      _$_BubbleTea.fromJson;

  @override
  @JsonKey(name: "login")
  String? get name;
  @override
  @JsonKey(name: "url")
  String? get description;
  @override
  @JsonKey(name: "avatar_url")
  String? get image;
  @override
  @JsonKey(name: "id")
  int? get price;
  @override
  @JsonKey(name: "site_admin")
  bool? get bestSeller;
  @override
  @JsonKey(ignore: true)
  _$$_BubbleTeaCopyWith<_$_BubbleTea> get copyWith =>
      throw _privateConstructorUsedError;
}
