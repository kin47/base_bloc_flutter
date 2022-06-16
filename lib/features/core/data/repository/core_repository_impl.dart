import 'package:base_bloc_3/base/network/errors/error.dart';
import 'package:base_bloc_3/base/network/errors/extension.dart';
import 'package:base_bloc_3/features/core/data/model/base_data.dart';
import 'package:base_bloc_3/features/core/data/remote/source/data_source.dart';
import 'package:base_bloc_3/features/core/domain/repository/core_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: CoreRepo)
class CoreRepoImpl implements CoreRepo {
  CoreRepoImpl(this._remoteDataSource);

  final DataSource _remoteDataSource;

  @override
  Future<Either<BaseError, BaseModel>> getData(String param) async {
    try {
      final BaseModel result = await _remoteDataSource.getData(param);
      return right(result);
    } on DioError catch (exception) {
      return left(exception.baseError);
    }
  }
}
