import 'package:base_bloc_3/base/network/errors/error.dart';
import 'package:base_bloc_3/features/example/data/model/base_data.dart';
import 'package:dartz/dartz.dart';

abstract class ExampleRepo {
  Future<Either<BaseError, BaseModel>> getData(
      {required double lat, required double lon});
}
