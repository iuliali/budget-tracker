import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../application/dept/group_form/group_form_bloc.dart';
import '../../../injection.dart';
import '../../core/colors.dart';
import '../../core/widgets/header.dart';
import '../widgets/add_members.dart';
import '../widgets/group_form.dart';

@RoutePage()
class AddGroupPage extends StatelessWidget {
  const AddGroupPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          getIt<GroupFormBloc>()..add(GroupFormEvent.initialized(none())),
      child: Scaffold(
        backgroundColor: Theme.of(context).colorScheme.background,
        appBar: AppBar(
          leading: IconButton(
            onPressed: () => context.router.pop(),
            icon: const Icon(Icons.arrow_back, color: cBlackColor),
          ),
          backgroundColor: Theme.of(context).colorScheme.background,
          elevation: 0,
        ),
        body: const SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 32),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                HeaderWidget(
                  title: "Add Group",
                  subtitle: "Create a new group and invite your friends",
                ),
                Spacer(),
                AddMembersForm(),
                GroupForm(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
