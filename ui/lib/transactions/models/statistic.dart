import 'package:budget_tracker/common/colors.dart';
import 'package:flutter/material.dart';

class Statistic {
  final String name;
  final double amount;
  late final IconData icon;
  late final Color color;

  Statistic({
    required this.name,
    required this.amount,
  }) {
    switch (name) {
      case "Balance":
        icon = Icons.account_balance_wallet;
        color = cLightBlueColor;
        break;
      case "Incomes":
        icon = Icons.arrow_upward;
        color = cGreenColor;
        break;
      case "Expenses":
        icon = Icons.arrow_downward;
        color = cRedColor;
        break;
      default:
        icon = Icons.attach_money;
    }
  }

  factory Statistic.fromJson(Map<String, dynamic> json) {
    return Statistic(
      name: json['name'],
      amount: json['amount'],
    );
  }
}