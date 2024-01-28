import 'package:auto_route/auto_route.dart';
import 'package:budget_tracker/presentation/core/widgets/header.dart';
import 'package:budget_tracker/presentation/transactions/widgets/expense_form.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../application/transactions/expenses/expense_form/expense_form_bloc.dart';
import '../../../injection.dart';
import '../../core/colors.dart';

@RoutePage()
class AddExpensePage extends StatelessWidget {
  const AddExpensePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<ExpenseFormBloc>(),
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
        body: SafeArea(
          child: SingleChildScrollView(
            child: Container(
              padding: const EdgeInsets.all(32),
              height: MediaQuery.of(context).size.height - 100,
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Spacer(),
                  HeaderWidget(
                    title: "Add Expense",
                  ),
                  ExpenseForm()
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
