// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'router.dart';

abstract class _$AppRouter extends RootStackRouter {
  // ignore: unused_element
  _$AppRouter({super.navigatorKey});

  @override
  final Map<String, PageFactory> pagesMap = {
    AddBudgetRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const AddBudgetPage(),
      );
    },
    AddCategoryRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const AddCategoryPage(),
      );
    },
    AddExpenseRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const AddExpensePage(),
      );
    },
    AddGroupRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const AddGroupPage(),
      );
    },
    AddIncomeRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const AddIncomePage(),
      );
    },
    CategoriesRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const CategoriesPage(),
      );
    },
    CategoryRoute.name: (routeData) {
      final args = routeData.argsAs<CategoryRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: CategoryPage(
          key: args.key,
          categoryId: args.categoryId,
        ),
      );
    },
    EditBudgetRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const EditBudgetPage(),
      );
    },
    EditCategoryRoute.name: (routeData) {
      final args = routeData.argsAs<EditCategoryRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: EditCategoryPage(
          key: args.key,
          category: args.category,
          budgeting: args.budgeting,
        ),
      );
    },
    EditExpenseRoute.name: (routeData) {
      final args = routeData.argsAs<EditExpenseRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: EditExpensePage(
          key: args.key,
          expense: args.expense,
        ),
      );
    },
    EditIncomeRoute.name: (routeData) {
      final args = routeData.argsAs<EditIncomeRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: EditIncomePage(
          key: args.key,
          income: args.income,
        ),
      );
    },
    ExpenseRoute.name: (routeData) {
      final args = routeData.argsAs<ExpenseRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: ExpensePage(
          key: args.key,
          expenseId: args.expenseId,
        ),
      );
    },
    ExpensesRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const ExpensesPage(),
      );
    },
    GroupRoute.name: (routeData) {
      final args = routeData.argsAs<GroupRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: GroupPage(
          key: args.key,
          group: args.group,
        ),
      );
    },
    GroupsRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const GroupsPage(),
      );
    },
    IncomeRoute.name: (routeData) {
      final args = routeData.argsAs<IncomeRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: IncomePage(
          key: args.key,
          income: args.income,
        ),
      );
    },
    IncomesRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const IncomesPage(),
      );
    },
    LoginRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const LoginPage(),
      );
    },
    RegisterRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const RegisterPage(),
      );
    },
    SplashRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const SplashPage(),
      );
    },
    SplitRoute.name: (routeData) {
      final args = routeData.argsAs<SplitRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: SplitPage(
          key: args.key,
          group: args.group,
        ),
      );
    },
    StatisticsRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const StatisticsPage(),
      );
    },
    UserDetailsRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const UserDetailsPage(),
      );
    },
    VerifyEmailRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const VerifyEmailPage(),
      );
    },
  };
}

/// generated route for
/// [AddBudgetPage]
class AddBudgetRoute extends PageRouteInfo<void> {
  const AddBudgetRoute({List<PageRouteInfo>? children})
      : super(
          AddBudgetRoute.name,
          initialChildren: children,
        );

  static const String name = 'AddBudgetRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [AddCategoryPage]
class AddCategoryRoute extends PageRouteInfo<void> {
  const AddCategoryRoute({List<PageRouteInfo>? children})
      : super(
          AddCategoryRoute.name,
          initialChildren: children,
        );

  static const String name = 'AddCategoryRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [AddExpensePage]
class AddExpenseRoute extends PageRouteInfo<void> {
  const AddExpenseRoute({List<PageRouteInfo>? children})
      : super(
          AddExpenseRoute.name,
          initialChildren: children,
        );

  static const String name = 'AddExpenseRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [AddGroupPage]
class AddGroupRoute extends PageRouteInfo<void> {
  const AddGroupRoute({List<PageRouteInfo>? children})
      : super(
          AddGroupRoute.name,
          initialChildren: children,
        );

