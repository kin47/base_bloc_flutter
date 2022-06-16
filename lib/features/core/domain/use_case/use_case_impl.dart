import 'package:base_bloc_3/base/network/errors/error.dart';
import 'package:base_bloc_3/features/core/data/model/base_data.dart';
import 'package:base_bloc_3/features/core/domain/repository/core_repository.dart';
import 'package:base_bloc_3/features/core/domain/use_case/use_case.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: CoreUseCase)
class CoreUseCaseImpl implements CoreUseCase {
  CoreUseCaseImpl(this._coreRepo);

  final CoreRepo _coreRepo;

  @override
  Future<Either<BaseError, BaseModel>> getData(String param) {
    return _coreRepo.getData(param);
  }
}
