import 'package:flutter/material.dart';
import '../../colors.dart';

class WholeLengthButton extends StatelessWidget {
  const WholeLengthButton({
    Key? key,
    required this.text,
    required this.onPressed,
    this.filled = true,
    this.disabled = false,
    this.color = cLightBlueColor,
  }) : super(key: key);

  final String text;
  final Function() onPressed;
  final bool filled;
  final bool disabled;
  final Color color;

  @override
  Widget build(BuildContext context) {
    final accentColor = color.withAlpha(disabled ? 100 : 255);
    return FilledButton(
      style: FilledButton.styleFrom(
        backgroundColor: filled ? accentColor : Colors.transparent,
        foregroundColor: filled ? cWhiteGreyColor : color,
        side: BorderSide(color: accentColor),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
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
