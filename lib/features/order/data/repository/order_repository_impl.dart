import 'package:base_bloc_3/base/network/errors/error.dart';
import 'package:base_bloc_3/base/network/errors/extension.dart';
import 'package:base_bloc_3/features/order/data/model/bubble_tea/bubble_tea.dart';
import 'package:base_bloc_3/features/order/domain/entity/bubble_tea_entity.dart';
import 'package:base_bloc_3/features/order/domain/repository/order_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: OrderRepository)
class OrderRepositoryImpl implements OrderRepository {
  @override
  Future<Either<BaseError, List<BubbleTeaEntity>>> getData() async {
    try {
      await Future.delayed(const Duration(seconds: 2));
      final result = List.generate(
        10,
        (index) => const BubbleTea(
          name: 'Trà sữa matcha đá xay nhầm ánh mắt của em',
          description: 'Trà sữa trân châu',
          image:
              'https://assets.epicurious.com/photos/5953ca064919e41593325d97/1:1/w_2560%2Cc_limit/bubble_tea_recipe_062817.jpg',
          price: 20000,
          bestSeller: true,
        ),
      );
      return right(result);
    } on DioException catch (exception) {
      return left(exception.baseError);
    }
  }
}
