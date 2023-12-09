import 'package:flutter/material.dart';

import '../../core/colors.dart';

class RegisterButton extends StatelessWidget {
  const RegisterButton({Key? key, required this.onPressed, this.filled = true}) : super(key: key);

  final Function() onPressed;
  final bool filled;

  @override
  Widget build(BuildContext context) {
    return
      FilledButton(
        style: FilledButton.styleFrom(
          backgroundColor: filled ? cLightBlueColor : Colors.transparent,
          foregroundColor: filled ? cWhiteGreyColor : cLightBlueColor,
          side: const BorderSide(color: cLightBlueColor),
        ),
        onPressed: onPressed,
        child: const SizedBox(
          width: double.infinity,
          child: Padding(
            padding:
            EdgeInsets.symmetric(horizontal: 16.0),
            child: Text(
              'Register',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      );
  }
}
