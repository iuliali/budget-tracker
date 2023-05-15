import 'dart:math';

import '../services/expense.dart';
import '../services/incomes.dart';

import '../../categories/services/categories.dart';
import '../models/transaction.dart';

Future<List<Transaction>> getTransactions() async {
  var transactions = <Transaction>[];
  transactions.addAll(await getExpenses());
  transactions.addAll(await getIncomes());
  var categories = await getCategories();

  // fetch categories
  for (var transaction in transactions) {
    // get a random category
    Random random = Random();
    int randomNumber = random.nextInt(categories.length);
    transaction.category = categories[randomNumber];
  }
  transactions.sort((a, b) => b.date.compareTo(a.date));
  return transactions;
}

Future<List<Transaction>> getTransactionsByCategory(int categoryId) async {
  var transactions = <Transaction>[];
  transactions.addAll(await getExpensesByCategory(categoryId));
  transactions.addAll(await getIncomesByCategory(categoryId));
  var categories = await getCategories();

  // fetch categories
  for (var transaction in transactions) {
    transaction.category = categories
        .firstWhere((category) => category.id == transaction.categoryId);
  }
  transactions.sort((a, b) => b.date.compareTo(a.date));
  return transactions;
}