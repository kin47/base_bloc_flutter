import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/http.dart';

import '../../model/index.dart';

part 'core_service.g.dart';

@RestApi()
@injectable
abstract class CoreService {
  @factoryMethod
  factory CoreService(Dio dio) = _CoreService;

  @GET('url')
  Future<BaseModel> getData({
    @Query('param') required String param,
  });
}
