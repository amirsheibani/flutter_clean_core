// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i4;
import 'package:get_it/get_it.dart' as _i1;
import 'package:hive_flutter/hive_flutter.dart' as _i3;
import 'package:injectable/injectable.dart' as _i2;
import 'package:internet_connection_checker/internet_connection_checker.dart'
    as _i5;

import '../../base/data/local/data_sources/token/token_local_data_source.dart'
    as _i8;
import '../../base/data/local/data_sources/token/token_local_data_source_impl.dart'
    as _i9;
import '../../base/data/repositories/token/token_repository_impl.dart' as _i11;
import '../../base/domain/repositories/token/token_repository.dart' as _i10;
import '../../base/domain/usecase/token/has_token_use_case.dart' as _i14;
import '../../base/domain/usecase/token/read_token_use_case.dart' as _i15;
import '../../base/domain/usecase/token/remove_token_use_case.dart' as _i16;
import '../../base/domain/usecase/token/save_token_use_case.dart' as _i17;
import '../../base/domain/usecase/token/update_token_use_case.dart' as _i12;
import '../../base/domain/usecase/token/user_from_token_use_case.dart' as _i13;
import '../../service/language_theme/language_theme_cubit.dart' as _i7;
import '../../service/network/interceptors/pretty_dio_logger.dart' as _i6;
import '../local/di/local_module.dart' as _i19;
import '../network/di/network_module.dart' as _i18;

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// initializes the registration of main-scope dependencies inside of GetIt
_i1.GetIt $initGetItCore(
  _i1.GetIt getIt, {
  String? environment,
  _i2.EnvironmentFilter? environmentFilter,
}) {
  final gh = _i2.GetItHelper(
    getIt,
    environment,
    environmentFilter,
  );
  final localModule = _$LocalModule();
  final networkModule = _$NetworkModule();
  gh.singletonAsync<_i3.Box<dynamic>>(() => localModule.box);
  gh.singleton<_i4.Dio>(networkModule.dio);
  gh.lazySingleton<_i5.InternetConnectionChecker>(
      () => networkModule.internetConnectionChecker);
  gh.singleton<_i6.PrettyDioLogger>(networkModule.prettyDioLogger);
  gh.factory<_i7.ThemeAndLanguageCubit>(() => _i7.ThemeAndLanguageCubit());
  gh.lazySingleton<_i8.TokenLocalDataSource>(
      () => _i9.TokenLocalDataSourceImpl());
  gh.lazySingleton<_i10.TokenRepository>(
      () => _i11.TokenRepositoryImpl(gh<_i8.TokenLocalDataSource>()));
  gh.lazySingleton<_i12.UpdateTokenUseCase>(
      () => _i12.UpdateTokenUseCase(gh<_i10.TokenRepository>()));
  gh.lazySingleton<_i13.UserFromTokenUseCase>(
      () => _i13.UserFromTokenUseCase(gh<_i10.TokenRepository>()));
  gh.lazySingleton<_i14.HasTokenUseCase>(
      () => _i14.HasTokenUseCase(gh<_i10.TokenRepository>()));
  gh.lazySingleton<_i15.ReadTokenUseCase>(
      () => _i15.ReadTokenUseCase(gh<_i10.TokenRepository>()));
  gh.lazySingleton<_i16.RemoveTokenUseCase>(
      () => _i16.RemoveTokenUseCase(gh<_i10.TokenRepository>()));
  gh.lazySingleton<_i17.SaveTokenUseCase>(
      () => _i17.SaveTokenUseCase(gh<_i10.TokenRepository>()));
  return getIt;
}

class _$NetworkModule extends _i18.NetworkModule {}

class _$LocalModule extends _i19.LocalModule {}
