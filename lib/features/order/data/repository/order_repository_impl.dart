import 'package:base_bloc_3/base/network/errors/error.dart';
import 'package:base_bloc_3/base/network/errors/extension.dart';
import 'package:base_bloc_3/features/order/data/datasource/order_data_source.dart';
import 'package:base_bloc_3/features/order/domain/entity/bubble_tea_entity.dart';
import 'package:base_bloc_3/features/order/domain/repository/order_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: OrderRepository)
class OrderRepositoryImpl implements OrderRepository {
  OrderRepositoryImpl(this._dataSource);

  final OrderDataSource _dataSource;

  @override
  Future<Either<BaseError, List<BubbleTeaEntity>>> getData() async {
    try {
      final result = await _dataSource.getData();
      return right(result);
    } on DioException catch (exception) {
      return left(exception.baseError);
    }
  }
}
