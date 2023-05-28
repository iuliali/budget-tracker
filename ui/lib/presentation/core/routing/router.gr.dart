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
    SplashRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const SplashPage(),
      );
    },
    VerifyEmailRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const VerifyEmailPage(),
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
    ExpensesRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const ExpensesPage(),
      );
    },
    IncomesRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const IncomesPage(),
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
    CategoriesRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const CategoriesPage(),
      );
    },
    GroupRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const GroupPage(),
      );
    },
    GroupsRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const GroupsPage(),
      );
    },
    SplitRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const SplitPage(),
      );
    },
    AddGroupRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const AddGroupPage(),
      );
    },
    ExpenseRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const ExpensePage(),
      );
    },
    IncomeRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const IncomePage(),
      );
    },
    BudgetRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const BudgetPage(),
      );
    },
    AddCategoryRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const AddCategoryPage(),
      );
    },
    EditCategoryRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const EditCategoryPage(),
      );
    },
    AddBudgetRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const AddBudgetPage(),
      );
    },
    EditBudgetRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const EditBudgetPage(),
      );
    },
  };
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
/// [CategoryPage]
class CategoryRoute extends PageRouteInfo<CategoryRouteArgs> {
  CategoryRoute({
    Key? key,
    required int categoryId,
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

  final int categoryId;

  @override
  String toString() {
    return 'CategoryRouteArgs{key: $key, categoryId: $categoryId}';
  }
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
/// [GroupPage]
class GroupRoute extends PageRouteInfo<void> {
  const GroupRoute({List<PageRouteInfo>? children})
      : super(
          GroupRoute.name,
          initialChildren: children,
        );

  static const String name = 'GroupRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
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
/// [SplitPage]
class SplitRoute extends PageRouteInfo<void> {
  const SplitRoute({List<PageRouteInfo>? children})
      : super(
          SplitRoute.name,
          initialChildren: children,
        );

  static const String name = 'SplitRoute';

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
/// [ExpensePage]
class ExpenseRoute extends PageRouteInfo<void> {
  const ExpenseRoute({List<PageRouteInfo>? children})
      : super(
          ExpenseRoute.name,
          initialChildren: children,
        );

  static const String name = 'ExpenseRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [IncomePage]
class IncomeRoute extends PageRouteInfo<void> {
  const IncomeRoute({List<PageRouteInfo>? children})
      : super(
          IncomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'IncomeRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [BudgetPage]
class BudgetRoute extends PageRouteInfo<void> {
  const BudgetRoute({List<PageRouteInfo>? children})
      : super(
          BudgetRoute.name,
          initialChildren: children,
        );

  static const String name = 'BudgetRoute';

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
/// [EditCategoryPage]
class EditCategoryRoute extends PageRouteInfo<void> {
  const EditCategoryRoute({List<PageRouteInfo>? children})
      : super(
          EditCategoryRoute.name,
          initialChildren: children,
        );

  static const String name = 'EditCategoryRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
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
