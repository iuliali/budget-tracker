import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';

import '../../../domain/transactions/entities/expense.dart';

@RoutePage()
class ExpensePage extends StatelessWidget {
  const ExpensePage({Key? key, required this.expense}) : super(key: key);

  final Expense expense;
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text("Expense Page"),
      ),);
  }
}
