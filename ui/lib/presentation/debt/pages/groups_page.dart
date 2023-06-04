import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../domain/debt/entities/group.dart';
import '../../../injection.dart';
import '../../../application/dept/groups/groups_bloc.dart';
import '../../core/colors.dart';
import '../../core/routing/router.dart';
import '../../core/widgets/app_bar.dart';
import '../../core/widgets/header.dart';
import '../../core/widgets/menu.dart';

@RoutePage()
class GroupsPage extends StatelessWidget {
  const GroupsPage({Key? key}) : super(key: key);

  void _groupsListener(BuildContext context, GroupsState state) {
    state.failureOrGroups.fold(
      () {},
      (either) => either.fold(
        (failure) => ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(failure.maybeMap(
              unexpected: (_) =>
                  "Unexpected error occured while fetching groups",
              notFound: (_) => "Group not found",
              orElse: () => "Unexpected error occured",
            )),
          ),
        ),
        (categories) {},
      ),
    );
  }

  Widget _groupsBuilder(BuildContext context, GroupsState state) {
    final List<Group> groups = state.failureOrGroups.fold(
        () => [],
        (a) => a.fold(
              (l) => [],
              (r) => r,
            ));
    if (state.isFetching) {
      return const Center(
        child: CircularProgressIndicator(),
      );
    }
    if (groups.isEmpty) {
      return const Center(
        child: Text("No groups found!"),
      );
    }
    return ListView.builder(
      shrinkWrap: true,
      itemCount: groups.length,
      itemBuilder: (context, index) {
        final item = groups[index];
        return Dismissible(
          key: Key(item.id.toString()),
          onDismissed: (direction) {
            context.read<GroupsBloc>().add(GroupsEvent.deleteGroup(item.id));
          },
          background: Container(
            color: Colors.red,
            alignment: Alignment.center,
            child: const Row(
              children: [
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Icon(
                    Icons.delete,
                    color: Colors.white,
                  ),
                ),
                Spacer(),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Icon(
                    Icons.delete,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
          child: ListTile(
            onTap: () {
              context.router.navigate(GroupRoute(group: item));
            },
            title: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(item.name.getOrCrash().toString()),
                    const Text(
                      "Description",
                      style: TextStyle(
                        fontSize: 12,
                        color: cGreyColor,
                      ),
                    ),
                  ],
                ),
                const Spacer(),
                Text(
                  "${item.balance.getOrCrash()} RON",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: item.balance.getOrElse(0) < 0
                        ? Colors.red
                        : Colors.green,
                  ),
                ),
              ],
            ),
            leading: const Icon(Icons.drag_indicator),
            trailing: const Icon(Icons.chevron_right),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => getIt<GroupsBloc>()..add(const GroupsEvent.getGroups()),
      child: Scaffold(
        backgroundColor: Theme.of(context).colorScheme.background,
        appBar: generateAppBarWidget(context),
        drawer: const Drawer(child: MenuWidget()),
        floatingActionButton: FloatingActionButton(
          onPressed: () => context.router.navigate(const AddGroupRoute()),
          backgroundColor: Theme.of(context).colorScheme.primary,
          child: const Icon(Icons.add),
        ),
        body: SafeArea(
          child: ListView(
            shrinkWrap: true,
            children: <Widget>[
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 32),
                child: HeaderWidget(
                    title: "Groups",
                    subtitle:
                        "Split expenses with friends, roommates, and more."),
              ),
              BlocConsumer<GroupsBloc, GroupsState>(
                listener: _groupsListener,
                builder: _groupsBuilder,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
