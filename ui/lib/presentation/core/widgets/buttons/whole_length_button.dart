import 'package:flutter/material.dart';
import '../../colors.dart';

class WholeLengthButton extends StatelessWidget {
  const WholeLengthButton({
    Key? key,
    required this.text,
    required this.onPressed,
    this.filled = true,
    this.disabled = false,
  }) : super(key: key);

  final String text;
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
      child: SizedBox(
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Text(
            text,
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
