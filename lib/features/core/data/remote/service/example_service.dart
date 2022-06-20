import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/http.dart';

import '../../model/index.dart';

part 'example_service.g.dart';

@RestApi()
@injectable
abstract class ExampleService {
  @factoryMethod
  factory ExampleService(Dio dio) = _ExampleService;

  @GET('https://weatherbit-v1-mashape.p.rapidapi.com/current')
  Future<BaseModel> getData({
    @Query('lat') required double lat,
    @Query('lon') required double lon,
  });
}