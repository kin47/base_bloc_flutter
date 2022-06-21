// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:dio/dio.dart' as _i4;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../common/local_data/shared_pref.dart' as _i6;
import '../common/logger/logger.dart' as _i7;
import '../common/utils/snack_bar/snack_bar_helper.dart' as _i8;
import '../features/example/data/remote/service/example_service.dart' as _i5;
import '../features/example/data/remote/source/data_source.dart' as _i9;
import '../features/example/data/remote/source/data_source_impl.dart' as _i10;
import '../features/example/data/repository/core_repository_impl.dart' as _i12;
import '../features/example/domain/repository/core_repository.dart' as _i11;
import '../features/example/domain/use_case/use_case.dart' as _i13;
import '../features/example/domain/use_case/use_case_impl.dart' as _i14;
import '../features/example/presentation/bloc/example_bloc.dart' as _i15;
import '../features/routes/app_pages.dart' as _i3;
import 'app_module.dart' as _i16; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final appModule = _$AppModule();
  gh.singleton<_i3.AppPages>(_i3.AppPages());
  gh.singleton<_i4.Dio>(appModule.dio);
  gh.factory<_i5.ExampleService>(() => _i5.ExampleService(get<_i4.Dio>()));
  gh.factory<_i6.LocalStorage>(() => _i6.LocalStorageImpl());
  gh.singleton<_i7.LogUtils>(_i7.LogUtils());
  gh.singleton<_i8.SnackBarHelper>(_i8.SnackBarHelper());
  gh.factory<_i9.DataSource>(
      () => _i10.DataSourceImpl(get<_i5.ExampleService>()));
  gh.factory<_i11.ExampleRepo>(
      () => _i12.ExampleRepoImpl(get<_i9.DataSource>()));
  gh.factory<_i13.ExampleUseCase>(
      () => _i14.ExampleUseCaseImpl(get<_i11.ExampleRepo>()));
  gh.factory<_i15.ExampleBloc>(
      () => _i15.ExampleBloc(get<_i13.ExampleUseCase>()));
  return get;
}

class _$AppModule extends _i16.AppModule {}
