
import '../models/income.dart';

var incomes = [
  Income(
    id: "i1",
    title: 'Salary',
    amount: 1000,
    date: DateTime.now(),
    categoryId: 3,
  ),
  Income(
    id: "i2",
    title: 'Bonus',
    amount: 500,
    date: DateTime(2023, 4, 18),
    categoryId: 3,
  ),
  Income(
    id: "i3",
    title: 'Gift',
    amount: 100,
    date: DateTime(2023, 4, 18),
    categoryId: 4,
  ),
  Income(
    id: "i4",
    title: 'Gift',
    amount: 100,
    date: DateTime(2023, 4, 18),
    categoryId: 4,
  ),
];

Future<List<Income>> getIncomes() {
  return Future.delayed(const Duration(milliseconds: 600), () => incomes);
}

Future<List<Income>> getIncomesByCategory(int categoryId) {
  return Future.delayed(const Duration(milliseconds: 600), () {
    return incomes.where((income) => income.categoryId == categoryId).toList();
  });
}