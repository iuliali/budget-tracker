import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';

import '../../../domain/transactions/entities/income.dart';

@RoutePage()
class IncomePage extends StatelessWidget {
  const IncomePage({Key? key, required this.income}) : super(key: key);

  final Income income;

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text("Income Page"),
      ),
    );
  }
}
