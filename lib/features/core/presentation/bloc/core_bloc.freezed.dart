// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'core_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CoreEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? getData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getData,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetData value) getData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(GetData value)? getData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetData value)? getData,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CoreEventCopyWith<$Res> {
  factory $CoreEventCopyWith(CoreEvent value, $Res Function(CoreEvent) then) =
      _$CoreEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$CoreEventCopyWithImpl<$Res> implements $CoreEventCopyWith<$Res> {
  _$CoreEventCopyWithImpl(this._value, this._then);

  final CoreEvent _value;
  // ignore: unused_field
  final $Res Function(CoreEvent) _then;
}

/// @nodoc
abstract class _$$GetDataCopyWith<$Res> {
  factory _$$GetDataCopyWith(_$GetData value, $Res Function(_$GetData) then) =
      __$$GetDataCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetDataCopyWithImpl<$Res> extends _$CoreEventCopyWithImpl<$Res>
    implements _$$GetDataCopyWith<$Res> {
  __$$GetDataCopyWithImpl(_$GetData _value, $Res Function(_$GetData) _then)
      : super(_value, (v) => _then(v as _$GetData));

  @override
  _$GetData get _value => super._value as _$GetData;
}

/// @nodoc

class _$GetData implements GetData {
  const _$GetData();

  @override
  String toString() {
    return 'CoreEvent.getData()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetData);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getData,
  }) {
    return getData();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? getData,
  }) {
    return getData?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getData,
    required TResult orElse(),
  }) {
    if (getData != null) {
      return getData();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetData value) getData,
  }) {
    return getData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(GetData value)? getData,
  }) {
    return getData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetData value)? getData,
    required TResult orElse(),
  }) {
    if (getData != null) {
      return getData(this);
    }
    return orElse();
  }
}

abstract class GetData implements CoreEvent {
  const factory GetData() = _$GetData;
}

/// @nodoc
mixin _$CoreState {
  bool get isLoading => throw _privateConstructorUsedError;
  Option<String> get attribute => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CoreStateCopyWith<CoreState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CoreStateCopyWith<$Res> {
  factory $CoreStateCopyWith(CoreState value, $Res Function(CoreState) then) =
      _$CoreStateCopyWithImpl<$Res>;
  $Res call({bool isLoading, Option<String> attribute});
}

/// @nodoc
class _$CoreStateCopyWithImpl<$Res> implements $CoreStateCopyWith<$Res> {
  _$CoreStateCopyWithImpl(this._value, this._then);

  final CoreState _value;
  // ignore: unused_field
  final $Res Function(CoreState) _then;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? attribute = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      attribute: attribute == freezed
          ? _value.attribute
          : attribute // ignore: cast_nullable_to_non_nullable
              as Option<String>,
    ));
  }
}

/// @nodoc
abstract class _$$_CoreStateCopyWith<$Res> implements $CoreStateCopyWith<$Res> {
  factory _$$_CoreStateCopyWith(
          _$_CoreState value, $Res Function(_$_CoreState) then) =
      __$$_CoreStateCopyWithImpl<$Res>;
  @override
  $Res call({bool isLoading, Option<String> attribute});
}

/// @nodoc
class __$$_CoreStateCopyWithImpl<$Res> extends _$CoreStateCopyWithImpl<$Res>
    implements _$$_CoreStateCopyWith<$Res> {
  __$$_CoreStateCopyWithImpl(
      _$_CoreState _value, $Res Function(_$_CoreState) _then)
      : super(_value, (v) => _then(v as _$_CoreState));

  @override
  _$_CoreState get _value => super._value as _$_CoreState;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? attribute = freezed,
  }) {
    return _then(_$_CoreState(
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      attribute: attribute == freezed
          ? _value.attribute
          : attribute // ignore: cast_nullable_to_non_nullable
              as Option<String>,
    ));
  }
}

/// @nodoc

class _$_CoreState implements _CoreState {
  const _$_CoreState({this.isLoading = false, required this.attribute});

  @override
  @JsonKey()
  final bool isLoading;
  @override
  final Option<String> attribute;

  @override
  String toString() {
    return 'CoreState(isLoading: $isLoading, attribute: $attribute)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CoreState &&
            const DeepCollectionEquality().equals(other.isLoading, isLoading) &&
            const DeepCollectionEquality().equals(other.attribute, attribute));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(isLoading),
      const DeepCollectionEquality().hash(attribute));

  @JsonKey(ignore: true)
  @override
  _$$_CoreStateCopyWith<_$_CoreState> get copyWith =>
      __$$_CoreStateCopyWithImpl<_$_CoreState>(this, _$identity);
}

abstract class _CoreState implements CoreState {
  const factory _CoreState(
      {final bool isLoading,
      required final Option<String> attribute}) = _$_CoreState;

  @override
  bool get isLoading => throw _privateConstructorUsedError;
  @override
  Option<String> get attribute => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_CoreStateCopyWith<_$_CoreState> get copyWith =>
      throw _privateConstructorUsedError;
}
