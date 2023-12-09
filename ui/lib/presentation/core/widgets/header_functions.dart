import 'package:flutter/material.dart';

import 'function_button.dart';

class HeaderFunctions extends StatelessWidget {
  const HeaderFunctions({Key? key, required this.buttons}) : super(key: key);

  final List<FunctionButton> buttons;

  @override
  Widget build(BuildContext context) {
    return
      SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: buttons.map(
          (button) => Padding(
            padding: const EdgeInsets.only(right: 16),
            child: button,
          ),
        ).toList()
      ),
    );
  }
}
