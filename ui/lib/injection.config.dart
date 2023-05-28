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
import 'package:http/http.dart' as _i3;
import 'package:injectable/injectable.dart' as _i2;
import 'package:internet_connection_checker/internet_connection_checker.dart'
    as _i5;
import 'package:shared_preferences/shared_preferences.dart' as _i6;

import 'application/auth/auth_bloc.dart' as _i18;
import 'application/auth/login_form/login_form_bloc.dart' as _i16;
import 'application/auth/register_form/register_form_bloc.dart' as _i17;
import 'application/categories/categories_bloc.dart' as _i19;
import 'application/core/network_info.dart' as _i10;
import 'domain/auth/facade.dart' as _i12;
import 'domain/categories/repository.dart' as _i14;
import 'infrastructure/auth/datasources/auth_local_datasource.dart' as _i7;
import 'infrastructure/auth/datasources/auth_remote_datasource.dart' as _i8;
import 'infrastructure/auth/facade.dart' as _i13;
import 'infrastructure/categories/datasources/category_remote_datasource.dart'
    as _i9;
import 'infrastructure/categories/repository.dart' as _i15;
import 'infrastructure/core/injectable_modules/dio.dart' as _i20;
import 'infrastructure/core/injectable_modules/http.dart' as _i23;
import 'infrastructure/core/injectable_modules/internet_checker.dart' as _i22;
import 'infrastructure/core/injectable_modules/shared_preferences.dart' as _i21;
import 'infrastructure/core/network/network_info.dart' as _i11;

extension GetItInjectableX on _i1.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  Future<_i1.GetIt> init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) async {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final httpInjectableModule = _$HttpInjectableModule();
    final dioInjectableModule = _$DioInjectableModule();
    final networkInfoInjectableModule = _$NetworkInfoInjectableModule();
    final sharedPrefsModule = _$SharedPrefsModule();
    gh.lazySingleton<_i3.Client>(() => httpInjectableModule.httpClient);
    gh.lazySingleton<_i4.Dio>(() => dioInjectableModule.dio);
    gh.lazySingleton<_i5.InternetConnectionChecker>(
        () => networkInfoInjectableModule.internetConnectionChecker);
    await gh.factoryAsync<_i6.SharedPreferences>(
      () => sharedPrefsModule.prefs,
      preResolve: true,
    );
    gh.lazySingleton<_i7.AuthLocalDataSource>(() => _i7.AuthLocalDataSourceImpl(
        sharedPreferences: gh<_i6.SharedPreferences>()));
    gh.lazySingleton<_i8.AuthRemoteDataSource>(
        () => _i8.AuthApiDataSourceImpl(gh<_i4.Dio>()));
    gh.lazySingleton<_i9.CategoryRemoteDataSource>(
        () => _i9.CategoryRemoteDataSourceImpl(gh<_i4.Dio>()));
    gh.lazySingleton<_i10.INetworkInfo>(() => _i11.NetworkInfoImpl(
        connectionChecker: gh<_i5.InternetConnectionChecker>()));
    gh.singleton<_i12.IAuthFacade>(_i13.AuthFacade(
      remoteDataSource: gh<_i8.AuthRemoteDataSource>(),
      localDataSource: gh<_i7.AuthLocalDataSource>(),
      networkInfo: gh<_i10.INetworkInfo>(),
    ));
    gh.singleton<_i14.ICategoryRepository>(_i15.CategoryRepository(
      networkInfo: gh<_i10.INetworkInfo>(),
      remoteDataSource: gh<_i9.CategoryRemoteDataSource>(),
    ));
    gh.factory<_i16.LoginFormBloc>(
        () => _i16.LoginFormBloc(gh<_i12.IAuthFacade>()));
    gh.factory<_i17.RegisterFormBloc>(
        () => _i17.RegisterFormBloc(gh<_i12.IAuthFacade>()));
    gh.factory<_i18.AuthBloc>(() => _i18.AuthBloc(gh<_i12.IAuthFacade>()));
    gh.factory<_i19.CategoriesBloc>(
        () => _i19.CategoriesBloc(gh<_i14.ICategoryRepository>()));
    return this;
  }
}

class _$DioInjectableModule extends _i20.DioInjectableModule {}

class _$SharedPrefsModule extends _i21.SharedPrefsModule {}

class _$NetworkInfoInjectableModule extends _i22.NetworkInfoInjectableModule {}

class _$HttpInjectableModule extends _i23.HttpInjectableModule {}
