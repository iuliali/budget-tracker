import 'package:budget_tracker/presentation/core/colors.dart';
import 'package:flutter/material.dart';

class MySquare extends StatelessWidget {
  final String child;

  final bool isSelected;

  final void Function() onTap;

  MySquare({super.key, required this.child, required this.isSelected, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
          vertical: 8.0, horizontal: 32), // Change to vertical padding
      child: Center(
        // Wrap the Container in a Center widget
        child: GestureDetector(
          onTap: onTap,
          child: Container(
            height: 60,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: isSelected ? cLightBlueColor : cGreyColor.withOpacity(0.2),
            ),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.only(left: 17.0),
                child: Text(
                  child,
                  style: TextStyle(
                    fontSize: 17,
                    color: isSelected ? cWhiteColor : cBlackColor,
                    fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
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
