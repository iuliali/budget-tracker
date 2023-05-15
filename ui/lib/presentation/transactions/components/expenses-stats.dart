import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

import '../models/expense-chart.dart';
import '../services/expense.dart';


class ExpensesStatsWidget extends StatelessWidget {
  const ExpensesStatsWidget({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    final expenseStatsFeature = getExpenseStats();
    final tooltipBehavior = TooltipBehavior(enable: true);
    return FutureBuilder(
        future: expenseStatsFeature,
        builder: (context, snapshot) {
          if (!snapshot.hasData) return const Text("Loading!");
          final expenseStats = snapshot.data!;
          return SfCartesianChart(
            primaryXAxis: CategoryAxis(),
            primaryYAxis: NumericAxis(
              minimum: expenseStats.min,
              maximum: expenseStats.max,
            ),
            tooltipBehavior: tooltipBehavior,
            series: <ChartSeries<ExpenseChart, String>>[
              ColumnSeries<ExpenseChart, String>(
                dataSource: expenseStats.chartData,
                xValueMapper: (ExpenseChart expense, _) => expense.category.name,
                yValueMapper: (ExpenseChart expense, _) => expense.amount,
                dataLabelSettings: const DataLabelSettings(isVisible: true),
                enableTooltip: true,
              )
            ]
          );
        });
  }
}
