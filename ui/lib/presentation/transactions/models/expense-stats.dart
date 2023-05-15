import '../../categories/models/category.dart';
import 'expense-chart.dart';
import 'expense.dart';
import "package:collection/collection.dart";

class ExpenseStats {
  final double total;
  final double average;
  final double max;
  final double min;
  final List<ExpenseChart> chartData;

  ExpenseStats({
    required this.total,
    required this.average,
    required this.max,
    required this.min,
    required this.chartData,
  });

  factory ExpenseStats.fromExpenses(
    List<Expense> expenses,
    List<Category> categories,
  ) {
    final total = expenses.fold(
        0.0, (previousValue, element) => previousValue + element.amount);
    final average = total / expenses.length;
    final max = expenses.fold(
        0.0,
        (previousValue, element) =>
            previousValue > element.amount ? previousValue : element.amount);
    final min = expenses.fold(
        0.0,
        (previousValue, element) =>
            previousValue < element.amount ? previousValue : element.amount);

    final expensesGroupedByCategory =
        groupBy(expenses, (expense) => expense.categoryId);
    final expensesChart = expensesGroupedByCategory.entries.map((entry) {
      final total = entry.value.fold(
          0.0, (previousValue, element) => previousValue + element.amount);
      Category? category = categories.firstWhere(
          (category) => category.id == entry.key,
          orElse: () => const Category(id: 0, name: "Unkown")
      );
      return ExpenseChart(category, total);
    }).toList();
    return ExpenseStats(
        total: total,
        average: average,
        max: max,
        min: min,
        chartData: expensesChart);
  }
}
