import 'package:budget_tracker/common/colors.dart';
import 'package:budget_tracker/transactions/models/transaction.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../transactions/models/expense.dart';
import '../../transactions/services/transactions.dart';
import '../services/categories.dart';

class CategoryScreen extends StatefulWidget {
  const CategoryScreen({Key? key}) : super(key: key);

  @override
  State<CategoryScreen> createState() => _CategoryScreenState();
}

class _CategoryScreenState extends State<CategoryScreen> {
  @override
  Widget build(BuildContext context) {
    var categoryId = ModalRoute.of(context)!.settings.arguments as String;
    var category = getCategory(categoryId);
    var transactions = getTransactionsByCategory(categoryId);

    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.background,
        elevation: 0,
        title: FutureBuilder(
          future: category,
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return Text(snapshot.data!.name);
            } else {
              return const Text('Loading...');
            }
          },
        ),
      ),
      body: FutureBuilder(
        future: transactions,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return ListView.builder(
              itemCount: snapshot.data!.length,
              itemBuilder: (context, index) {
                Transaction transaction = snapshot.data![index];
                return ListTile(
                  leading: transaction is Expense
                      ? const Icon(Icons.arrow_downward, color: cRedColor)
                      : const Icon(Icons.arrow_upward, color: cGreenColor),
                  title: Text(transaction.title),
                  subtitle: Text(transaction.category!.name),
                );
              },
            );
          } else {
            return const Text('Loading...');
          }
        },
      ),
    );
  }
}
