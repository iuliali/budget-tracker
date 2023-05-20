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
    AddCategoryRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const AddCategoryPage(),
      );
    },
    CategoriesRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const CategoriesPage(),
      );
    },
  };
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
