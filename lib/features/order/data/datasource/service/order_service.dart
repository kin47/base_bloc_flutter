import 'package:base_bloc_3/features/order/data/model/bubble_tea/bubble_tea.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/retrofit.dart';

part 'order_service.g.dart';

@RestApi(baseUrl: 'https://api.github.com')
@injectable
abstract class OrderService {
  @factoryMethod
  factory OrderService(Dio dio) = _OrderService;

  @GET("/users")
  Future<List<BubbleTea>> getBubbleTea({
    @Query("since") required int offset,
  });
}
