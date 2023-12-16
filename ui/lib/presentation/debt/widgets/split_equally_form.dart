import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../application/dept/split_form/split_form_bloc.dart';
import '../../core/colors.dart';
import '../../core/widgets/buttons/whole_length_button.dart';

class SplitEquallyForm extends StatelessWidget {
  const SplitEquallyForm({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final formKey = GlobalKey<FormState>();
    return BlocConsumer<SplitFormBloc, SplitFormState>(
      listener: (context, state) {},
      builder: (context, state) {
        return state.groupOption.fold(
          () => const Center(child: CircularProgressIndicator()),
          (group) {
            return Form(
            key: formKey,
            child: ListView(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text("Members"),
                    const Spacer(),
                    Text(
                      "${group.members.length} members",
                    ),
                  ],
                ),
                const SizedBox(height: 16),
                ListView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: group.members.length,
                  itemBuilder: (context, index) {
                    final memberId = group.members[index].id;
                    final isParticipant = state.deptAmounts.any((element) =>
                        element.keys.first == memberId);
                    final debtAmount = state
                        .deptAmounts
                        .firstWhereOrNull((element) =>
                            element.keys.first == memberId)
                        ?.values
                        .first
                        .getOrElse(0.0)
                        .toStringAsFixed(2) ?? "";
                    return ListTile(
                      leading: const Icon(Icons.person),
                      title: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Flexible(
                      flex: 2,
                            child: Text(group.members[index].firstName
                                .getOrCrash()
                                .toString()),
                          ),
                      isParticipant ? Flexible(
                            flex: 1,
                            child: Text(
                              debtAmount,
                              textAlign: TextAlign.end,)
                          ): Flexible(child: Container(),)
                        ],
                      ),
                      trailing: isParticipant
                          ? IconButton(
                              onPressed: () => context
                                  .read<SplitFormBloc>()
                                  .add(SplitFormEvent.removeParticipant(
                                      group.members[index].id)),
                              icon: const Icon(
                                Icons.remove,
                                color: cRedColor,
                              ),
                            )
                          : IconButton(
                              onPressed: () => context
                                  .read<SplitFormBloc>()
                                  .add(SplitFormEvent.addParticipant(
                                      group.members[index].id)),
                              icon: const Icon(
                                Icons.add,
                                color: cGreenColor,
                              ),
                            ),
                    );
                  },
                ),
                const SizedBox(height: 20),
                TextFormField(
                  decoration: const InputDecoration(
                    labelText: 'Amount',
                  ),
                  autocorrect: false,
                  keyboardType: const TextInputType.numberWithOptions(
                    decimal: true,
                    signed: false,
                  ),
                  initialValue: state.amount.value.fold(
                    (l) => l.maybeMap(
                      invalidDouble: (_) => '',
                      orElse: () => '',
                    ),
                    (r) => r.toStringAsFixed(2),
                  ),
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  onChanged: (value) {
                    context
                      .read<SplitFormBloc>()
                      .add(SplitFormEvent.amountChanged(value));
                  },
                  validator: (_) {
                    return state.amount.value.fold(
                        (f) => f.maybeMap(
                              empty: (_) =>
                                  'Transaction amount cannot be empty',
                              invalidDouble: (_) =>
                                  'Invalid transaction amount',
                              negativeTransactionAmount: (_) =>
                                  'Transaction amount cannot be negative',
                              orElse: () => null,
                            ),
                        (_) => state.saveFailureOrSuccessOption.fold(
                              () => null,
                              (either) => either.fold(
                                (failure) => failure.maybeMap(
                                  debtSumNotEqualAmount: (_) =>
                                      'Debt sum is not equal to transaction amount',
                                  orElse: () => null,
                                ),
                                (_) => null,
                              ),
                            ));
                  },
                ),
                const SizedBox(height: 40),
                WholeLengthButton(
                  onPressed: () {
                      context
                          .read<SplitFormBloc>()
                          .add(const SplitFormEvent.saved());
                  },
                  text: 'Save',
                ),
              ],
            ),
          );
          },
        );
      },
    );
  }
}
