import 'package:flutter/material.dart';

import '../../core/colors.dart';

class TryAgainButton extends StatelessWidget {
  const TryAgainButton({Key? key, required this.onPressed}) : super(key: key);

  final Function() onPressed;
  @override
  Widget build(BuildContext context) {
    return FilledButton(
      style: FilledButton.styleFrom(
        backgroundColor: Colors.transparent,
        foregroundColor: cBlackColor,
        side: const BorderSide(color: cGreyColor),
      ),
      onPressed: onPressed,
      child: const SizedBox(
        width: double.infinity,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.0),
          child: Text(
            'Try Again',
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
