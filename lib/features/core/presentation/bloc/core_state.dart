part of 'core_bloc.dart';

@freezed
class CoreState with _$CoreState {
  const factory CoreState({
    @Default(false) bool isLoading,
    required Option<String> attribute,
  }) = _CoreState;

  factory CoreState.initial() => CoreState(attribute: none());
}
