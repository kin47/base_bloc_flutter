// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_bloc.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$OrderStateCWProxy {
  OrderState status(BaseStateStatus status);

  OrderState message(String? message);

  OrderState bubbleTeas(List<BubbleTea> bubbleTeas);

  OrderState searchKey(String searchKey);

  OrderState displaySearch(bool displaySearch);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `OrderState(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// OrderState(...).copyWith(id: 12, name: "My name")
  /// ````
  OrderState call({
    BaseStateStatus? status,
    String? message,
    List<BubbleTea>? bubbleTeas,
    String? searchKey,
    bool? displaySearch,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfOrderState.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfOrderState.copyWith.fieldName(...)`
class _$OrderStateCWProxyImpl implements _$OrderStateCWProxy {
  const _$OrderStateCWProxyImpl(this._value);

  final OrderState _value;

  @override
  OrderState status(BaseStateStatus status) => this(status: status);

  @override
  OrderState message(String? message) => this(message: message);

  @override
  OrderState bubbleTeas(List<BubbleTea> bubbleTeas) =>
      this(bubbleTeas: bubbleTeas);

  @override
  OrderState searchKey(String searchKey) => this(searchKey: searchKey);

  @override
  OrderState displaySearch(bool displaySearch) =>
      this(displaySearch: displaySearch);

  @override

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `OrderState(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// OrderState(...).copyWith(id: 12, name: "My name")
  /// ````
  OrderState call({
    Object? status = const $CopyWithPlaceholder(),
    Object? message = const $CopyWithPlaceholder(),
    Object? bubbleTeas = const $CopyWithPlaceholder(),
    Object? searchKey = const $CopyWithPlaceholder(),
    Object? displaySearch = const $CopyWithPlaceholder(),
  }) {
    return OrderState(
      status: status == const $CopyWithPlaceholder() || status == null
          ? _value.status
          // ignore: cast_nullable_to_non_nullable
          : status as BaseStateStatus,
      message: message == const $CopyWithPlaceholder()
          ? _value.message
          // ignore: cast_nullable_to_non_nullable
          : message as String?,
      bubbleTeas:
          bubbleTeas == const $CopyWithPlaceholder() || bubbleTeas == null
              ? _value.bubbleTeas
              // ignore: cast_nullable_to_non_nullable
              : bubbleTeas as List<BubbleTea>,
      searchKey: searchKey == const $CopyWithPlaceholder() || searchKey == null
          ? _value.searchKey
          // ignore: cast_nullable_to_non_nullable
          : searchKey as String,
      displaySearch:
          displaySearch == const $CopyWithPlaceholder() || displaySearch == null
              ? _value.displaySearch
              // ignore: cast_nullable_to_non_nullable
              : displaySearch as bool,
    );
  }
}

extension $OrderStateCopyWith on OrderState {
  /// Returns a callable class that can be used as follows: `instanceOfOrderState.copyWith(...)` or like so:`instanceOfOrderState.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$OrderStateCWProxy get copyWith => _$OrderStateCWProxyImpl(this);
}
