import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class YearSelector extends StatelessWidget {
  const YearSelector({
    super.key,
    required this.onChanged,
    required this.currentYear,
  });

  final void Function(DateTime) onChanged;
  final DateTime currentYear;

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
              // Display previous year
              final previousYear = DateTime(currentYear.year - 1, currentYear.month, currentYear.day);
              onChanged(previousYear);
            },
          ),
          Text(
            // Display date like "2021"  or "2022"
            DateFormat("yyyy").format(currentYear),
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
          IconButton(
            icon: const Icon(Icons.arrow_forward_ios),
            onPressed: () {
              // Display next year
              final nextYear = DateTime(currentYear.year + 1, currentYear.month, currentYear.day);
              onChanged(nextYear);
            },
          ),
        ],
      ),
    );
  }
}
