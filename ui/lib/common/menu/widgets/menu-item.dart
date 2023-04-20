import 'package:flutter/material.dart';

import '../models.dart';

class MenuItemWidget extends StatelessWidget {
  final MenuItem item;
  final bool isSelected;
  final VoidCallback onTap;

  const MenuItemWidget({
    Key? key,
    required this.item,
    required this.isSelected,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        item.title,
        style: TextStyle(
          color: isSelected ? Colors.blue : Colors.black,
          fontWeight: FontWeight.bold,
        ),
      ),
      leading: Icon(
        item.icon,
        color: isSelected ? Colors.blue : Colors.black,
      ),
      onTap: onTap,
    );
  }
}