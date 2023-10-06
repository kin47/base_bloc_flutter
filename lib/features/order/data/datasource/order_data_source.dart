import 'package:base_bloc_3/features/order/domain/entity/bubble_tea_entity.dart';

abstract class OrderDataSource {
  Future<List<BubbleTeaEntity>> getData();
}