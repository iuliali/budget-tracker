import 'package:budget_tracker/config.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class VerifyEmailWidget extends StatelessWidget {
  const VerifyEmailWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Uri url = Uri.parse(MAIL_URL);

    Future<void> openMail() async {
      if (!await launchUrl(url)) {
        throw Exception('Could not launch $url');
      }
    }

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.background,
        elevation: 0,
        title: Text(
          'Verify Email',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20,
            color: Theme.of(context).colorScheme.secondary,
          ),
        ),
      ),
      body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Expanded(child: SizedBox()),
            const Center(child: Text('Please verify your email')),
            // Link to web page to verify email
            TextButton(
              onPressed: openMail,
              child: const Text('Verify email'),
            ),
            const Expanded(child: SizedBox()),
            const SizedBox(height: 20),
            // Go back to login page
            TextButton(
              onPressed: () {
                Navigator.of(context).pushNamedAndRemoveUntil(
                    '/login', (Route<dynamic> route) => false);
              },
              child: const Text('Go back to login'),
            ),
            const Expanded(child: SizedBox()),
          ],
        ),
    );
  }
}
