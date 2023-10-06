part of 'order_bloc.dart';

@CopyWith()
class OrderState extends BaseBlocState {
  final List<BubbleTeaEntity> bubbleTeas;
  final String searchKey;
  final bool displaySearch;

  const OrderState({
    required super.status,
    super.message,
    this.bubbleTeas = const [],
    this.searchKey = '',
    this.displaySearch = false,
  });

  factory OrderState.init() {
    return const OrderState(status: BaseStateStatus.init);
  }

  @override
  List get props => [
        status,
        bubbleTeas,
        message,
        searchKey,
        displaySearch,
      ];
}
