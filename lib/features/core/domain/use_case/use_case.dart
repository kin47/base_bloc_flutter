import 'package:base_bloc_3/features/core/data/model/base_data.dart';
import 'package:dartz/dartz.dart';

import '../../../../base/network/errors/error.dart';

abstract class CoreUseCase {
  Future<Either<BaseError, BaseModel>> getData(String param);
}
