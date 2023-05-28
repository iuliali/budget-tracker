import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../core/routing/router.dart';
import '../../core/widgets/app_bar.dart';
import '../../core/widgets/menu.dart';

@RoutePage()
class GroupsPage extends StatelessWidget {
  const GroupsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Theme.of(context).colorScheme.background,
        appBar: generateAppBarWidget(context),
        drawer: const Drawer(child: MenuWidget()),
        floatingActionButton: FloatingActionButton(
          onPressed: () => context.router.push(const AddCategoryRoute()),
          child: const Icon(Icons.add),
        ),
        body: const SafeArea(
          child: Column(
            children: [],
          ),
        ));
  }
}
