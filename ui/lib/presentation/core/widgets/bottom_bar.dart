import 'package:auto_route/auto_route.dart';
import 'package:budget_tracker/presentation/core/colors.dart';
import 'package:budget_tracker/presentation/core/widgets/menu.dart';
import 'package:flutter/material.dart';

class BottomBar extends StatelessWidget {
  const BottomBar({super.key});

  @override
  Widget build(BuildContext context) {
    final items = menu_items.where((item) => item.bottomBar).toList();
    final selectedIndex = items.indexWhere(
            (item) => context.router.isRouteActive(item.route.routeName));
    return NavigationBar(
      elevation: 32,
      // hide labels
      indicatorColor: cWhiteColor,
      selectedIndex: selectedIndex == -1 ? 3 : selectedIndex,
      destinations: items
          .map((item) => NavigationDestination(
                icon: Icon(
                  item.icon,
                  color: context.router.isRouteActive(item.route.routeName)
                      ? cLightBlueColor
                      : cBlackColor,
                ),
                label: item.title,
              ))
          .toList(),
      
      onDestinationSelected: (index) {
        final route = items[index].route;
        context.router.replace(route);
      },
    );
  }
}
