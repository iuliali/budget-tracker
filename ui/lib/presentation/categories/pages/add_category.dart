import 'package:auto_route/auto_route.dart';
import 'package:budget_tracker/presentation/categories/widgets/category_form.dart';
import 'package:budget_tracker/presentation/core/colors.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../application/categories/category_form/category_form_bloc.dart';
import '../../../injection.dart';
import '../../core/widgets/header.dart';

@RoutePage()
class AddCategoryPage extends StatelessWidget {
  const AddCategoryPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          getIt<CategoryFormBloc>()..add(CategoryFormEvent.initialized(none())),
      child: Scaffold(
        backgroundColor: Theme.of(context).colorScheme.background,
        appBar: AppBar(
          leading: IconButton(
            onPressed: () => context.router.pop(),
            icon: const Icon(Icons.arrow_back, color: cBlackColor),
          ),
          backgroundColor: Theme.of(context).colorScheme.background,
          elevation: 0,
        ),
        body: const SafeArea(
          child: Padding(
            padding: EdgeInsets.all(32),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Spacer(),
                HeaderWidget(title: "Add Category"),
                CategoryForm(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
