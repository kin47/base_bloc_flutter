part of 'order_bloc.dart';

@CopyWith()
class OrderState extends BaseBlocState {
  final List<BubbleTeaEntity> bubbleTeas;
  const OrderState({
    required super.status,
    super.message,
    this.bubbleTeas = const [],
  });

  factory OrderState.init() {
    return const OrderState(status: BaseStateStatus.init);
  }

  @override
  List get props => [status, bubbleTeas, message];
}
