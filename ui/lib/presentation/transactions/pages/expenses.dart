import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';

import '../../../domain/transactions/entities/expense.dart';
import '../../../injection.dart';
import '../../../application/transactions/expenses/expenses_bloc.dart';
import '../../core/colors.dart';
import '../../core/routing/router.dart';
import '../../core/widgets/app_bar.dart';
import '../../core/widgets/bottom_bar.dart';
import '../../core/widgets/header.dart';
import '../../core/widgets/menu.dart';

@RoutePage()
class ExpensesPage extends StatelessWidget {
  const ExpensesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) =>
        getIt<ExpensesBloc>()..add(const ExpensesEvent.getExpenses()),
      child: Scaffold(
        bottomNavigationBar: const BottomBar(),
        backgroundColor: Theme.of(context).colorScheme.background,
        appBar: generateAppBarWidget(context),
        drawer: const Drawer(child: MenuWidget()),
        floatingActionButton: FloatingActionButton(
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(15.0))
          ),
          onPressed: () => context.router.navigate(const AddExpenseRoute()),
          backgroundColor: Theme.of(context).colorScheme.primary,
          child: const Icon(Icons.add),
        ),
        body: SafeArea(
          child: ListView(
            children: <Widget>[
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 32),
                child: HeaderWidget(title: "Expenses", subtitle: "All times"),
              ),
              BlocConsumer<ExpensesBloc, ExpensesState>(
                listener: (context, state) {
                  state.failureOrExpenses.fold(
                        () {},
                        (either) => either.fold(
                          (failure) => ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text(failure.maybeMap(
                            unexpected: (_) =>
                            "Unexpected error occured while fetching categories",
                            notFound: (_) => "Expense not found",
                            orElse: () => "Unexpected error occured",
                          )),
                        ),
                      ),
                          (categories) {},
                    ),
                  );
                },
                builder: (context, state) {
                  final List<Expense> listOfExpenses =
                  state.failureOrExpenses.fold(
                          () => [],
                          (a) => a.fold(
                            (l) => [],
                            (r) => r,
                      ));
                  if (state.isFetching) {
                    return const Center(
                      child: CircularProgressIndicator(),
                    );
                  }
                  if (listOfExpenses.isEmpty) {
                    return const Center(
                      child: Text("No expenses found!"),
                    );
                  }
                  return ListView.builder(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: listOfExpenses.length,
                    itemBuilder: (context, index) {
                      final item = listOfExpenses[index];
                      return Dismissible(
                        key: Key(item.id.toString()),
                        onDismissed: (direction) {
                          context.read<ExpensesBloc>().add(
                              ExpensesEvent.deleteExpense(item.id));
                        },
                        background: Container(
                          color: cRedColor,
                          alignment: Alignment.center,
                          child: const Row(
                            children: [
                              Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Icon(
                                  Icons.delete,
                                  color: cWhiteColor,
                                ),
                              ),
                              Spacer(),
                              Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Icon(
                                  Icons.delete,
                                  color: cWhiteColor,
                                ),
                              ),
                            ],
                          ),
                        ),
                        child: ListTile(
                          onTap: () {
                            context.router.navigate(
                              ExpenseRoute(expenseId: item.id),
                            );
                          },
                          title: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(item.recipient.getOrCrash()),
                              Text(
                                DateFormat.yMMMd()
                                      .format(item.date.getOrCrash()),
                                style: const TextStyle(
                                  fontSize: 12,
                                  color: cGreyColor,
                                ),
                              ),
                            ],
                          ),
                          leading: const Icon(Icons.drag_indicator),
                          trailing: IntrinsicWidth(
                            child: Row(
                              children: [
                                Text(
                                  "${item.amount.getOrCrash()} ${item.currency.getOrCrash()}",
                                  style: const TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                      color: cGreyColor
                                  ),
                                ),
                                const SizedBox(width: 26),
                                const Icon(Icons.edit),
                              ],
                            ),
                          ),
                        ),
                      );
                    },
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
