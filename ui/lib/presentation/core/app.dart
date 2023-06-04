import 'package:budget_tracker/application/auth/auth_bloc.dart';
import 'package:budget_tracker/application/dept/groups/groups_bloc.dart';
import 'package:budget_tracker/application/transactions/expenses/expenses_bloc.dart';
import 'package:budget_tracker/application/transactions/incomes/incomes_bloc.dart';
import 'package:budget_tracker/presentation/core/routing/router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../application/categories/categories_bloc.dart';
import '../../injection.dart';
import 'colors.dart';

class AppWidget extends StatelessWidget {
  AppWidget({super.key});

  final _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (_) =>
              getIt<AuthBloc>()..add(const AuthEvent.authCheckRequested()),
        ),
        BlocProvider(
          create: (_) =>
              getIt<CategoriesBloc>(),
        ),
        BlocProvider(
          create: (_) =>
              getIt<ExpensesBloc>(),
        ),
        BlocProvider(
          create: (_) =>
              getIt<IncomesBloc>(),
        ),
        BlocProvider(
          create: (_) =>
              getIt<GroupsBloc>(),
        )
      ],
      child: MaterialApp.router(
        title: 'Expense Tracker',
        debugShowCheckedModeBanner: false,
        theme: ThemeData.light().copyWith(
          colorScheme: ColorScheme.fromSwatch().copyWith(
            primary: cAccentColor,
            secondary: cGreyColor,
            background: cBackgroundColor,
          ),
          inputDecorationTheme: InputDecorationTheme(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: BorderSide.none,
            ),
            filled: true,
            fillColor: cWhiteColor,
            labelStyle: const TextStyle(
              color: cGreyColor,
            ),
          ),
        ),
        routerConfig: _appRouter.config(),
      ),
    );
  }
}
