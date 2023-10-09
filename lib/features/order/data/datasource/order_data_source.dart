import 'package:base_bloc_3/features/order/data/model/bubble_tea/bubble_tea.dart';

abstract class OrderDataSource {
  Future<List<BubbleTea>> getData({required int offset});
}
