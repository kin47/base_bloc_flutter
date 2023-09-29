part of 'order_bloc.dart';

@freezed
class OrderEvent with _$OrderEvent {
  const factory OrderEvent.getData() = GetData;
  const factory OrderEvent.getBubbleTeas({
    required List<BubbleTea> bubbleTeas,
    required int offset,
  }) = GetBubbleTeas;
  const factory OrderEvent.displaySearchBar() = DisplaySearchBar;
  const factory OrderEvent.displayDropdownMenu() = DisplayDropdownMenu;
}
