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
    as _i11;
import 'package:shared_preferences/shared_preferences.dart' as _i12;

import 'application/auth/auth_bloc.dart' as _i30;
import 'application/auth/login_form/login_form_bloc.dart' as _i33;
import 'application/auth/register_form/register_form_bloc.dart' as _i29;
import 'application/categories/categories_bloc.dart' as _i31;
import 'application/categories/category_form/category_form_bloc.dart' as _i32;
import 'application/core/network_info.dart' as _i21;
import 'application/dept/groups/groups_bloc.dart' as _i18;
import 'application/transactions/expenses/expense_form/expense_form_bloc.dart'
    as _i16;
import 'application/transactions/expenses/expenses_bloc.dart' as _i17;
import 'application/transactions/incomes/income_form/income_form_bloc.dart'
    as _i23;
import 'application/transactions/incomes/incomes_bloc.dart' as _i24;
import 'domain/auth/facade.dart' as _i25;
import 'domain/categories/repository.dart' as _i27;
import 'domain/debt/repositories/group.dart' as _i8;
import 'domain/transactions/repositories/expense.dart' as _i6;
import 'domain/transactions/repositories/income.dart' as _i19;
import 'infrastructure/auth/datasources/auth_local_datasource.dart' as _i13;
import 'infrastructure/auth/datasources/auth_remote_datasource.dart' as _i14;
import 'infrastructure/auth/facade.dart' as _i26;
import 'infrastructure/categories/datasources/category_remote_datasource.dart'
    as _i15;
import 'infrastructure/categories/repository.dart' as _i28;
import 'infrastructure/core/injectable_modules/dio.dart' as _i34;
import 'infrastructure/core/injectable_modules/http.dart' as _i37;
import 'infrastructure/core/injectable_modules/internet_checker.dart' as _i36;
import 'infrastructure/core/injectable_modules/shared_preferences.dart' as _i35;
import 'infrastructure/core/network/network_info.dart' as _i22;
import 'infrastructure/debt/repositories/group.dart' as _i9;
import 'infrastructure/transactions/datasources/expense_remote_datasource.dart'
    as _i5;
import 'infrastructure/transactions/datasources/income_remote_datasource.dart'
    as _i10;
import 'infrastructure/transactions/repositories/expense_repository.dart'
    as _i7;
import 'infrastructure/transactions/repositories/income_repository.dart'
    as _i20;

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
    gh.lazySingleton<_i5.ExpenseRemoteDatasource>(
        () => _i5.ExpenseRemoteDatasourceImpl(gh<_i4.Dio>()));
    gh.lazySingleton<_i6.IExpenseRepository>(() => _i7.ExpenseRepositoryImpl(
        remoteDatasource: gh<_i5.ExpenseRemoteDatasource>()));
    gh.lazySingleton<_i8.IGroupRepository>(() => _i9.GroupRepository());
    gh.lazySingleton<_i10.IncomeRemoteDatasource>(
        () => _i10.IncomeRemoteDatasourceImpl(gh<_i4.Dio>()));
    gh.lazySingleton<_i11.InternetConnectionChecker>(
        () => networkInfoInjectableModule.internetConnectionChecker);
    await gh.factoryAsync<_i12.SharedPreferences>(
      () => sharedPrefsModule.prefs,
      preResolve: true,
    );
    gh.lazySingleton<_i13.AuthLocalDataSource>(() =>
        _i13.AuthLocalDataSourceImpl(
            sharedPreferences: gh<_i12.SharedPreferences>()));
    gh.lazySingleton<_i14.AuthRemoteDataSource>(
        () => _i14.AuthApiDataSourceImpl(gh<_i4.Dio>()));
    gh.lazySingleton<_i15.CategoryRemoteDataSource>(
        () => _i15.CategoryRemoteDataSourceImpl(gh<_i4.Dio>()));
    gh.factory<_i16.ExpenseFormBloc>(
        () => _i16.ExpenseFormBloc(gh<_i6.IExpenseRepository>()));
    gh.factory<_i17.ExpensesBloc>(
        () => _i17.ExpensesBloc(gh<_i6.IExpenseRepository>()));
    gh.factory<_i18.GroupsBloc>(
        () => _i18.GroupsBloc(gh<_i8.IGroupRepository>()));
    gh.lazySingleton<_i19.IIncomeRepository>(() => _i20.IncomeRepositoryImpl(
        remoteDatasource: gh<_i10.IncomeRemoteDatasource>()));
    gh.lazySingleton<_i21.INetworkInfo>(() => _i22.NetworkInfoImpl(
        connectionChecker: gh<_i11.InternetConnectionChecker>()));
    gh.factory<_i23.IncomeFormBloc>(
        () => _i23.IncomeFormBloc(gh<_i19.IIncomeRepository>()));
    gh.factory<_i24.IncomesBloc>(
        () => _i24.IncomesBloc(gh<_i19.IIncomeRepository>()));
    gh.singleton<_i25.IAuthFacade>(_i26.AuthFacade(
      remoteDataSource: gh<_i14.AuthRemoteDataSource>(),
      localDataSource: gh<_i13.AuthLocalDataSource>(),
      networkInfo: gh<_i21.INetworkInfo>(),
      dio: gh<_i4.Dio>(),
    ));
    gh.singleton<_i27.ICategoryRepository>(_i28.CategoryRepository(
      networkInfo: gh<_i21.INetworkInfo>(),
      remoteDataSource: gh<_i15.CategoryRemoteDataSource>(),
    ));
    gh.factory<_i29.RegisterFormBloc>(
        () => _i29.RegisterFormBloc(gh<_i25.IAuthFacade>()));
    gh.factory<_i30.AuthBloc>(() => _i30.AuthBloc(gh<_i25.IAuthFacade>()));
    gh.factory<_i31.CategoriesBloc>(
        () => _i31.CategoriesBloc(gh<_i27.ICategoryRepository>()));
    gh.factory<_i32.CategoryFormBloc>(
        () => _i32.CategoryFormBloc(gh<_i27.ICategoryRepository>()));
    gh.factory<_i33.LoginFormBloc>(() => _i33.LoginFormBloc(
          gh<_i25.IAuthFacade>(),
          gh<_i30.AuthBloc>(),
        ));
    return this;
  }
}

class _$DioInjectableModule extends _i34.DioInjectableModule {}

class _$SharedPrefsModule extends _i35.SharedPrefsModule {}

class _$NetworkInfoInjectableModule extends _i36.NetworkInfoInjectableModule {}

class _$HttpInjectableModule extends _i37.HttpInjectableModule {}
