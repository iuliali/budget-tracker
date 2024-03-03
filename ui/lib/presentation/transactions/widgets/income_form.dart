import 'package:auto_route/auto_route.dart';
import 'package:budget_tracker/presentation/core/routing/router.dart';
import 'package:budget_tracker/presentation/core/widgets/buttons/whole_length_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../application/categories/categories_bloc.dart';
import '../../../application/transactions/incomes/income_form/income_form_bloc.dart';
import '../../../domain/categories/value_objects.dart';
import '../../../domain/transactions/entities/income.dart';

class IncomeForm extends StatelessWidget {
  const IncomeForm({Key? key, this.income}) : super(key: key);

  final Income? income;

  @override
  Widget build(BuildContext context) {
    final GlobalKey<FormState> formKey = GlobalKey<FormState>();

    return BlocConsumer<IncomeFormBloc, IncomeFormState>(
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
                    orElse: () => "Couldn't save the income.",
                  ),
                ),
              );
              ScaffoldMessenger.of(context).showSnackBar(snackBar);
            },
            (_) =>context.router.popAndPush(const IncomesRoute()),
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
                      .read<IncomeFormBloc>()
                      .add(IncomeFormEvent.senderChanged(value)),
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  initialValue: income?.sender.getOrElse(""),
                  validator: (_) {
                    return state.sender.value.fold(
                        (f) => f.maybeMap(
                              empty: (_) => 'Income sender cannot be empty',
                              shortString: (_) => 'Income sender is too short',
                              orElse: () => null,
                            ),
                        (_) => null);
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
                              .read<IncomeFormBloc>()
                              .add(IncomeFormEvent.amountChanged(value)),
                          initialValue: income?.amount.getOrCrash().toString(),
                          autovalidateMode: AutovalidateMode.onUserInteraction,
                          validator: (_) {
                            return state.amount.value.fold(
                                (f) => f.maybeMap(
                                      empty: (_) =>
                                          'Income amount cannot be empty',
                                      negativeTransactionAmount: (_) =>
                                          'Income amount cannot be negative',
                                      invalidDouble: (_) =>
                                          'Income amount is invalid',
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
                                    context.read<IncomeFormBloc>().add(
                                      IncomeFormEvent.currencyChanged(value),
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
                              .getOrElse(() => "Select your currency")),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                BlocBuilder<CategoriesBloc, CategoriesState>(
                  builder: (contextCategories, stateCategories) {
                    final currentCategoryId = state.categoryId.fold(
                      () => income?.categoryId,
                      (a) => a
                    );
                    if (currentCategoryId != null) {
                      context.read<IncomeFormBloc>().add(
                          IncomeFormEvent.categoryIdChanged(currentCategoryId));
                    }

                    return DropdownButtonFormField(
                      decoration: const InputDecoration(
                        labelText: 'Category',
                      ),
                      value: state.categoryId.fold(
                          () => null,
                          (a) => a),
                      onChanged: (value) => context.read<IncomeFormBloc>().add(
                          IncomeFormEvent.categoryIdChanged(
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
                          .read<IncomeFormBloc>()
                          .add(const IncomeFormEvent.saved());
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
