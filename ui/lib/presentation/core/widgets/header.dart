import 'package:flutter/material.dart';

import '../colors.dart';

class HeaderWidget extends StatelessWidget {
  const HeaderWidget({
    Key? key,
    required this.title,
    this.subtitle,
  }) : super(key: key);

  final String title;
  final String? subtitle;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 20),
        Text(
          title,
          style: const TextStyle(
              fontSize: 30, fontWeight: FontWeight.bold, color: cBlackColor),
        ),
        subtitle == null
            ? const SizedBox()
            : Text(
                subtitle!,
                style: const TextStyle(
                  fontSize: 16,
                  color: cBlackColor,
                ),
              ),
        const SizedBox(height: 16),
      ],
    );
  }
}
