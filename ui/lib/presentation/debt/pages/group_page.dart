import 'package:auto_route/auto_route.dart';
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../application/dept/groups/groups_bloc.dart';
import '../../../domain/debt/entities/group.dart';
import '../../core/colors.dart';
import '../../core/routing/router.dart';
import '../../core/widgets/header.dart';

@RoutePage()
class GroupPage extends StatelessWidget {
  const GroupPage({Key? key, required this.group}) : super(key: key);

  final Group group;

  @override
  Widget build(BuildContext context) {
    BlocProvider.of<GroupsBloc>(context).add(const GroupsEvent.getGroups());
    return BlocBuilder<GroupsBloc, GroupsState>(
  builder: (context, state) {
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

    final group = groups.firstWhereOrNull((element) => element.id == this.group.id);
    if (groups.isEmpty || group == null) {
      return const Center(
        child: Text("No groups found!"),
      );
    }

    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      appBar: AppBar(
        leading: IconButton(
          onPressed: () => context.router.pop(),
          icon: const Icon(Icons.arrow_back, color: cBlackColor),
        ),
        backgroundColor: Theme.of(context).colorScheme.background,
        elevation: 0,
      ),
      floatingActionButton: FloatingActionButton(
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(15.0))),
        onPressed: () => context.router.navigate(SplitRoute(group: group)),
        backgroundColor: Theme.of(context).colorScheme.primary,
        child: const Icon(Icons.add),
      ),
      body: SafeArea(
        child: ListView(
          shrinkWrap: true,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 32),
              child: HeaderWidget(
                  title: group.name.getOrCrash().toString(),
                  subtitle: "Settle up debts with your friends"),
            ),
            const SizedBox(height: 32),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 32),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text("Members"),
                  const Spacer(),
                  Text(
                    "${group.members.length} members",
                  ),
                ],
              ),
            ),
            const SizedBox(height: 16),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 32),
              child: ListView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: group.members.length,
                itemBuilder: (context, index) {
                  final numberOfDebts = group.debts
                      .where((element) =>
                          element.debtor.id == group.members[index].id)
                      .length;
                  return ListTile(
                    leading: const Icon(Icons.person),
                    title: Text(
                        group.members[index].firstName.getOrCrash().toString()),
                    trailing: Text(
                      "$numberOfDebts debts",
                      style: numberOfDebts > 0
                          ? const TextStyle(
                              fontWeight: FontWeight.bold,
                              color: cRedColor,
                            )
                          : null,
                    ),
                  );
                },
              ),
            ),
            const SizedBox(height: 40),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 32),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text("Settle debts"),
                  Text(
                    "${group.debts.length} transactions",
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 32),
              child: ListView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: group.debts.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    leading: const Icon(Icons.payment),
                    title: Row(
                      children: [
                        Text(group.debts[index].debtor.firstName
                            .getOrCrash()
                            .toString()),
                        const SizedBox(width: 8),
                        const Icon(Icons.arrow_forward),
                        const SizedBox(width: 8),
                        Text(
                          "${group.debts[index].debt.getOrCrash()} RON",
                        ),
                        const SizedBox(width: 8),
                        const Icon(Icons.arrow_forward),
                        const SizedBox(width: 8),
                        Text(group.debts[index].creditor.firstName
                            .getOrCrash()
                            .toString()),
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  },
);
  }
}
