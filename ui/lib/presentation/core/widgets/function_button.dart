import 'package:flutter/material.dart';

class FunctionButton extends StatelessWidget {
  const FunctionButton({
    Key? key,
    required this.child,
    required this.onPressed,
    this.style
  }) : super(key: key);

  final Widget child;
  final ButtonStyle? style ;
  final Function onPressed;

  @override
  Widget build(BuildContext context) {
    final buttonStyle = style ?? const ButtonStyle();
    return FilledButton(
      style: buttonStyle,
      onPressed: () => onPressed(),
      child: child,
    );
  }
}
