// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'order_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$OrderEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getData,
    required TResult Function(List<BubbleTea> bubbleTeas, int offset)
        getBubbleTeas,
    required TResult Function() displaySearchBar,
    required TResult Function() displayDropdownMenu,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getData,
    TResult? Function(List<BubbleTea> bubbleTeas, int offset)? getBubbleTeas,
    TResult? Function()? displaySearchBar,
    TResult? Function()? displayDropdownMenu,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getData,
    TResult Function(List<BubbleTea> bubbleTeas, int offset)? getBubbleTeas,
    TResult Function()? displaySearchBar,
    TResult Function()? displayDropdownMenu,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetData value) getData,
    required TResult Function(GetBubbleTeas value) getBubbleTeas,
    required TResult Function(DisplaySearchBar value) displaySearchBar,
    required TResult Function(DisplayDropdownMenu value) displayDropdownMenu,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetData value)? getData,
    TResult? Function(GetBubbleTeas value)? getBubbleTeas,
    TResult? Function(DisplaySearchBar value)? displaySearchBar,
    TResult? Function(DisplayDropdownMenu value)? displayDropdownMenu,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetData value)? getData,
    TResult Function(GetBubbleTeas value)? getBubbleTeas,
    TResult Function(DisplaySearchBar value)? displaySearchBar,
    TResult Function(DisplayDropdownMenu value)? displayDropdownMenu,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderEventCopyWith<$Res> {
  factory $OrderEventCopyWith(
          OrderEvent value, $Res Function(OrderEvent) then) =
      _$OrderEventCopyWithImpl<$Res, OrderEvent>;
}

/// @nodoc
class _$OrderEventCopyWithImpl<$Res, $Val extends OrderEvent>
    implements $OrderEventCopyWith<$Res> {
  _$OrderEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetDataCopyWith<$Res> {
  factory _$$GetDataCopyWith(_$GetData value, $Res Function(_$GetData) then) =
      __$$GetDataCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetDataCopyWithImpl<$Res>
    extends _$OrderEventCopyWithImpl<$Res, _$GetData>
    implements _$$GetDataCopyWith<$Res> {
  __$$GetDataCopyWithImpl(_$GetData _value, $Res Function(_$GetData) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetData implements GetData {
  const _$GetData();

  @override
  String toString() {
    return 'OrderEvent.getData()';
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
    required TResult Function(List<BubbleTea> bubbleTeas, int offset)
        getBubbleTeas,
    required TResult Function() displaySearchBar,
    required TResult Function() displayDropdownMenu,
  }) {
    return getData();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getData,
    TResult? Function(List<BubbleTea> bubbleTeas, int offset)? getBubbleTeas,
    TResult? Function()? displaySearchBar,
    TResult? Function()? displayDropdownMenu,
  }) {
    return getData?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getData,
    TResult Function(List<BubbleTea> bubbleTeas, int offset)? getBubbleTeas,
    TResult Function()? displaySearchBar,
    TResult Function()? displayDropdownMenu,
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
    required TResult Function(GetBubbleTeas value) getBubbleTeas,
    required TResult Function(DisplaySearchBar value) displaySearchBar,
    required TResult Function(DisplayDropdownMenu value) displayDropdownMenu,
  }) {
    return getData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetData value)? getData,
    TResult? Function(GetBubbleTeas value)? getBubbleTeas,
    TResult? Function(DisplaySearchBar value)? displaySearchBar,
    TResult? Function(DisplayDropdownMenu value)? displayDropdownMenu,
  }) {
    return getData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetData value)? getData,
    TResult Function(GetBubbleTeas value)? getBubbleTeas,
    TResult Function(DisplaySearchBar value)? displaySearchBar,
    TResult Function(DisplayDropdownMenu value)? displayDropdownMenu,
    required TResult orElse(),
  }) {
    if (getData != null) {
      return getData(this);
    }
    return orElse();
  }
}

abstract class GetData implements OrderEvent {
  const factory GetData() = _$GetData;
}

/// @nodoc
abstract class _$$GetBubbleTeasCopyWith<$Res> {
  factory _$$GetBubbleTeasCopyWith(
          _$GetBubbleTeas value, $Res Function(_$GetBubbleTeas) then) =
      __$$GetBubbleTeasCopyWithImpl<$Res>;
  @useResult
  $Res call({List<BubbleTea> bubbleTeas, int offset});
}

