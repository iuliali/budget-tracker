import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../../domain/debt/entities/group.dart';
import '../../core/colors.dart';
import '../../core/widgets/header.dart';

@RoutePage()
class GroupPage extends StatelessWidget {
  const GroupPage({Key? key, required this.group}) : super(key: key);

  final Group group;

  @override
  Widget build(BuildContext context) {
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
                Text(
                  "${group.debts.length} transactions needed",
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
              itemCount: group.debts.length,
              itemBuilder: (context, index) {
                return ListTile(
                  leading: const Icon(Icons.person),
                  title: Text(group.debts[index].debtor.username.getOrCrash()),
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
