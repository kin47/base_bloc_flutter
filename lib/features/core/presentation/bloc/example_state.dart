part of 'example_bloc.dart';

@CopyWith()
class ExampleState extends BaseBlocState {
  final Option<String>? attribute;

  const ExampleState({
    required super.status,
    super.message,
    this.attribute,
  });

  factory ExampleState.init() {
    return const ExampleState(status: BaseStateStatus.init);
  }

  @override
  List get props => [status, message];
}
