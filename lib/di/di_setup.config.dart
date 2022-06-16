// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:dio/dio.dart' as _i3;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../features/core/data/remote/service/core_service.dart' as _i4;
import '../features/core/data/remote/source/data_source.dart' as _i5;
import '../features/core/data/remote/source/data_source_impl.dart' as _i6;
import '../features/core/data/repository/core_repository_impl.dart' as _i8;
import '../features/core/domain/repository/core_repository.dart' as _i7;
import '../features/core/domain/use_case/use_case.dart' as _i9;
import '../features/core/domain/use_case/use_case_impl.dart' as _i10;
import '../features/core/presentation/bloc/core_bloc.dart' as _i11;
import 'app_module.dart' as _i12; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final appModule = _$AppModule();
  gh.singleton<_i3.Dio>(appModule.dio);
  gh.factory<_i4.CoreService>(() => _i4.CoreService(get<_i3.Dio>()));
  gh.factory<_i5.DataSource>(() => _i6.DataSourceImpl(get<_i4.CoreService>()));
  gh.factory<_i7.CoreRepo>(() => _i8.CoreRepoImpl(get<_i5.DataSource>()));
  gh.factory<_i9.CoreUseCase>(() => _i10.CoreUseCaseImpl(get<_i7.CoreRepo>()));
  gh.factory<_i11.CoreBloc>(() => _i11.CoreBloc(get<_i9.CoreUseCase>()));
  return get;
}

class _$AppModule extends _i12.AppModule {}
