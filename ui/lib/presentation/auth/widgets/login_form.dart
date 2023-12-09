import 'package:auto_route/auto_route.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';

import '../../../application/auth/auth_bloc.dart';
import '../../../application/auth/login_form/login_form_bloc.dart';
import '../../core/routing/router.dart';
import '../../core/colors.dart';
import '../../core/widgets/buttons/whole_length_button.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({super.key});

  @override
  Widget build(BuildContext context) {
    final GlobalKey<FormState> formKey = GlobalKey<FormState>();
    return BlocConsumer<LoginFormBloc, LoginFormState>(
      listener: (context, state) {
        state.authFailureOrSuccessOption.fold(
          () => null,
          (either) => either.fold(
            (failure) {
              final bool criticalFailure = failure.maybeMap(
                serverError: (_) => true,
                orElse: () => false,
              );
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  backgroundColor: criticalFailure
                      ? Theme.of(context).colorScheme.error
                      : Theme.of(context).colorScheme.error.withOpacity(0.7),
                  content: Text(
                      failure.maybeMap(
                        invalidUsernameAndPasswordCombination: (_) => 'Invalid username and password combination',
                        serverError: (_) => 'Server error',
                        orElse: () => 'Something went wrong',
                      ),
                      style: TextStyle(
                          color: Theme.of(context).colorScheme.onError)),
                ),
              );
            },
            (_) {
              BlocProvider.of<AuthBloc>(context).add(const AuthEvent.authCheckRequested());
              return context.router.replace(const CategoriesRoute());
            },
          ),
        );
      },
      builder: (context, state) {
        return Form(
          key: formKey,
          child: Column(
            children: [
              const SizedBox(height: 16),
              TextFormField(
                autocorrect: false,
                decoration: const InputDecoration(
                  labelText: 'Username',
                ),
                onChanged: (value) => context
                    .read<LoginFormBloc>()
                    .add(LoginFormEvent.usernameChanged(value)),
                autovalidateMode: AutovalidateMode.onUserInteraction,
                validator: (_) {
                  return state.username.value.fold(
                    (f) => f.maybeMap(
                      empty: (_) => "The username can't be empty",
                      shortUsername: (_) => 'The username is too short',
                      orElse: () => "Unknown validation error",
                    ),
                    (_) => null,
                  );
                },
              ),
              const SizedBox(height: 16),
              TextFormField(
                decoration: const InputDecoration(
                  labelText: 'Password',
                ),
                autovalidateMode: AutovalidateMode.onUserInteraction,
                obscureText: true,
                enableSuggestions: false,
                autocorrect: false,
                onChanged: (value) => context
                    .read<LoginFormBloc>()
                    .add(LoginFormEvent.passwordChanged(value)),
                validator: (_) {
                  return state.password.value.fold(
                    (f) => f.maybeMap(
                      shortPassword: (_) => 'The password is too short',
                      orElse: () => "Unknown validation error",
                    ),
                    (_) => null,
                  );
                },
              ),
              FilledButton(
                style: TextButton.styleFrom(
                  backgroundColor: Colors.transparent,
                  foregroundColor: cBlackColor.withAlpha(150),
                ),
                onPressed: () {},
                child: const SizedBox(
                  width: double.infinity,
                  child: Text(
                    'Forgot password?',
                    style: TextStyle(fontSize: 12),
                    textAlign: TextAlign.right,
                  ),
                ),
              ),
              const SizedBox(height: 16),
              WholeLengthButton(
                text: "Login",
                disabled: state.isSubmitting,
                onPressed: () {
                  if (formKey.currentState!.validate()) {
                    context.read<LoginFormBloc>().add(
                          const LoginFormEvent
                              .loginWithUsernameAndPasswordPressed(),
                        );
                  }
                },
              ),
            ],
          ),
        );
      },
    );
  }
}
