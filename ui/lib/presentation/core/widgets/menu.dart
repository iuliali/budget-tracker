import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../application/auth/auth_bloc.dart';
import '../colors.dart';
import '../routing/router.dart';

class MenuItem {
  final String title;
  final IconData icon;
  final PageRouteInfo route;
  final bool disabled;

  const MenuItem({
    required this.title,
    required this.icon,
    required this.route,
    this.disabled = false,
  });
}

class MenuItemWidget extends StatelessWidget {
  final String title;
  final IconData icon;
  final bool selected;
  final bool disabled;
  final VoidCallback onTap;

  const MenuItemWidget({
    Key? key,
    required this.title,
    required this.icon,
    required this.selected,
    required this.onTap,
    required this.disabled,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        title,
        style: TextStyle(
          color: disabled
              ? cGreyColor
              : selected
              ? cBlueColor
              : cBlackColor,
          fontWeight: FontWeight.bold,
        ),
      ),
      leading: Icon(
        icon,
        color: selected ? Colors.blue : Colors.black,
      ),
      onTap: disabled ? () => {} : onTap,
    );
  }
}

// a side menu widget
class MenuWidget extends StatelessWidget {
  const MenuWidget({
    Key? key,
  }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    const items = [
      MenuItem(
          title: "Expenses", icon: Icons.south_east, route: ExpensesRoute()),
      MenuItem(title: "Incomes", icon: Icons.north_east, route: IncomesRoute()),
      MenuItem(title: "Categories", icon: Icons.dns, route: CategoriesRoute()),
      MenuItem(title: "Groups", icon: Icons.attach_money, route: GroupRoute()),
      // const MenuItem(title: "Statistics", icon: Icons.pie_chart, route: "/statistics", disabled: true),
      // const MenuItem(title: "Settings", icon: Icons.settings, route: "/settings", disabled: true),
    ];

    return SafeArea(
      child: Column(
        children: [
          ListView.builder(
            shrinkWrap: true,
            itemCount: items.length,
            itemBuilder: (context, index) {
              final item = items[index];
              return MenuItemWidget(
                title: item.title,
                icon: item.icon,
                disabled: item.disabled,
                selected: context.router.isRouteActive(item.route.routeName),
                onTap: () => context.navigateTo(item.route),
              );
            },
          ),
          const Spacer(),
          BlocBuilder<AuthBloc, AuthState>(
            builder: (context, state) {
              return ListTile(
                title: const Text('Logout'),
                leading: const Icon(Icons.logout, color: cRedColor),
                onTap: () {
                  context.read<AuthBloc>().add(const AuthEvent.signedOut());
                  context.router.replace(const LoginRoute());
                },
              );
            },
          ),
        ],
      ),
    );
  }
}

