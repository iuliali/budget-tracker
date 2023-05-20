import 'package:auto_route/auto_route.dart';
import "package:flutter/material.dart";
import '../../categories/pages/categories.dart';
import '../../categories/pages/category.dart';
import '../../categories/pages/add-category.dart';
import '../../transactions/pages/incomes.dart';
import '../../auth/pages/login.dart';
import '../../auth/pages/register.dart';
import '../../auth/pages/verify_email.dart';
import '../../transactions/pages/expenses.dart';

part 'router.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Page,Route')
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
    AutoRoute(page: LoginRoute.page, initial: true),
    AutoRoute(page: RegisterRoute.page),
    AutoRoute(page: VerifyEmailRoute.page),

    AutoRoute(page: CategoriesRoute.page),
    AutoRoute(page: CategoryRoute.page),
    AutoRoute(page: AddCategoryRoute.page),

    AutoRoute(page: ExpensesRoute.page),
    AutoRoute(page: IncomesRoute.page),
  ];
}
