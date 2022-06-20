// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'example_bloc.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$ExampleStateCWProxy {
  ExampleState attribute(Option<String>? attribute);

  ExampleState message(String? message);

  ExampleState status(BaseStateStatus status);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `ExampleState(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// ExampleState(...).copyWith(id: 12, name: "My name")
  /// ````
  ExampleState call({
    Option<String>? attribute,
    String? message,
    BaseStateStatus? status,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfExampleState.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfExampleState.copyWith.fieldName(...)`
class _$ExampleStateCWProxyImpl implements _$ExampleStateCWProxy {
  final ExampleState _value;

  const _$ExampleStateCWProxyImpl(this._value);

  @override
  ExampleState attribute(Option<String>? attribute) =>
      this(attribute: attribute);

  @override
  ExampleState message(String? message) => this(message: message);

  @override
  ExampleState status(BaseStateStatus status) => this(status: status);

  @override

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `ExampleState(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// ExampleState(...).copyWith(id: 12, name: "My name")
  /// ````
  ExampleState call({
    Object? attribute = const $CopyWithPlaceholder(),
    Object? message = const $CopyWithPlaceholder(),
    Object? status = const $CopyWithPlaceholder(),
  }) {
    return ExampleState(
      attribute: attribute == const $CopyWithPlaceholder()
          ? _value.attribute
          // ignore: cast_nullable_to_non_nullable
          : attribute as Option<String>?,
      message: message == const $CopyWithPlaceholder()
          ? _value.message
          // ignore: cast_nullable_to_non_nullable
          : message as String?,
      status: status == const $CopyWithPlaceholder() || status == null
          ? _value.status
          // ignore: cast_nullable_to_non_nullable
          : status as BaseStateStatus,
    );
  }
}

extension $ExampleStateCopyWith on ExampleState {
  /// Returns a callable class that can be used as follows: `instanceOfExampleState.copyWith(...)` or like so:`instanceOfExampleState.copyWith.fieldName(...)`.
  _$ExampleStateCWProxy get copyWith => _$ExampleStateCWProxyImpl(this);
}
