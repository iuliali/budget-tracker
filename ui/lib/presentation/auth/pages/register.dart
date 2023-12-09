import 'package:auto_route/auto_route.dart';
import 'package:budget_tracker/presentation/core/routing/router.dart';
import 'package:budget_tracker/presentation/core/widgets/header.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../application/auth/register_form/register_form_bloc.dart';
import '../../../injection.dart';
import '../../core/widgets/buttons/whole_length_button.dart';
import '../widgets/register_form.dart';

@RoutePage()
class RegisterPage extends StatelessWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => getIt<RegisterFormBloc>(),
      child: Scaffold(
        backgroundColor: Theme.of(context).colorScheme.background,
        body: SafeArea(
          child: Center(
            child: SingleChildScrollView(
              child: Container(
                padding: const EdgeInsets.all(32),
                constraints: BoxConstraints(
                  maxWidth: 450,
                  minHeight: MediaQuery.of(context).size.height - 100,
                ),
                child: IntrinsicHeight(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const HeaderWidget(
                          title: 'Register',
                          subtitle: 'Please enter your details to register!'),
                      const Spacer(),
                      Column(
                        children: [
                          const RegisterForm(),
                          const SizedBox(height: 16),
                          WholeLengthButton(
                            text: 'Login',
                            filled: false,
                            onPressed: () =>
                                context.navigateTo(const LoginRoute()),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
