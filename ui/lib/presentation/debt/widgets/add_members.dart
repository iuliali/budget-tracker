import 'package:budget_tracker/presentation/core/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../application/dept/group_form/group_form_bloc.dart';
import '../../../domain/auth/entities/user.dart';

class AddMembersForm extends StatelessWidget {
  const AddMembersForm({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GroupFormBloc, GroupFormState>(
  builder: (context, state) {
    return ListView(
      shrinkWrap: true,
      children: [
        ListView.builder(
            shrinkWrap: true,
            itemCount: state.usersFailureOrSuccessOption.fold(
                  () => 0,
                  (a) => a.fold(
                    (l) => 0,
                    (r) => r.length,
              ),
            ),
            itemBuilder: (context, index) {
              final users = state.usersFailureOrSuccessOption.fold(
                    () => [],
                    (a) => a.fold(
                      (l)  => [],
                      (r) => r,
                ),
              );
              final User user = users[index];
              final bool isAdded = state.members.contains(user.id);
              return ListTile(
                title: Text('${user.firstName.getOrElse("")} ${user.lastName.getOrElse("")}'),
                trailing: isAdded
                    ? IconButton(
                  onPressed: () => context
                      .read<GroupFormBloc>()
                      .add(GroupFormEvent.removeMember(user.id)),
                  icon: const Icon(Icons.remove, color: cRedColor),
                )
                  : IconButton(
                  onPressed: () => context
                      .read<GroupFormBloc>()
                      .add(GroupFormEvent.addMember(user.id)),
                  icon: const Icon(Icons.add, color: cGreenColor,),
                ),
              );
            }),
        const SizedBox(height: 16),
        TextFormField(

          decoration: const InputDecoration(
            prefixIcon: Icon(Icons.search),
            suffixIcon: Icon(Icons.person),
            labelText: 'Search Users',
          ),
          autocorrect: false,
          keyboardType: const TextInputType.numberWithOptions(
              decimal: true, signed: false),
          onChanged: (value) => context
              .read<GroupFormBloc>()
              .add(GroupFormEvent.findUserByUsername(value)),
          autovalidateMode: AutovalidateMode.onUserInteraction,
          validator: (_) {
            return state.findUserByUsername.value.fold(
                  (f) => f.maybeMap(
                empty: (_) => 'Username cannot be empty',
                shortUsername: (_) => 'Username is too short',
                orElse: () => null,
              ),
                  (_) => null,
            );
          },
        ),
        const SizedBox(height: 16),

      ],
    );
  },
);
  }
}
