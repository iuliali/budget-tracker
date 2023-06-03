import 'package:auto_route/auto_route.dart';
import "package:flutter/material.dart";
import '../../../domain/categories/entities/category.dart';
import '../../../domain/categories/value_objects.dart';
import '../../../domain/transactions/entities/expense.dart';
import '../../../domain/transactions/entities/income.dart';
import '../../../domain/debt/entities/group.dart';
import '../../auth/pages/login.dart';
import '../../auth/pages/register.dart';
import '../../auth/pages/verify_email.dart';
import '../../categories/pages/categories.dart';
import '../../categories/pages/category.dart';
import '../../categories/pages/add_category.dart';
import '../../categories/pages/edit_category.dart';
import '../../budget/pages/add_budget.dart';
import '../../budget/pages/edit_budget.dart';
import '../../transactions/pages/incomes.dart';
import '../../transactions/pages/income.dart';
import '../../transactions/pages/expenses.dart';
import '../../transactions/pages/expense.dart';
import '../../transactions/pages/add_expense.dart';
import '../../transactions/pages/add_income.dart';
import '../../debt/pages/add_group.dart';
import '../../debt/pages/group_page.dart';
import '../../debt/pages/groups_page.dart';
import '../../debt/pages/split_page.dart';
import '../splash.dart';

part 'router.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Page,Route')
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
    AutoRoute(page: SplashRoute.page, initial: true),

    // Auth
    AutoRoute(page: LoginRoute.page),
    AutoRoute(page: RegisterRoute.page),
    AutoRoute(page: VerifyEmailRoute.page),

    // Categories
    AutoRoute(page: CategoriesRoute.page),
    AutoRoute(page: CategoryRoute.page, path: '/categories/:categoryId(int)'),
    AutoRoute(page: AddCategoryRoute.page),
    AutoRoute(page: EditCategoryRoute.page, path: '/categories/:categoryId(int)/edit'),

    // Budget
    AutoRoute(page: AddBudgetRoute.page, path: '/budget/:categoryId(int)/add'),
    AutoRoute(page: EditBudgetRoute.page, path: '/budget/:categoryId(int)/edit'),

    // Transactions
    AutoRoute(page: ExpensesRoute.page),
    AutoRoute(page: ExpenseRoute.page),
    AutoRoute(page: AddExpenseRoute.page),
    AutoRoute(page: IncomesRoute.page),
    AutoRoute(page: IncomeRoute.page),
    AutoRoute(page: AddIncomeRoute.page),

    // Debt
    AutoRoute(page: AddGroupRoute.page),
    AutoRoute(page: GroupsRoute.page),
    AutoRoute(page: GroupRoute.page, path: '/groups/:groupId(int)'),
    AutoRoute(page: SplitRoute.page, path: '/groups/:groupId(int)/split'),

  ];
}
