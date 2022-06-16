import 'package:base_bloc_3/base/network/errors/error.dart';
import 'package:base_bloc_3/features/core/data/model/base_data.dart';
import 'package:dartz/dartz.dart';

abstract class CoreRepo {
  Future<Either<BaseError, BaseModel>> getData(String param);
}
