import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';


@RoutePage()
class CategoryPage extends StatelessWidget {
  const CategoryPage({Key? key, required this.categoryId}) : super(key: key);

  final int categoryId;

  @override
  Widget build(BuildContext context) {
    final category = Future.value([]);
    final transactions = Future.value([]);

    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.background,
        elevation: 0,
        title: FutureBuilder(
          future: category,
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return const Text("Test");
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
            return const Text("Loaded");
          } else {
            return const Text('Loading...');
          }
        },
      ),
    );
  }
}
