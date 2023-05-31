import 'package:auto_route/auto_route.dart';
import 'package:budget_tracker/presentation/core/widgets/buttons/whole_length_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../application/transactions/expenses/expense_form/expense_form_bloc.dart';
import '../../core/routing/router.dart';

class ExpenseForm extends StatelessWidget {
  const ExpenseForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final GlobalKey<FormState> formKey = GlobalKey<FormState>();
    return BlocConsumer<ExpenseFormBloc, ExpenseFormState>(
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
                    orElse: () => "Couldn't save the expense.",
                  ),
                ),
              );
              ScaffoldMessenger.of(context).showSnackBar(snackBar);
            },
                (_) {
              context.router.popAndPush(const CategoriesRoute());
            },
          ),
        );
      },
      builder: (context, state) {
        return Form(
          key: formKey,
          child: IntrinsicHeight(
            child: Column(
              children: [
                TextFormField(
                  decoration: const InputDecoration(
                    labelText: 'Recipient',
                  ),
                  autocorrect: false,
                  onChanged: (value) => context
                      .read<ExpenseFormBloc>()
                      .add(ExpenseFormEvent.recipientChanged(value)),
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  validator: (_)  {
                    return state.recipient.value.fold(
                            (f) => f.maybeMap(
                          empty: (_) => 'Expense recipient cannot be empty',
                          shortString: (_) =>
                          'Expense recipient is too short',
                          orElse: () => null,
                        ), (_) => null);
                  },
                ),
                const SizedBox(height: 20),
                IntrinsicHeight(
                  child: Row(
                    children: [
                      Flexible(
                        flex: 2,
                        child: TextFormField(
                          decoration: const InputDecoration(
                            labelText: 'Amount',
                          ),
                          keyboardType:
                            const TextInputType.numberWithOptions(decimal: true, signed: false),
                          autocorrect: false,
                          onChanged: (value) => context
                              .read<ExpenseFormBloc>()
                              .add(ExpenseFormEvent.amountChanged(value)),
                          autovalidateMode: AutovalidateMode.onUserInteraction,
                          validator: (_) {
                            return state.amount.value.fold(
                                    (f) => f.maybeMap(
                                  empty: (_) => 'Expense amount cannot be empty',
                                  negativeTransactionAmount: (_) =>
                                  'Expense amount cannot be negative',
                                  orElse: () => null,
                                ), (_) => null);
                          },
                        ),
                      ),
                      const SizedBox(width: 20),
                      Flexible(
                        flex: 1,
                        child: DropdownButtonFormField(
                          decoration: const InputDecoration(
                            labelText: 'Currency',
                          ),
                          value: state.currency.value.getOrElse(() => 'RON'),
                          onChanged: (value) => context
                              .read<ExpenseFormBloc>()
                              .add(ExpenseFormEvent.currencyChanged(value ?? 'RON')),
                          autovalidateMode: AutovalidateMode.onUserInteraction,
                          validator: (_) {
                            return state.currency.value.fold(
                                    (f) => f.maybeMap(
                                  invalidTransactionCurrency: (_) => 'Invalid currency',
                                  orElse: () => null,
                                ), (_) => null);
                          },
                          items: const [
                            DropdownMenuItem(
                              value: 'RON',
                              child: Text('RON'),
                            ),
                            DropdownMenuItem(
                              value: 'EUR',
                              child: Text('EUR'),
                            ),
                            DropdownMenuItem(
                              value: 'USD',
                              child: Text('USD'),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                WholeLengthButton(
                  onPressed: () {
                    if (formKey.currentState!.validate()) {
                      context
                          .read<ExpenseFormBloc>()
                          .add(const ExpenseFormEvent.saved());
                    }
                  },
                  text: 'Save',
                ),
                const Expanded(flex: 2, child: SizedBox()),
              ],
            ),
          ),
        );
      },
    );
  }
}
