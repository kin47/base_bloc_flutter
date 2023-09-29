import 'package:base_bloc_3/base/network/errors/error.dart';
import 'package:base_bloc_3/features/order/domain/entity/bubble_tea_entity.dart';
import 'package:dartz/dartz.dart';

abstract class OrderRepository {
  Future<Either<BaseError, List<BubbleTeaEntity>>> getData();
}
