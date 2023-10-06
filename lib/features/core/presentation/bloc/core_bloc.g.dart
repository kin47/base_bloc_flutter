// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'core_bloc.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$CoreStateCWProxy {
  CoreState status(BaseStateStatus status);

  CoreState message(String? message);

  CoreState index(int index);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `CoreState(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// CoreState(...).copyWith(id: 12, name: "My name")
  /// ````
  CoreState call({
    BaseStateStatus? status,
    String? message,
    int? index,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfCoreState.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfCoreState.copyWith.fieldName(...)`
class _$CoreStateCWProxyImpl implements _$CoreStateCWProxy {
  const _$CoreStateCWProxyImpl(this._value);

  final CoreState _value;

  @override
  CoreState status(BaseStateStatus status) => this(status: status);

  @override
  CoreState message(String? message) => this(message: message);

  @override
  CoreState index(int index) => this(index: index);

  @override

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `CoreState(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// CoreState(...).copyWith(id: 12, name: "My name")
  /// ````
  CoreState call({
    Object? status = const $CopyWithPlaceholder(),
    Object? message = const $CopyWithPlaceholder(),
    Object? index = const $CopyWithPlaceholder(),
  }) {
    return CoreState(
      status: status == const $CopyWithPlaceholder() || status == null
          ? _value.status
          // ignore: cast_nullable_to_non_nullable
          : status as BaseStateStatus,
      message: message == const $CopyWithPlaceholder()
          ? _value.message
          // ignore: cast_nullable_to_non_nullable
          : message as String?,
      index: index == const $CopyWithPlaceholder() || index == null
          ? _value.index
          // ignore: cast_nullable_to_non_nullable
          : index as int,
    );
  }
}

extension $CoreStateCopyWith on CoreState {
  /// Returns a callable class that can be used as follows: `instanceOfCoreState.copyWith(...)` or like so:`instanceOfCoreState.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$CoreStateCWProxy get copyWith => _$CoreStateCWProxyImpl(this);
}
