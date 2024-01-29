import 'package:auto_route/auto_route.dart';
import 'package:budget_tracker/presentation/core/widgets/buttons/whole_length_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../application/categories/categories_bloc.dart';
import '../../../application/transactions/expenses/expense_form/expense_form_bloc.dart';
import '../../../application/transactions/expenses/expenses_bloc.dart';
import '../../../domain/categories/value_objects.dart';
import '../../../domain/transactions/entities/expense.dart';
import '../../core/routing/router.dart';

class ExpenseForm extends StatelessWidget {
  const ExpenseForm({Key? key, this.expense}) : super(key: key);

  final Expense? expense;

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
              BlocProvider.of<ExpensesBloc>(context)
                  .add(const ExpensesEvent.getExpenses());
              return state.expense.fold(
                () => context.router.popAndPush(const ExpensesRoute()),
                (expense) => context.router.navigate(
                  ExpenseRoute(expenseId: expense.id),
                ),
              );
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
                  initialValue: expense?.recipient.getOrElse(""),
                  validator: (_) {
                    return state.recipient.value.fold(
                      (f) => f.maybeMap(
                        empty: (_) => 'Expense recipient cannot be empty',
                        shortString: (_) => 'Expense recipient is too short',
                        orElse: () => null,
                      ),
                      (_) => null,
                    );
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
                          keyboardType: const TextInputType.numberWithOptions(
                              decimal: true, signed: false),
                          autocorrect: false,
                          onChanged: (value) => context
                              .read<ExpenseFormBloc>()
                              .add(ExpenseFormEvent.amountChanged(value)),
                          autovalidateMode: AutovalidateMode.onUserInteraction,
                          initialValue: expense?.amount.getOrCrash().toString(),
                          validator: (_) {
                            return state.amount.value.fold(
                                (f) => f.maybeMap(
                                      empty: (_) =>
                                          'Expense amount cannot be empty',
                                      negativeTransactionAmount: (_) =>
                                          'Expense amount cannot be negative',
                                      invalidDouble: (_) =>
                                          'Expense amount is invalid',
                                      orElse: () => null,
                                    ),
                                (_) => null);
                          },
                        ),
                      ),
                      const SizedBox(width: 20),
                      Flexible(
                        flex: 1,
                        child:
                        ElevatedButton.icon(
                          onPressed: () {
                            context.router.push(
                              CurrencySelectorRoute(
                                currentCurrency:
                                state.currency.value.getOrElse(() => ""),
                                setCurrency: (value) =>
                                    context.read<ExpenseFormBloc>().add(
                                      ExpenseFormEvent.currencyChanged(value),
                                    ),
                              ),
                            );
                          },
                          style: ElevatedButton.styleFrom(
                            padding: const EdgeInsets.symmetric(vertical: 18.0, horizontal: 16.0),
                            textStyle: const TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                            elevation: 1,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          icon: Image.asset("assets/images/change.png"),
                          label: Text(state.currency.value
                              .getOrElse(() => ""), style: const TextStyle(fontSize: 16),),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                BlocBuilder<CategoriesBloc, CategoriesState>(
                  builder: (contextCategories, stateCategories) {
                    return DropdownButtonFormField(
                      decoration: const InputDecoration(
                        labelText: 'Category',
                      ),
                      value: state.categoryId.fold(
                          () => null,
                          (a) => a),
                      onChanged: (value) => context.read<ExpenseFormBloc>().add(
                          ExpenseFormEvent.categoryIdChanged(
                              value as CategoryId)),
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      items: stateCategories.failureOrCategories.fold(
                        () => null,
                        (a) => a.fold(
                          (l) => null,
                          (categories) => categories
                              .map(
                                (category) => DropdownMenuItem(
                                  value: category.id,
                                  child: Text(category.name.getOrCrash()),
                                ),
                              )
                              .toList(),
                        ),
                      ),
                    );
                  },
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
              ],
            ),
          ),
        );
      },
    );
  }
}
