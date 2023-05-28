import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';

@RoutePage()
class EditCategoryPage extends StatelessWidget {
  const EditCategoryPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Text('Edit Category Page'),
    );;
  }
}
