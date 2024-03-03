import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class MonthSelector extends StatelessWidget {
  const MonthSelector({
    super.key,
    required this.onChanged,
    required this.currentMonth,
  });

  final void Function(DateTime) onChanged;
  final DateTime currentMonth;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 32.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            icon: const Icon(Icons.arrow_back_ios),
            onPressed: () {
              // Display previous month
              final previousMonth = DateTime(currentMonth.year, currentMonth.month - 1, 1);
              onChanged(previousMonth);
            },
          ),
          Text(
            // Display date like "January 2021"  or "February 2021"
            '${DateFormat("MMMM").format(currentMonth)} ${currentMonth.year}',
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
          IconButton(
            icon: const Icon(Icons.arrow_forward_ios),
            onPressed: () {
              // Display next month
              final nextMonth = DateTime(currentMonth.year, currentMonth.month + 1, 1);
              onChanged(nextMonth);
            },
          ),
        ],
      ),
    );
  }
}
