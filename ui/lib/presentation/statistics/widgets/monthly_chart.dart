import 'package:flutter/material.dart';

import '../../core/colors.dart';
import '../dtos/statistics_dtos.dart';

class MonthlyChart extends StatelessWidget {
  final List<MonthlyStat> monthlyStats;
  const MonthlyChart({super.key, required this.monthlyStats});

  List<Widget> _buildWeeklyStats(double maxMonthlyAmount) {
    List<Widget> weeklyStatsWidgets = [];
    for (var i = 0; i < monthlyStats.length; i++) {
      final monthlyStat = monthlyStats[i];

      var heightFactor = (monthlyStat.amount / maxMonthlyAmount);
      if (!(heightFactor > 0.0)) {
        heightFactor = 0.00001;
      }
      weeklyStatsWidgets.add(
        Flexible(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 4.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Expanded(
                  child: Container(
                    alignment: Alignment.bottomCenter,
                    decoration: BoxDecoration(
                      color: cWhiteColor,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: FractionallySizedBox(
                      heightFactor: heightFactor,
                      child: Container(
                        decoration: BoxDecoration(
                          color: cBlueColor,
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 16,
                  child: Text(
                    "${monthlyStat.month}".substring(0, 2),
                    style: const TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.bold,
                        color: cGreyColor),
                  ),
                ),
              ],
            ),
          ),
        ),
      );
    }
    return weeklyStatsWidgets;
  }

  @override
  Widget build(BuildContext context) {

    final maxMonthlyAmount = monthlyStats
        .map((e) => e.amount)
        .reduce((value, element) => value > element ? value : element);

    const margin = 5.0;
    const rightBarHeight = 30.0;

    return Container(
      margin: const EdgeInsets.symmetric(horizontal: margin, vertical: margin*2),
      child: Row(
        children: [
          ..._buildWeeklyStats(maxMonthlyAmount),
          SizedBox(
            width: rightBarHeight,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "${maxMonthlyAmount > 1000 ? (maxMonthlyAmount / 1000).toStringAsFixed(1) + "k" : maxMonthlyAmount.toStringAsFixed(0)}",
                  style: const TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                      color: cGreyColor),
                ),
                Text(
                  "${(maxMonthlyAmount / 2) > 1000 ? ((maxMonthlyAmount / 2) / 1000).toStringAsFixed(1) + "k" : (maxMonthlyAmount / 2).toStringAsFixed(0)}",
                  style: const TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                      color: cGreyColor),
                ),
                const Text(
                  "0",
                  style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                      color: cGreyColor),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
