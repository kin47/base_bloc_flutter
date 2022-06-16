// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'base_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

BaseModel _$BaseModelFromJson(Map<String, dynamic> json) {
  return _BaseModel.fromJson(json);
}

/// @nodoc
mixin _$BaseModel {
  String? get attribute => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BaseModelCopyWith<BaseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BaseModelCopyWith<$Res> {
  factory $BaseModelCopyWith(BaseModel value, $Res Function(BaseModel) then) =
      _$BaseModelCopyWithImpl<$Res>;
  $Res call({String? attribute});
}

/// @nodoc
class _$BaseModelCopyWithImpl<$Res> implements $BaseModelCopyWith<$Res> {
  _$BaseModelCopyWithImpl(this._value, this._then);

  final BaseModel _value;
  // ignore: unused_field
  final $Res Function(BaseModel) _then;

  @override
  $Res call({
    Object? attribute = freezed,
  }) {
    return _then(_value.copyWith(
      attribute: attribute == freezed
          ? _value.attribute
          : attribute // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$$_BaseModelCopyWith<$Res> implements $BaseModelCopyWith<$Res> {
  factory _$$_BaseModelCopyWith(
          _$_BaseModel value, $Res Function(_$_BaseModel) then) =
      __$$_BaseModelCopyWithImpl<$Res>;
  @override
  $Res call({String? attribute});
}

/// @nodoc
class __$$_BaseModelCopyWithImpl<$Res> extends _$BaseModelCopyWithImpl<$Res>
    implements _$$_BaseModelCopyWith<$Res> {
  __$$_BaseModelCopyWithImpl(
      _$_BaseModel _value, $Res Function(_$_BaseModel) _then)
      : super(_value, (v) => _then(v as _$_BaseModel));

  @override
  _$_BaseModel get _value => super._value as _$_BaseModel;

  @override
  $Res call({
    Object? attribute = freezed,
  }) {
    return _then(_$_BaseModel(
      attribute: attribute == freezed
          ? _value.attribute
          : attribute // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_BaseModel implements _BaseModel {
  const _$_BaseModel({this.attribute});

  factory _$_BaseModel.fromJson(Map<String, dynamic> json) =>
      _$$_BaseModelFromJson(json);

  @override
  final String? attribute;

  @override
  String toString() {
    return 'BaseModel(attribute: $attribute)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_BaseModel &&
            const DeepCollectionEquality().equals(other.attribute, attribute));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(attribute));

  @JsonKey(ignore: true)
  @override
  _$$_BaseModelCopyWith<_$_BaseModel> get copyWith =>
      __$$_BaseModelCopyWithImpl<_$_BaseModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_BaseModelToJson(this);
  }
}

abstract class _BaseModel implements BaseModel {
  const factory _BaseModel({final String? attribute}) = _$_BaseModel;

  factory _BaseModel.fromJson(Map<String, dynamic> json) =
      _$_BaseModel.fromJson;

  @override
  String? get attribute => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_BaseModelCopyWith<_$_BaseModel> get copyWith =>
      throw _privateConstructorUsedError;
}