/// @nodoc
class __$$GetBubbleTeasCopyWithImpl<$Res>
    extends _$OrderEventCopyWithImpl<$Res, _$GetBubbleTeas>
    implements _$$GetBubbleTeasCopyWith<$Res> {
  __$$GetBubbleTeasCopyWithImpl(
      _$GetBubbleTeas _value, $Res Function(_$GetBubbleTeas) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bubbleTeas = null,
    Object? offset = null,
  }) {
    return _then(_$GetBubbleTeas(
      bubbleTeas: null == bubbleTeas
          ? _value._bubbleTeas
          : bubbleTeas // ignore: cast_nullable_to_non_nullable
              as List<BubbleTea>,
      offset: null == offset
          ? _value.offset
          : offset // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$GetBubbleTeas implements GetBubbleTeas {
  const _$GetBubbleTeas(
      {required final List<BubbleTea> bubbleTeas, required this.offset})
      : _bubbleTeas = bubbleTeas;

  final List<BubbleTea> _bubbleTeas;
  @override
  List<BubbleTea> get bubbleTeas {
    if (_bubbleTeas is EqualUnmodifiableListView) return _bubbleTeas;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_bubbleTeas);
  }

  @override
  final int offset;

  @override
  String toString() {
    return 'OrderEvent.getBubbleTeas(bubbleTeas: $bubbleTeas, offset: $offset)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetBubbleTeas &&
            const DeepCollectionEquality()
                .equals(other._bubbleTeas, _bubbleTeas) &&
            (identical(other.offset, offset) || other.offset == offset));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_bubbleTeas), offset);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetBubbleTeasCopyWith<_$GetBubbleTeas> get copyWith =>
      __$$GetBubbleTeasCopyWithImpl<_$GetBubbleTeas>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getData,
    required TResult Function(List<BubbleTea> bubbleTeas, int offset)
        getBubbleTeas,
    required TResult Function() displaySearchBar,
    required TResult Function() displayDropdownMenu,
  }) {
    return getBubbleTeas(bubbleTeas, offset);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getData,
    TResult? Function(List<BubbleTea> bubbleTeas, int offset)? getBubbleTeas,
    TResult? Function()? displaySearchBar,
    TResult? Function()? displayDropdownMenu,
  }) {
    return getBubbleTeas?.call(bubbleTeas, offset);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getData,
    TResult Function(List<BubbleTea> bubbleTeas, int offset)? getBubbleTeas,
    TResult Function()? displaySearchBar,
    TResult Function()? displayDropdownMenu,
    required TResult orElse(),
  }) {
    if (getBubbleTeas != null) {
      return getBubbleTeas(bubbleTeas, offset);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetData value) getData,
    required TResult Function(GetBubbleTeas value) getBubbleTeas,
    required TResult Function(DisplaySearchBar value) displaySearchBar,
    required TResult Function(DisplayDropdownMenu value) displayDropdownMenu,
  }) {
    return getBubbleTeas(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetData value)? getData,
    TResult? Function(GetBubbleTeas value)? getBubbleTeas,
    TResult? Function(DisplaySearchBar value)? displaySearchBar,
    TResult? Function(DisplayDropdownMenu value)? displayDropdownMenu,
  }) {
    return getBubbleTeas?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetData value)? getData,
    TResult Function(GetBubbleTeas value)? getBubbleTeas,
    TResult Function(DisplaySearchBar value)? displaySearchBar,
    TResult Function(DisplayDropdownMenu value)? displayDropdownMenu,
    required TResult orElse(),
  }) {
    if (getBubbleTeas != null) {
      return getBubbleTeas(this);
    }
    return orElse();
  }
}

abstract class GetBubbleTeas implements OrderEvent {
  const factory GetBubbleTeas(
      {required final List<BubbleTea> bubbleTeas,
      required final int offset}) = _$GetBubbleTeas;

  List<BubbleTea> get bubbleTeas;
  int get offset;
  @JsonKey(ignore: true)
  _$$GetBubbleTeasCopyWith<_$GetBubbleTeas> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DisplaySearchBarCopyWith<$Res> {
  factory _$$DisplaySearchBarCopyWith(
          _$DisplaySearchBar value, $Res Function(_$DisplaySearchBar) then) =
      __$$DisplaySearchBarCopyWithImpl<$Res>;
}

/// @nodoc
class __$$DisplaySearchBarCopyWithImpl<$Res>
    extends _$OrderEventCopyWithImpl<$Res, _$DisplaySearchBar>
    implements _$$DisplaySearchBarCopyWith<$Res> {
  __$$DisplaySearchBarCopyWithImpl(
      _$DisplaySearchBar _value, $Res Function(_$DisplaySearchBar) _then)
      : super(_value, _then);
}

/// @nodoc

class _$DisplaySearchBar implements DisplaySearchBar {
  const _$DisplaySearchBar();

