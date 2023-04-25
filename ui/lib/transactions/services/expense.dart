import 'package:budget_tracker/categories/services/categories.dart';
import 'package:budget_tracker/transactions/models/expense-stats.dart';

import '../models/expense.dart';

var expenses = [
  Expense(
    id: 'e1',
    title: 'New Shoes',
    amount: 69.99,
    date: DateTime.now(),
    categoryId: 1,
  ),
  Expense(
    id: 'e2',
    title: 'Weekly Groceries',
    amount: 16.53,
    date: DateTime.now(),
    categoryId: 2,
  ),
  Expense(
    id: 'e3',
    title: 'New Shirt',
    amount: 29.99,
    date: DateTime.now(),
    categoryId: 1,
  ),
];

Future<List<Expense>> getExpenses() {
  return Future.delayed(const Duration(milliseconds: 500), () => expenses);
}

Future<ExpenseStats> getExpenseStats() async {
  return ExpenseStats.fromExpenses(await getExpenses(), await getCategories());
}

Future<List<Expense>> getExpensesByCategory(int categoryId) {
  return Future.delayed(const Duration(milliseconds: 500), () {
    return expenses.where((expense) => expense.categoryId == categoryId).toList();
  });
}

Future<Expense> getExpense(String id) {
  return Future.delayed(const Duration(milliseconds: 500), () {
    return expenses.firstWhere((expense) => expense.id == id);
  });
}

Future<void> addExpense(Expense expense) {
  return Future.delayed(const Duration(milliseconds: 500), () {
    expenses.add(expense);
  });
}

Future<void> deleteExpense(String id) {
  return Future.delayed(const Duration(milliseconds: 500), () {
    expenses.removeWhere((expense) => expense.id == id);
  });
}

Future<void> updateExpense(Expense expense) {
  return Future.delayed(const Duration(milliseconds: 500), () {
    final index = expenses.indexWhere((element) => element.id == expense.id);
    expenses[index] = expense;
  });
}



