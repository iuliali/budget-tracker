import '../models/statistic.dart';

var statistics = [
  Statistic(name: "Balance", amount: 532),
  Statistic(name: "Incomes", amount: 1256),
  Statistic(name: "Expenses", amount: 724),
];

Future<List<Statistic>> getStatistics() {
  return Future.delayed(const Duration(milliseconds: 500), () => statistics);
}