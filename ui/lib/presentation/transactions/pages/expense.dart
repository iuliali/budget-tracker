import 'package:auto_route/auto_route.dart';
import 'package:collection/collection.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';

import '../../../application/categories/categories_bloc.dart';
import '../../../application/transactions/expenses/expenses_bloc.dart';
import '../../../domain/transactions/entities/expense.dart';
import '../../../domain/transactions/value_objects.dart';
import '../../../injection.dart';
import '../../core/colors.dart';
import '../../core/routing/router.dart';
import '../../core/widgets/function_button.dart';
import '../../core/widgets/header.dart';
import '../../core/widgets/header_functions.dart';

@RoutePage()
class ExpensePage extends StatelessWidget {
  const ExpensePage({Key? key, required this.expenseId}) : super(key: key);

  final ExpenseId expenseId;
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (_) =>
              getIt<ExpensesBloc>()..add(const ExpensesEvent.getExpenses()),
        ),
        BlocProvider(
          create: (_) =>
              getIt<CategoriesBloc>()..add(const CategoriesEvent.fetch()),
        ),
      ],
      child: BlocBuilder<CategoriesBloc, CategoriesState>(
        builder: (categoriesContext, categoriesState) {
          return BlocBuilder<ExpensesBloc, ExpensesState>(
            builder: (expensesContext, expensesState) {
              final Option<Expense> expense =
                  expensesState.failureOrExpenses.fold(
                () => none(),
                (a) => a.fold(
                  (failure) => none(),
                  (expenses) {
                    final expense = expenses
                        .firstWhereOrNull((element) => element.id == expenseId);
                    return expense != null ? some(expense) : none();
                  },
                ),
              );
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
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 32),
                    child: expense.fold(
                      () {
                        if (expensesState.isFetching) {
                          return const Center(
                              child: CircularProgressIndicator());
                        } else {
                          return const Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Spacer(),
                                HeaderWidget(title: "Expense not found"),
                              ]);
                        }
                      },
                      (expense) {
                        final category =
                            categoriesState.failureOrCategories.fold(
                          () => none(),
                          (a) => a.fold(
                            (failure) => none(),
                            (categories) {
                              final category = categories.firstWhereOrNull(
                                  (element) =>
                                      element.id == expense.categoryId);
                              return category != null ? some(category) : none();
                            },
                          ),
                        );
                        return Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            HeaderWidget(
                              title: expense.amount.getOrCrash().toString(),
                              subtitle: category.fold(
                                () => "",
                                (category) => category.name.getOrElse(""),
                              ),
                            ),
                            HeaderFunctions(
                              buttons: [
                                FunctionButton(
                                  onPressed: () => context.router.navigate(
                                    EditExpenseRoute(expense: expense),
                                  ),
                                  child: const Icon(
                                    Icons.edit,
                                    color: cWhiteColor,
                                  ),
                                ),
                                FunctionButton(
                                  style: ButtonStyle(
                                    backgroundColor:
                                        MaterialStateProperty.all(cGreenColor),
                                  ),
                                  onPressed: () {},
                                  child: const Row(
                                    children: [
                                      Icon(
                                        Icons.call_split,
                                        color: cWhiteColor,
                                      ),
                                      SizedBox(width: 8),
                                      Text(
                                        "Split",
                                        style: TextStyle(color: cWhiteColor),
                                      ),
                                      SizedBox(width: 4),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: 40),
                            Text(
                              DateFormat("dd MMM yyyy")
                                  .format(expense.date.getOrCrash()),
                              style: const TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            Text(
                              expense.recipient.getOrCrash(),
                              style: const TextStyle(
                                fontSize: 14,
                                height: 1.5,
                              ),
                            ),
                            const Spacer(),
                          ],
                        );
                      },
                    ),
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
