import 'package:base_bloc_3/features/example/data/model/base_data.dart';
import 'package:dartz/dartz.dart';

import '../../../../base/network/errors/error.dart';

abstract class ExampleUseCase {
  Future<Either<BaseError, BaseModel>> getData(
      {required double lat, required double lon});
}
