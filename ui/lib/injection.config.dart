// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:http/http.dart' as _i3;
import 'package:injectable/injectable.dart' as _i2;
import 'package:internet_connection_checker/internet_connection_checker.dart'
    as _i4;
import 'package:shared_preferences/shared_preferences.dart' as _i5;

import 'application/auth/auth_bloc.dart' as _i17;
import 'application/auth/login_form/login_form_bloc.dart' as _i15;
import 'application/auth/register_form/register_form_bloc.dart' as _i16;
import 'application/categories/categories_bloc.dart' as _i18;
import 'application/core/network_info.dart' as _i9;
import 'domain/auth/facade.dart' as _i11;
import 'domain/categories/facade.dart' as _i13;
import 'infrastructure/auth/datasources/auth_local_datasource.dart' as _i6;
import 'infrastructure/auth/datasources/auth_remote_datasource.dart' as _i7;
import 'infrastructure/auth/facade.dart' as _i12;
import 'infrastructure/categories/datasources/category_remote_datasource.dart'
    as _i8;
import 'infrastructure/categories/facade.dart' as _i14;
import 'infrastructure/core/injectable_modules/http.dart' as _i21;
import 'infrastructure/core/injectable_modules/internet_checker.dart' as _i20;
import 'infrastructure/core/injectable_modules/shared_preferences.dart' as _i19;
import 'infrastructure/core/network/network_info.dart' as _i10;

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
    final networkInfoInjectableModule = _$NetworkInfoInjectableModule();
    final sharedPrefsModule = _$SharedPrefsModule();
    gh.lazySingleton<_i3.Client>(() => httpInjectableModule.httpClient);
    gh.lazySingleton<_i4.InternetConnectionChecker>(
        () => networkInfoInjectableModule.internetConnectionChecker);
    await gh.factoryAsync<_i5.SharedPreferences>(
      () => sharedPrefsModule.prefs,
      preResolve: true,
    );
    gh.lazySingleton<_i6.AuthLocalDataSource>(() => _i6.AuthLocalDataSourceImpl(
        sharedPreferences: gh<_i5.SharedPreferences>()));
    gh.lazySingleton<_i7.AuthRemoteDataSource>(
        () => _i7.AuthApiDataSourceImpl(client: gh<_i3.Client>()));
    gh.lazySingleton<_i8.CategoryRemoteDataSource>(
        () => _i8.CategoryRemoteDataSourceImpl(client: gh<_i3.Client>()));
    gh.lazySingleton<_i9.INetworkInfo>(() => _i10.NetworkInfoImpl(
        connectionChecker: gh<_i4.InternetConnectionChecker>()));
    gh.singleton<_i11.IAuthFacade>(_i12.AuthFacade(
      remoteDataSource: gh<_i7.AuthRemoteDataSource>(),
      localDataSource: gh<_i6.AuthLocalDataSource>(),
      networkInfo: gh<_i9.INetworkInfo>(),
    ));
    gh.singleton<_i13.ICategoryFacade>(_i14.CategoryFacade(
      networkInfo: gh<_i9.INetworkInfo>(),
      remoteDataSource: gh<_i8.CategoryRemoteDataSource>(),
    ));
    gh.factory<_i15.LoginFormBloc>(
        () => _i15.LoginFormBloc(gh<_i11.IAuthFacade>()));
    gh.factory<_i16.RegisterFormBloc>(
        () => _i16.RegisterFormBloc(gh<_i11.IAuthFacade>()));
    gh.factory<_i17.AuthBloc>(() => _i17.AuthBloc(gh<_i11.IAuthFacade>()));
    gh.factory<_i18.CategoriesBloc>(
        () => _i18.CategoriesBloc(gh<_i13.ICategoryFacade>()));
    return this;
  }
}

class _$SharedPrefsModule extends _i19.SharedPrefsModule {}

class _$NetworkInfoInjectableModule extends _i20.NetworkInfoInjectableModule {}

class _$HttpInjectableModule extends _i21.HttpInjectableModule {}
