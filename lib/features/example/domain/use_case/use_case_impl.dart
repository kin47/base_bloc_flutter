import 'package:base_bloc_3/base/network/errors/error.dart';
import 'package:base_bloc_3/features/example/data/model/base_data.dart';
import 'package:base_bloc_3/features/example/domain/repository/core_repository.dart';
import 'package:base_bloc_3/features/example/domain/use_case/use_case.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: ExampleUseCase)
class ExampleUseCaseImpl implements ExampleUseCase {
  ExampleUseCaseImpl(this._coreRepo);

  final ExampleRepo _coreRepo;

  @override
  Future<Either<BaseError, BaseModel>> getData(
      {required double lat, required double lon}) {
    return _coreRepo.getData(lat: lat, lon: lon);
  }
}