  @override
  String toString() {
    return 'OrderEvent.displaySearchBar()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$DisplaySearchBar);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getData,
    required TResult Function(List<BubbleTea> bubbleTeas, int offset)
        getBubbleTeas,
    required TResult Function() displaySearchBar,
    required TResult Function() displayDropdownMenu,
  }) {
    return displaySearchBar();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getData,
    TResult? Function(List<BubbleTea> bubbleTeas, int offset)? getBubbleTeas,
    TResult? Function()? displaySearchBar,
    TResult? Function()? displayDropdownMenu,
  }) {
    return displaySearchBar?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getData,
    TResult Function(List<BubbleTea> bubbleTeas, int offset)? getBubbleTeas,
    TResult Function()? displaySearchBar,
    TResult Function()? displayDropdownMenu,
    required TResult orElse(),
  }) {
    if (displaySearchBar != null) {
      return displaySearchBar();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetData value) getData,
    required TResult Function(GetBubbleTeas value) getBubbleTeas,
    required TResult Function(DisplaySearchBar value) displaySearchBar,
    required TResult Function(DisplayDropdownMenu value) displayDropdownMenu,
  }) {
    return displaySearchBar(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetData value)? getData,
    TResult? Function(GetBubbleTeas value)? getBubbleTeas,
    TResult? Function(DisplaySearchBar value)? displaySearchBar,
    TResult? Function(DisplayDropdownMenu value)? displayDropdownMenu,
  }) {
    return displaySearchBar?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetData value)? getData,
    TResult Function(GetBubbleTeas value)? getBubbleTeas,
    TResult Function(DisplaySearchBar value)? displaySearchBar,
    TResult Function(DisplayDropdownMenu value)? displayDropdownMenu,
    required TResult orElse(),
  }) {
    if (displaySearchBar != null) {
      return displaySearchBar(this);
    }
    return orElse();
  }
}

abstract class DisplaySearchBar implements OrderEvent {
  const factory DisplaySearchBar() = _$DisplaySearchBar;
}

/// @nodoc
abstract class _$$DisplayDropdownMenuCopyWith<$Res> {
  factory _$$DisplayDropdownMenuCopyWith(_$DisplayDropdownMenu value,
          $Res Function(_$DisplayDropdownMenu) then) =
      __$$DisplayDropdownMenuCopyWithImpl<$Res>;
}

/// @nodoc
class __$$DisplayDropdownMenuCopyWithImpl<$Res>
    extends _$OrderEventCopyWithImpl<$Res, _$DisplayDropdownMenu>
    implements _$$DisplayDropdownMenuCopyWith<$Res> {
  __$$DisplayDropdownMenuCopyWithImpl(
      _$DisplayDropdownMenu _value, $Res Function(_$DisplayDropdownMenu) _then)
      : super(_value, _then);
}

/// @nodoc

class _$DisplayDropdownMenu implements DisplayDropdownMenu {
  const _$DisplayDropdownMenu();

  @override
  String toString() {
    return 'OrderEvent.displayDropdownMenu()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$DisplayDropdownMenu);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getData,
    required TResult Function(List<BubbleTea> bubbleTeas, int offset)
        getBubbleTeas,
    required TResult Function() displaySearchBar,
    required TResult Function() displayDropdownMenu,
  }) {
    return displayDropdownMenu();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getData,
    TResult? Function(List<BubbleTea> bubbleTeas, int offset)? getBubbleTeas,
    TResult? Function()? displaySearchBar,
    TResult? Function()? displayDropdownMenu,
  }) {
    return displayDropdownMenu?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getData,
    TResult Function(List<BubbleTea> bubbleTeas, int offset)? getBubbleTeas,
    TResult Function()? displaySearchBar,
    TResult Function()? displayDropdownMenu,
    required TResult orElse(),
  }) {
    if (displayDropdownMenu != null) {
      return displayDropdownMenu();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetData value) getData,
    required TResult Function(GetBubbleTeas value) getBubbleTeas,
    required TResult Function(DisplaySearchBar value) displaySearchBar,
    required TResult Function(DisplayDropdownMenu value) displayDropdownMenu,
  }) {
    return displayDropdownMenu(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetData value)? getData,
    TResult? Function(GetBubbleTeas value)? getBubbleTeas,
    TResult? Function(DisplaySearchBar value)? displaySearchBar,
    TResult? Function(DisplayDropdownMenu value)? displayDropdownMenu,
  }) {
    return displayDropdownMenu?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetData value)? getData,
    TResult Function(GetBubbleTeas value)? getBubbleTeas,
    TResult Function(DisplaySearchBar value)? displaySearchBar,
    TResult Function(DisplayDropdownMenu value)? displayDropdownMenu,
    required TResult orElse(),
  }) {
    if (displayDropdownMenu != null) {
      return displayDropdownMenu(this);
    }
    return orElse();
  }
}

abstract class DisplayDropdownMenu implements OrderEvent {
  const factory DisplayDropdownMenu() = _$DisplayDropdownMenu;
}
