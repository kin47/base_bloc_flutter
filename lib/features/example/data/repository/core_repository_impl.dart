import 'package:base_bloc_3/base/network/errors/error.dart';
import 'package:base_bloc_3/base/network/errors/extension.dart';
import 'package:base_bloc_3/features/example/data/model/base_data.dart';
import 'package:base_bloc_3/features/example/data/remote/source/data_source.dart';
import 'package:base_bloc_3/features/example/domain/repository/core_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: ExampleRepo)
class ExampleRepoImpl implements ExampleRepo {
  ExampleRepoImpl(this._remoteDataSource);

  final DataSource _remoteDataSource;

  @override
  Future<Either<BaseError, BaseModel>> getData(
      {required double lat, required double lon}) async {
    try {
      final BaseModel result =
          await _remoteDataSource.getData(lat: lat, lon: lon);
      return right(result);
    } on DioError catch (exception) {
      return left(exception.baseError);
    }
  }
}
