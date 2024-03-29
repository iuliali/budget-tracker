import 'package:auto_route/auto_route.dart';
import 'package:budget_tracker/presentation/core/widgets/header.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:url_launcher/url_launcher.dart';
import '../../../application/auth/register_form/register_form_bloc.dart';
import '../../../config.dart';
import '../../../injection.dart';
import '../../core/colors.dart';
import '../../core/routing/router.dart';
import '../../core/widgets/buttons/whole_length_button.dart';

@RoutePage()
class VerifyEmailPage extends StatelessWidget {
  const VerifyEmailPage({Key? key}) : super(key: key);

  Future<void> openMail(Uri url) async {
    if (!await launchUrl(url)) {
      throw Exception('Could not launch $url');
    }
  }

  @override
  Widget build(BuildContext context) {
    final Uri url = Uri.parse(MAIL_URL);

    return BlocProvider(
      create: (_) => getIt<RegisterFormBloc>(),
      child: Scaffold(
        backgroundColor: Colors.white,
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
                  child: BlocConsumer<RegisterFormBloc, RegisterFormState>(
                    listener: (context, state) {},
                    builder: (context, state) {
                      return Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const HeaderWidget(
                            title: 'Verify your email',
                            subtitle:
                                'We have sent you an email with a link to verify your account',
                          ),
                          const Spacer(),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const SizedBox(height: 20),
                              // Import image
                              Image.asset(
                                'assets/images/verify_email.gif',
                                width: 200,
                                height: 200,
                              ),
                              const SizedBox(height: 20),
                              // Link to web page to verify email
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 16.0),
                                child: WholeLengthButton(
                                  onPressed: () => openMail(url),
                                  text: 'Verify email',
                                ),
                              ),
                              const SizedBox(height: 20),
                            ],
                          ),
                          const Spacer(),
                          WholeLengthButton(
                            onPressed: () {
                              context.navigateTo(const RegisterRoute());
                            },
                            text: 'Try again',
                            filled: false,
                            color: cBlackColor,
                          ),
                          const SizedBox(height: 20),
                          WholeLengthButton(
                            text: 'Login',
                            filled: false,
                            onPressed: () => context
                                .router.replace(const LoginRoute()),
                          ),
                        ],
                      );
                    },
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
