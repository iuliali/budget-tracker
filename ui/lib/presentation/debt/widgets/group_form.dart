import 'package:auto_route/auto_route.dart';
import 'package:budget_tracker/application/dept/groups/groups_bloc.dart';
import 'package:budget_tracker/presentation/core/routing/router.dart';
import 'package:budget_tracker/presentation/core/widgets/buttons/whole_length_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../application/dept/group_form/group_form_bloc.dart';
import '../../../domain/debt/entities/group.dart';

class GroupForm extends StatelessWidget {
  const GroupForm({Key? key, this.group}) : super(key: key);

  final Group? group;

  @override
  Widget build(BuildContext context) {
    final GlobalKey<FormState> formKey = GlobalKey<FormState>();
    return BlocConsumer<GroupFormBloc, GroupFormState>(
      listener: (context, state) {
        state.saveFailureOrSuccessOption.fold(
          () {},
          (either) => either.fold(
            (failure) {
              final snackBar = SnackBar(
                content: Text(
                  failure.maybeMap(
                    unexpected: (_) =>
                        'Unexpected error occurred, please contact support.',
                    groupAlreadyExists: (_) =>
                        'Category with this name already exists.',
                    orElse: () => "Couldn't save the category.",
                  ),
                ),
              );
              ScaffoldMessenger.of(context).showSnackBar(snackBar);
            },
            (_) {
              BlocProvider.of<GroupsBloc>(context)
                  .add(const GroupsEvent.getGroups());
              context.router.popAndPush(const GroupsRoute());
            },
          ),
        );
      },
      builder: (context, state) {
        return Form(
          key: formKey,
          child: ListView(
            shrinkWrap: true,
            children: [
              TextFormField(
                decoration: const InputDecoration(
                  labelText: 'Name',
                ),
                autocorrect: false,
                initialValue: group?.name.getOrElse(""),
                onChanged: (value) => context
                    .read<GroupFormBloc>()
                    .add(GroupFormEvent.groupNameChanged(value)),
                autovalidateMode: AutovalidateMode.onUserInteraction,
                validator: (_) {
                  return state.groupName.value.fold(
                      (f) => f.maybeMap(
                            empty: (_) => 'Group name cannot be empty',
                            shortString: (_) => 'Group name is too short',
                            orElse: () => null,
                          ),
                      (_) => state.saveFailureOrSuccessOption.fold(
                            () => null,
                            (either) => either.fold(
                              (failure) => failure.maybeMap(
                                orElse: () => null,
                              ),
                              (_) => null,
                            ),
                          ));
                },
              ),
              const SizedBox(height: 20),
              WholeLengthButton(
                onPressed: () {
                  if (formKey.currentState!.validate()) {
                    context
                        .read<GroupFormBloc>()
                        .add(const GroupFormEvent.saved());
                  }
                },
                text: 'Save',
              ),
            ],
          ),
        );
      },
    );
  }
}
