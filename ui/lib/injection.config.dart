// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import 'application/auth/login_form/login_form_bloc.dart' as _i8;
import 'application/core/network/network_info.dart' as _i7;
import 'domain/auth/facade.dart' as _i3;
import 'infrastructure/auth/datasources/auth_api_datasource.dart' as _i5;
import 'infrastructure/auth/datasources/auth_local_datasource.dart' as _i6;
import 'infrastructure/auth/facade.dart' as _i4;

extension GetItInjectableX on _i1.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    gh.lazySingleton<_i3.IAuthFacade>(() => _i4.AuthFacade(
          remoteDataSource: gh<_i5.AuthRemoteDataSource>(),
          localDataSource: gh<_i6.AuthLocalDataSource>(),
          networkInfo: gh<_i7.NetworkInfo>(),
        ));
    gh.factory<_i8.LoginFormBloc>(
        () => _i8.LoginFormBloc(gh<_i3.IAuthFacade>()));
    return this;
  }
}
