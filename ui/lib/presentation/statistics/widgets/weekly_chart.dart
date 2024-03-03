import 'package:flutter/material.dart';

import '../../core/colors.dart';
import '../dtos/statistics_dtos.dart';

class WeeklyChart extends StatelessWidget {
  final List<WeeklyStat> weeklyStats;
  const WeeklyChart({super.key, required this.weeklyStats});

  List<Widget> _buildWeeklyStats(double maxWeeklyAmount) {
    List<Widget> weeklyStatsWidgets = [];
    for (var i = 0; i < weeklyStats.length; i++) {
      final weeklyStat = weeklyStats[i];

      var heightFactor = (weeklyStat.amount / maxWeeklyAmount);
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
                    "${weeklyStat.from_date} - ${weeklyStat.to_date}",
                    style: const TextStyle(
                        fontSize: 12,
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

    final maxWeeklyAmount = weeklyStats
        .map((e) => e.amount)
        .reduce((value, element) => value > element ? value : element);

    const margin = 16.0;
    const rightBarHeight = 30.0;

    return Container(
      margin: const EdgeInsets.symmetric(horizontal: margin, vertical: margin*2),
      child: Row(
        children: [
          ..._buildWeeklyStats(maxWeeklyAmount),
          SizedBox(
            width: rightBarHeight,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "${maxWeeklyAmount > 1000 ? (maxWeeklyAmount / 1000).toStringAsFixed(1) + "k" : maxWeeklyAmount.toStringAsFixed(0)}",
                  style: const TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                      color: cGreyColor),
                ),
                Text(
                  "${(maxWeeklyAmount / 2) > 1000 ? ((maxWeeklyAmount / 2) / 1000).toStringAsFixed(1) + "k" : (maxWeeklyAmount / 2).toStringAsFixed(0)}",
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
