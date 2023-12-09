import 'package:auto_route/auto_route.dart';
import 'package:budget_tracker/application/auth/auth_bloc.dart';
import 'package:budget_tracker/presentation/core/routing/router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@RoutePage()
class SplashPage extends StatelessWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthBloc, AuthState>(
        listener: (context, state) {
          state.user.fold(
            () => context.router.replace(const LoginRoute()),
            (_) => context.router.replace(const CategoriesRoute()),
          );
        },
        child: const Scaffold(
          body: Center(
            child: CircularProgressIndicator(),
          ),
        )
    );
  }
}