  static const String name = 'AddGroupRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [AddIncomePage]
class AddIncomeRoute extends PageRouteInfo<void> {
  const AddIncomeRoute({List<PageRouteInfo>? children})
      : super(
          AddIncomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'AddIncomeRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [CategoriesPage]
class CategoriesRoute extends PageRouteInfo<void> {
  const CategoriesRoute({List<PageRouteInfo>? children})
      : super(
          CategoriesRoute.name,
          initialChildren: children,
        );

  static const String name = 'CategoriesRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [CategoryPage]
class CategoryRoute extends PageRouteInfo<CategoryRouteArgs> {
  CategoryRoute({
    Key? key,
    required CategoryId categoryId,
    List<PageRouteInfo>? children,
  }) : super(
          CategoryRoute.name,
          args: CategoryRouteArgs(
            key: key,
            categoryId: categoryId,
          ),
          initialChildren: children,
        );

  static const String name = 'CategoryRoute';

  static const PageInfo<CategoryRouteArgs> page =
      PageInfo<CategoryRouteArgs>(name);
}

class CategoryRouteArgs {
  const CategoryRouteArgs({
    this.key,
    required this.categoryId,
  });

  final Key? key;

  final CategoryId categoryId;

  @override
  String toString() {
    return 'CategoryRouteArgs{key: $key, categoryId: $categoryId}';
  }
}

/// generated route for
/// [EditBudgetPage]
class EditBudgetRoute extends PageRouteInfo<void> {
  const EditBudgetRoute({List<PageRouteInfo>? children})
      : super(
          EditBudgetRoute.name,
          initialChildren: children,
        );

  static const String name = 'EditBudgetRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [EditCategoryPage]
class EditCategoryRoute extends PageRouteInfo<EditCategoryRouteArgs> {
  EditCategoryRoute({
    Key? key,
    required Category category,
    required bool budgeting,
    List<PageRouteInfo>? children,
  }) : super(
          EditCategoryRoute.name,
          args: EditCategoryRouteArgs(
            key: key,
            category: category,
            budgeting: budgeting,
          ),
          initialChildren: children,
        );

  static const String name = 'EditCategoryRoute';

  static const PageInfo<EditCategoryRouteArgs> page =
      PageInfo<EditCategoryRouteArgs>(name);
}

class EditCategoryRouteArgs {
  const EditCategoryRouteArgs({
    this.key,
    required this.category,
    required this.budgeting,
  });

  final Key? key;

  final Category category;

  final bool budgeting;

  @override
  String toString() {
    return 'EditCategoryRouteArgs{key: $key, category: $category, budgeting: $budgeting}';
  }
}

/// generated route for
/// [EditExpensePage]
class EditExpenseRoute extends PageRouteInfo<EditExpenseRouteArgs> {
  EditExpenseRoute({
    Key? key,
    required Expense expense,
    List<PageRouteInfo>? children,
  }) : super(
          EditExpenseRoute.name,
          args: EditExpenseRouteArgs(
            key: key,
            expense: expense,
          ),
          initialChildren: children,
        );

  static const String name = 'EditExpenseRoute';

  static const PageInfo<EditExpenseRouteArgs> page =
      PageInfo<EditExpenseRouteArgs>(name);
}

class EditExpenseRouteArgs {
  const EditExpenseRouteArgs({
    this.key,
    required this.expense,
  });

  final Key? key;

  final Expense expense;

  @override
  String toString() {
    return 'EditExpenseRouteArgs{key: $key, expense: $expense}';
  }
}

/// generated route for
/// [EditIncomePage]
class EditIncomeRoute extends PageRouteInfo<EditIncomeRouteArgs> {
  EditIncomeRoute({
    Key? key,
    required Income income,
    List<PageRouteInfo>? children,
  }) : super(
          EditIncomeRoute.name,
          args: EditIncomeRouteArgs(
            key: key,
            income: income,
          ),
          initialChildren: children,
        );

  static const String name = 'EditIncomeRoute';

  static const PageInfo<EditIncomeRouteArgs> page =
      PageInfo<EditIncomeRouteArgs>(name);
}

class EditIncomeRouteArgs {
  const EditIncomeRouteArgs({
    this.key,
    required this.income,
  });

  final Key? key;

  final Income income;

  @override
  String toString() {
    return 'EditIncomeRouteArgs{key: $key, income: $income}';
  }
}

/// generated route for
/// [ExpensePage]
class ExpenseRoute extends PageRouteInfo<ExpenseRouteArgs> {
  ExpenseRoute({
    Key? key,
    required ExpenseId expenseId,
    List<PageRouteInfo>? children,
  }) : super(
          ExpenseRoute.name,
          args: ExpenseRouteArgs(
            key: key,
            expenseId: expenseId,
          ),
          initialChildren: children,
        );

  static const String name = 'ExpenseRoute';

  static const PageInfo<ExpenseRouteArgs> page =
      PageInfo<ExpenseRouteArgs>(name);
}

class ExpenseRouteArgs {
  const ExpenseRouteArgs({
    this.key,
    required this.expenseId,
  });

  final Key? key;

  final ExpenseId expenseId;

  @override
  String toString() {
    return 'ExpenseRouteArgs{key: $key, expenseId: $expenseId}';
  }
}

/// generated route for
/// [ExpensesPage]
class ExpensesRoute extends PageRouteInfo<void> {
  const ExpensesRoute({List<PageRouteInfo>? children})
      : super(
          ExpensesRoute.name,
          initialChildren: children,
        );

  static const String name = 'ExpensesRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [GroupPage]
class GroupRoute extends PageRouteInfo<GroupRouteArgs> {
  GroupRoute({
    Key? key,
    required Group group,
    List<PageRouteInfo>? children,
  }) : super(
          GroupRoute.name,
          args: GroupRouteArgs(
            key: key,
            group: group,
          ),
          initialChildren: children,
        );

  static const String name = 'GroupRoute';

  static const PageInfo<GroupRouteArgs> page = PageInfo<GroupRouteArgs>(name);
}

class GroupRouteArgs {
  const GroupRouteArgs({
    this.key,
    required this.group,
  });

  final Key? key;

  final Group group;

  @override
  String toString() {
    return 'GroupRouteArgs{key: $key, group: $group}';
  }
}

/// generated route for
/// [GroupsPage]
class GroupsRoute extends PageRouteInfo<void> {
  const GroupsRoute({List<PageRouteInfo>? children})
      : super(
          GroupsRoute.name,
          initialChildren: children,
        );

  static const String name = 'GroupsRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [IncomePage]
class IncomeRoute extends PageRouteInfo<IncomeRouteArgs> {
  IncomeRoute({
    Key? key,
    required Income income,
    List<PageRouteInfo>? children,
  }) : super(
          IncomeRoute.name,
          args: IncomeRouteArgs(
            key: key,
            income: income,
          ),
          initialChildren: children,
        );

  static const String name = 'IncomeRoute';

  static const PageInfo<IncomeRouteArgs> page = PageInfo<IncomeRouteArgs>(name);
}

class IncomeRouteArgs {
  const IncomeRouteArgs({
    this.key,
    required this.income,
  });

  final Key? key;

  final Income income;

  @override
  String toString() {
    return 'IncomeRouteArgs{key: $key, income: $income}';
  }
}

/// generated route for
/// [IncomesPage]
class IncomesRoute extends PageRouteInfo<void> {
  const IncomesRoute({List<PageRouteInfo>? children})
      : super(
          IncomesRoute.name,
          initialChildren: children,
        );

  static const String name = 'IncomesRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [LoginPage]
class LoginRoute extends PageRouteInfo<void> {
  const LoginRoute({List<PageRouteInfo>? children})
      : super(
          LoginRoute.name,
          initialChildren: children,
        );

  static const String name = 'LoginRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [RegisterPage]
class RegisterRoute extends PageRouteInfo<void> {
  const RegisterRoute({List<PageRouteInfo>? children})
      : super(
          RegisterRoute.name,
          initialChildren: children,
        );

  static const String name = 'RegisterRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [SplashPage]
class SplashRoute extends PageRouteInfo<void> {
  const SplashRoute({List<PageRouteInfo>? children})
      : super(
          SplashRoute.name,
          initialChildren: children,
        );

  static const String name = 'SplashRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [SplitPage]
class SplitRoute extends PageRouteInfo<SplitRouteArgs> {
  SplitRoute({
    Key? key,
    required Group group,
    List<PageRouteInfo>? children,
  }) : super(
          SplitRoute.name,
          args: SplitRouteArgs(
            key: key,
            group: group,
          ),
          initialChildren: children,
        );

  static const String name = 'SplitRoute';

  static const PageInfo<SplitRouteArgs> page = PageInfo<SplitRouteArgs>(name);
}

class SplitRouteArgs {
  const SplitRouteArgs({
    this.key,
    required this.group,
  });

  final Key? key;

  final Group group;

  @override
  String toString() {
    return 'SplitRouteArgs{key: $key, group: $group}';
  }
}

/// generated route for
/// [StatisticsPage]
class StatisticsRoute extends PageRouteInfo<void> {
  const StatisticsRoute({List<PageRouteInfo>? children})
      : super(
          StatisticsRoute.name,
          initialChildren: children,
        );

  static const String name = 'StatisticsRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [UserDetailsPage]
class UserDetailsRoute extends PageRouteInfo<void> {
  const UserDetailsRoute({List<PageRouteInfo>? children})
      : super(
          UserDetailsRoute.name,
          initialChildren: children,
        );

  static const String name = 'UserDetailsRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [VerifyEmailPage]
class VerifyEmailRoute extends PageRouteInfo<void> {
  const VerifyEmailRoute({List<PageRouteInfo>? children})
      : super(
          VerifyEmailRoute.name,
          initialChildren: children,
        );

  static const String name = 'VerifyEmailRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}
