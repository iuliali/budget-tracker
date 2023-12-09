import 'package:auto_route/auto_route.dart';
import 'package:budget_tracker/presentation/core/colors.dart';
import 'package:budget_tracker/presentation/core/widgets/buttons/whole_length_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../application/auth/login_form/login_form_bloc.dart';
import '../../../injection.dart';
import '../../core/routing/router.dart';
import '../widgets/login_form.dart';

@RoutePage()
class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => getIt<LoginFormBloc>(),
      child: Scaffold(
          backgroundColor: Theme.of(context).colorScheme.background,
          body: SafeArea(
            child: SingleChildScrollView(
              child: Center(
                child: Container(
                  padding: const EdgeInsets.all(32),
                  constraints: BoxConstraints(
                      maxWidth: 450,
                      minHeight: MediaQuery.of(context).size.height - 100),
                  child: IntrinsicHeight(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(height: 40),
                            Text(
                              'Welcome back!',
                              style: TextStyle(
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold,
                                  color: cBlackColor),
                            ),
                            Text(
                              "Please enter your credentials to login!",
                              style: TextStyle(
                                fontSize: 16,
                                color: cBlackColor,
                              ),
                            ),
                            SizedBox(height: 16),
                          ],
                        ),
                        const Spacer(),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            const LoginForm(),
                            const SizedBox(height: 16),
                            WholeLengthButton(
                              filled: false,
                              onPressed: () =>
                                  context.navigateTo(const RegisterRoute()),
                              text: 'Register',
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          )),
    );
  }
}
