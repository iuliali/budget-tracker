import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:budget_tracker/application/categories/category_form/category_form_bloc.dart';
import 'package:budget_tracker/injection.dart';
import 'package:budget_tracker/presentation/core/widgets/header.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../domain/categories/entities/category.dart';
import '../../core/colors.dart';
import '../widgets/category_form.dart';

@RoutePage()
class EditCategoryPage extends StatelessWidget {
  const EditCategoryPage({Key? key, required this.category}) : super(key: key);

  final Category category;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<CategoryFormBloc>()
        ..add(CategoryFormEvent.initialized(optionOf(category))),
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
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(32),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Spacer(),
                HeaderWidget(
                  title: "Edit Category",
                  subtitle: "Current Name: ${category.name.getOrElse("")}",
                ),
                const CategoryForm(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
