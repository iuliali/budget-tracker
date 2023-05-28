import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';

@RoutePage()
class SplitPage extends StatelessWidget {
  const SplitPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Text('Split Page'),
    );
  }
}
