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

import 'application/auth/auth_bloc.dart' as _i31;
import 'application/auth/login_form/login_form_bloc.dart' as _i34;
import 'application/auth/register_form/register_form_bloc.dart' as _i30;
import 'application/categories/categories_bloc.dart' as _i32;
import 'application/categories/category_form/category_form_bloc.dart' as _i33;
import 'application/core/network_info.dart' as _i22;
import 'application/dept/groups/groups_bloc.dart' as _i19;
import 'application/transactions/expenses/expense_form/expense_form_bloc.dart'
    as _i17;
import 'application/transactions/expenses/expenses_bloc.dart' as _i18;
import 'application/transactions/incomes/income_form/income_form_bloc.dart'
    as _i24;
import 'application/transactions/incomes/incomes_bloc.dart' as _i25;
import 'domain/auth/facade.dart' as _i26;
import 'domain/categories/repository.dart' as _i28;
import 'domain/debt/repositories/group.dart' as _i8;
import 'domain/transactions/repositories/expense.dart' as _i6;
import 'domain/transactions/repositories/income.dart' as _i20;
import 'infrastructure/auth/datasources/auth_local_datasource.dart' as _i13;
import 'infrastructure/auth/datasources/auth_remote_datasource.dart' as _i14;
import 'infrastructure/auth/facade.dart' as _i27;
import 'infrastructure/categories/datasources/budget_remote_datasource.dart'
    as _i15;
import 'infrastructure/categories/datasources/category_remote_datasource.dart'
    as _i16;
import 'infrastructure/categories/repository.dart' as _i29;
import 'infrastructure/core/injectable_modules/dio.dart' as _i35;
import 'infrastructure/core/injectable_modules/http.dart' as _i38;
import 'infrastructure/core/injectable_modules/internet_checker.dart' as _i37;
import 'infrastructure/core/injectable_modules/shared_preferences.dart' as _i36;
import 'infrastructure/core/network/network_info.dart' as _i23;
import 'infrastructure/debt/repositories/group.dart' as _i9;
import 'infrastructure/transactions/datasources/expense_remote_datasource.dart'
    as _i5;
import 'infrastructure/transactions/datasources/income_remote_datasource.dart'
    as _i10;
import 'infrastructure/transactions/repositories/expense_repository.dart'
    as _i7;
import 'infrastructure/transactions/repositories/income_repository.dart'
    as _i21;

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
    gh.lazySingleton<_i15.BudgetRemoteDataSource>(
        () => _i15.BudgetRemoteDataSourceImpl(gh<_i4.Dio>()));
    gh.lazySingleton<_i16.CategoryRemoteDataSource>(
        () => _i16.CategoryRemoteDataSourceImpl(gh<_i4.Dio>()));
    gh.factory<_i17.ExpenseFormBloc>(
        () => _i17.ExpenseFormBloc(gh<_i6.IExpenseRepository>()));
    gh.factory<_i18.ExpensesBloc>(
        () => _i18.ExpensesBloc(gh<_i6.IExpenseRepository>()));
    gh.factory<_i19.GroupsBloc>(
        () => _i19.GroupsBloc(gh<_i8.IGroupRepository>()));
    gh.lazySingleton<_i20.IIncomeRepository>(() => _i21.IncomeRepositoryImpl(
        remoteDatasource: gh<_i10.IncomeRemoteDatasource>()));
    gh.lazySingleton<_i22.INetworkInfo>(() => _i23.NetworkInfoImpl(
        connectionChecker: gh<_i11.InternetConnectionChecker>()));
    gh.factory<_i24.IncomeFormBloc>(
        () => _i24.IncomeFormBloc(gh<_i20.IIncomeRepository>()));
    gh.factory<_i25.IncomesBloc>(
        () => _i25.IncomesBloc(gh<_i20.IIncomeRepository>()));
    gh.singleton<_i26.IAuthFacade>(_i27.AuthFacade(
      remoteDataSource: gh<_i14.AuthRemoteDataSource>(),
      localDataSource: gh<_i13.AuthLocalDataSource>(),
      networkInfo: gh<_i22.INetworkInfo>(),
      dio: gh<_i4.Dio>(),
    ));
    gh.singleton<_i28.ICategoryRepository>(_i29.CategoryRepository(
      networkInfo: gh<_i22.INetworkInfo>(),
      remoteDataSource: gh<_i16.CategoryRemoteDataSource>(),
      budgetRemoteDataSource: gh<_i15.BudgetRemoteDataSource>(),
    ));
    gh.factory<_i30.RegisterFormBloc>(
        () => _i30.RegisterFormBloc(gh<_i26.IAuthFacade>()));
    gh.factory<_i31.AuthBloc>(() => _i31.AuthBloc(gh<_i26.IAuthFacade>()));
    gh.factory<_i32.CategoriesBloc>(
        () => _i32.CategoriesBloc(gh<_i28.ICategoryRepository>()));
    gh.factory<_i33.CategoryFormBloc>(
        () => _i33.CategoryFormBloc(gh<_i28.ICategoryRepository>()));
    gh.factory<_i34.LoginFormBloc>(() => _i34.LoginFormBloc(
          gh<_i26.IAuthFacade>(),
          gh<_i31.AuthBloc>(),
        ));
    return this;
  }
}

class _$DioInjectableModule extends _i35.DioInjectableModule {}

class _$SharedPrefsModule extends _i36.SharedPrefsModule {}

class _$NetworkInfoInjectableModule extends _i37.NetworkInfoInjectableModule {}

class _$HttpInjectableModule extends _i38.HttpInjectableModule {}