import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';

import '../../../domain/debt/entities/group.dart';
import '../../core/widgets/header.dart';

@RoutePage()
class GroupPage extends StatelessWidget {
  const GroupPage({Key? key, required this.group}) : super(key: key);

  final Group group;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                Text(
                  "Members",
                  style: Theme.of(context).textTheme.headline6,
                ),
                Text(
                  "${group.members.length} members",
                  style: Theme.of(context).textTheme.subtitle1,
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
                return ListTile(
                  leading: const Icon(Icons.person),
                  title: Text(group.members[index].name.getOrCrash()),
                  trailing: const Text(
                    "0.00 RON",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                );
              },
            ),
          ),
        ],
      )),
    );
  }
}
