import 'package:base_bloc_3/base/network/errors/error.dart';
import 'package:base_bloc_3/features/order/domain/entity/bubble_tea_entity.dart';
import 'package:base_bloc_3/features/order/domain/repository/order_repository.dart';
import 'package:base_bloc_3/features/order/domain/use_case/order_use_case.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: OrderUseCase)
class OrderUseCaseImpl implements OrderUseCase {
  OrderUseCaseImpl(this._repository);

  final OrderRepository _repository;

  @override
  Future<Either<BaseError, List<BubbleTeaEntity>>> getData() async {
    return _repository.getData();
  }
}
