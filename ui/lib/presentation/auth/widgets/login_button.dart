import 'package:flutter/material.dart';
import '../../core/colors.dart';

class LoginButton extends StatelessWidget {
  const LoginButton({
    Key? key,
    required this.onPressed,
    this.filled = true,
    this.disabled = false,
  }) : super(key: key);

  final Function() onPressed;
  final bool filled;
  final bool disabled;

  @override
  Widget build(BuildContext context) {
    final accentColor = cLightBlueColor.withAlpha(disabled ? 100 : 255);
    return FilledButton(
      style: FilledButton.styleFrom(
        backgroundColor: filled ? accentColor : Colors.transparent,
        foregroundColor: filled ? cWhiteGreyColor : cLightBlueColor,
        side: BorderSide(color: accentColor),
      ),
      onPressed: disabled ? () {} : onPressed,
      child: const SizedBox(
        width: double.infinity,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.0),
          child: Text(
            'Login',
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
