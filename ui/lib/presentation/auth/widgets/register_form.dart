import 'package:budget_tracker/presentation/auth/pages/verify_email.dart';
import 'package:budget_tracker/presentation/auth/widgets/register_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../application/auth/register_form/register_form_bloc.dart';
import '../../../domain/auth/validators.dart';

class RegisterForm extends StatelessWidget {
  const RegisterForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final GlobalKey<FormState> formKey = GlobalKey<FormState>();
    return BlocConsumer<RegisterFormBloc, RegisterFormState>(
      listener: (context, state) {
        state.authFailureOrSuccessOption.fold(
          () => null,
          (either) => either.fold((failure) {
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
                      usernameAlreadyInUse: (_) => 'Username already in use',
                      emailAlreadyInUse: (_) => 'Email already in use',
                      serverError: (_) => 'Server error',
                      orElse: () => 'Something went wrong',
                    ),
                    style: TextStyle(
                        color: Theme.of(context).colorScheme.onError)),
              ),
            );
          },
              (_) => Navigator.of(context).pushReplacement(MaterialPageRoute(
                    builder: (context) => const VerifyEmailPage(),
                  ))),
        );
      },
      builder: (context, state) {
        return Form(
          key: formKey,
          child: Column(
            children: [
              TextFormField(
                decoration: const InputDecoration(
                  labelText: 'Username',
                ),
                autocorrect: false,
                onChanged: (value) => context
                    .read<RegisterFormBloc>()
                    .add(RegisterFormEvent.usernameChanged(value)),
                autovalidateMode: AutovalidateMode.onUserInteraction,
                validator: (_) => state.username.value.fold(
                  (f) => f.maybeMap(
                    empty: (_) => 'Username cannot be empty',
                    shortUsername: (_) => 'Short username',
                    orElse: () => null,
                  ),
                  (_) => state.authFailureOrSuccessOption.fold(
                    () => null,
                    (either) => either.fold(
                      (failure) => failure.maybeMap(
                        usernameAlreadyInUse: (_) => 'Username already in use',
                        orElse: () => null,
                      ),
                      (_) => null,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 16),
              TextFormField(
                decoration: const InputDecoration(
                  labelText: 'Password',
                ),
                obscureText: true,
                enableSuggestions: false,
                autocorrect: false,
                onChanged: (value) => context
                    .read<RegisterFormBloc>()
                    .add(RegisterFormEvent.passwordChanged(value)),
                autovalidateMode: AutovalidateMode.onUserInteraction,
                validator: (_) => state.password.value.fold(
                  (f) => f.maybeMap(
                    empty: (_) => 'Password cannot be empty',
                    shortPassword: (_) => 'Short password',
                    orElse: () => null,
                  ),
                  (_) => null,
                ),
              ),
              const SizedBox(height: 16),
              TextFormField(
                decoration: const InputDecoration(
                  labelText: 'Confirm Password',
                ),
                obscureText: true,
                enableSuggestions: false,
                autocorrect: false,
                onChanged: (value) => context
                    .read<RegisterFormBloc>()
                    .add(RegisterFormEvent.confirmPasswordChanged(value)),
                autovalidateMode: AutovalidateMode.onUserInteraction,
                validator: (_) {
                  final confirmPassword = state.confirmPassword;
                  final validatePassword = validatePasswordsMatch(
                    state.password,
                    confirmPassword,
                  );
                  return confirmPassword.value.fold(
                    (f) => f.maybeMap(
                      empty: (_) => 'Confirm Password cannot be empty',
                      shortPassword: (_) => 'Short password',
                      orElse: () => null,
                    ),
                    (_) => (validatePassword.isLeft())
                        ? 'Passwords do not match'
                        : null,
                  );
                },
              ),
              const SizedBox(height: 16),
              TextFormField(
                decoration: const InputDecoration(
                  labelText: 'Email',
                ),
                autocorrect: false,
                onChanged: (value) => context
                    .read<RegisterFormBloc>()
                    .add(RegisterFormEvent.emailChanged(value)),
                autovalidateMode: AutovalidateMode.onUserInteraction,
                validator: (_) {
                  return state.emailAddress.value.fold(
                      (f) => f.maybeMap(
                            empty: (_) => 'Email cannot be empty',
                            invalidEmail: (_) => 'Invalid email address',
                            orElse: () => null,
                          ),
                      (_) => state.authFailureOrSuccessOption.fold(
                            () => null,
                            (either) => either.fold(
                              (failure) => failure.maybeMap(
                                emailAlreadyInUse: (_) =>
                                    'Email already in use',
                                orElse: () => null,
                              ),
                              (_) => null,
                            ),
                          ));
                },
              ),
              const SizedBox(height: 16),
              TextFormField(
                decoration: const InputDecoration(
                  labelText: 'First Name',
                ),
                autocorrect: false,
                onChanged: (value) => context
                    .read<RegisterFormBloc>()
                    .add(RegisterFormEvent.firstNameChanged(value)),
                autovalidateMode: AutovalidateMode.onUserInteraction,
                validator: (_) {
                  return state.firstName.value.fold(
                    (f) => f.maybeMap(
                      empty: (_) => 'First name cannot be empty',
                      shortFirstName: (_) => 'Short first name',
                      orElse: () => null,
                    ),
                    (_) => null,
                  );
                },
              ),
              const SizedBox(height: 16),
              TextFormField(
                decoration: const InputDecoration(
                  labelText: 'Last Name',
                ),
                autocorrect: false,
                onChanged: (value) => context
                    .read<RegisterFormBloc>()
                    .add(RegisterFormEvent.lastNameChanged(value)),
                autovalidateMode: AutovalidateMode.onUserInteraction,
                validator: (_) {
                  return state.lastName.value.fold(
                    (f) => f.maybeMap(
                      empty: (_) => 'Last name cannot be empty',
                      shortLastName: (_) => 'Short last name',
                      orElse: () => null,
                    ),
                    (_) => null,
                  );
                },
              ),
              const SizedBox(height: 16),
              RegisterButton(
                onPressed: () {
                  if (formKey.currentState!.validate()) {
                    context
                        .read<RegisterFormBloc>()
                        .add(const RegisterFormEvent.registerPressed());
                  }
                },
              )
            ],
          ),
        );
      },
    );
  }
}
