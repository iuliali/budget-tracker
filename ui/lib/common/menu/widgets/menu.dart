import 'package:budget_tracker/common/colors.dart';
import 'package:flutter/material.dart';

import '../models.dart';
import 'menu-item.dart';

// a side menu widget
class MenuWidget extends StatelessWidget {
  final List<MenuItem> items;
  final int selectedIndex;
  final ValueChanged<int> onItemSelected;

  const MenuWidget({
    Key? key,
    required this.items,
    required this.selectedIndex,
    required this.onItemSelected,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          Expanded(
            child: ListView.builder(
              shrinkWrap: true,
              itemCount: items.length,
              itemBuilder: (context, index) {
                return MenuItemWidget(
                  item: items[index],
                  isSelected: index == selectedIndex,
                  onTap: () {
                    onItemSelected(index);
                  },
                );
              },
            ),
          ),
          ListTile(
            title: const Text('Logout'),
            leading: const Icon(Icons.logout, color: cRedColor),
            onTap: () {
              Navigator.of(context).pushNamedAndRemoveUntil(
                  '/login', (Route<dynamic> route) => false);
            },
          ),
        ],
      ),
    );
  }
}

