import 'package:auto_route/auto_route.dart';
import 'package:collection/collection.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../application/categories/categories_bloc.dart';
import '../../../application/transactions/expenses/expenses_bloc.dart';
import '../../../domain/transactions/entities/expense.dart';
import '../../../domain/transactions/value_objects.dart';
import '../../core/colors.dart';
import '../../core/widgets/header.dart';

@RoutePage()
class ExpensePage extends StatelessWidget {
  const ExpensePage({Key? key, required this.expenseId}) : super(key: key);

  final ExpenseId expenseId;
  @override
  Widget build(BuildContext context) {
    BlocProvider.of<ExpensesBloc>(context)
        .add(const ExpensesEvent.getExpenses());
    BlocProvider.of<CategoriesBloc>(context).add(const CategoriesEvent.fetch());
    return BlocBuilder(
      builder: (context, state) {
        final expensesContext = context.read<ExpensesBloc>();
        final categoriesContext = context.read<CategoriesBloc>();
        final expensesState = expensesContext.state;
        final categoriesState = categoriesContext.state;

        final Option<Expense> expense = expensesState.failureOrExpenses.fold(
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
                    return const Center(child: CircularProgressIndicator());
                  } else {
                    return const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Spacer(),
                          HeaderWidget(title: "Category not found"),
                        ]);
                  }
                },
                (expense) {
                  final category = categoriesState.failureOrCategories.fold(
                    () => none(),
                    (a) => a.fold(
                      (failure) => none(),
                      (categories) {
                        final category = categories.firstWhereOrNull(
                            (element) => element.id == expense.categoryId);
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
                      // HeaderFunctions(
                      //   buttons: [
                      //     FunctionButton(
                      //       onPressed: () => context.router
                      //           .navigate(EditCategoryRoute(category: category)),
                      //       child: const Icon(
                      //         Icons.edit,
                      //         color: cWhiteColor,
                      //       ),
                      //     ),
                      //     category.budget == null
                      //         ? FunctionButton(
                      //       style: ButtonStyle(
                      //         backgroundColor:
                      //         MaterialStateProperty.all(cGreenColor),
                      //       ),
                      //       onPressed: () => context.router.navigate(
                      //           EditCategoryRoute(category: category)),
                      //       child: const Row(
                      //         children: [
                      //           Text("Set Budget"),
                      //           SizedBox(width: 8),
                      //           Icon(
                      //             Icons.tune,
                      //             color: cWhiteColor,
                      //           ),
                      //         ],
                      //       ),
                      //     )
                      //         : FunctionButton(
                      //       child: const Row(
                      //         children: [
                      //           Text("Update Budget"),
                      //           SizedBox(width: 8),
                      //           Icon(
                      //             Icons.tune,
                      //             color: cWhiteColor,
                      //           ),
                      //         ],
                      //       ),
                      //       onPressed: () => context.router.navigate(
                      //           EditCategoryRoute(category: category)),
                      //     ),
                      //   ],
                      // ),
                      const SizedBox(height: 40),
                      const Text(
                        "Your Budget",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      const SizedBox(height: 8),
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
  }
}
