import 'package:auto_route/auto_route.dart';
import 'package:budget_tracker/presentation/core/widgets/function_button.dart';
import 'package:budget_tracker/presentation/core/widgets/header.dart';
import 'package:budget_tracker/presentation/core/widgets/header_functions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../application/categories/categories_bloc.dart';
import '../../../domain/categories/value_objects.dart';
import '../../core/colors.dart';
import '../../core/routing/router.dart';

@RoutePage()
class CategoryPage extends StatelessWidget {
  const CategoryPage({Key? key, required this.categoryId}) : super(key: key);

  final CategoryId categoryId;

  @override
  Widget build(BuildContext context) {
    BlocProvider.of<CategoriesBloc>(context)
        .add(const CategoriesEvent.fetch());
    return BlocBuilder<CategoriesBloc, CategoriesState>(
      builder: (context, state) {
        context
            .read<CategoriesBloc>()
            .add(CategoriesEvent.selectCategory(categoryId: categoryId));
        return Scaffold(
          backgroundColor: Theme.of(context).colorScheme.background,
          appBar: AppBar(
            leading: IconButton(
              onPressed: () => context.router.pop(),
              icon: const Icon(Icons.arrow_back, color: cBlackColor),
            ),
            backgroundColor: Theme.of(context).colorScheme.background,
            elevation: 0,
          ),
          floatingActionButton: state.selectedCategory.fold(
            () => null,
            (category) => FloatingActionButton(
              shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(15.0))),
              onPressed: () => context.router.navigate(
                  EditCategoryRoute(category: category, budgeting: false)),
              backgroundColor: Theme.of(context).colorScheme.primary,
              child: const Icon(Icons.edit),
            ),
          ),
          body: SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 32),
              child: state.selectedCategory.fold(
                () {
                  if (state.isFetching) {
                    return const Center(child: CircularProgressIndicator());
                  } else {
                    return const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Spacer(),
                          HeaderWidget(title: "Category not found"),
                        ]);
                  }
                },
                (category) => Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    HeaderWidget(
                      title: category.name.getOrElse(""),
                      subtitle: "Edit your category or set a budget limit",
                    ),
                    HeaderFunctions(
                      buttons: [
                        category.budget == null
                            ? FunctionButton(
                                style: ButtonStyle(
                                  backgroundColor:
                                      MaterialStateProperty.all(cGreenColor),
                                ),
                                onPressed: () => context.router.navigate(
                                    EditCategoryRoute(category: category, budgeting: true)),
                                child: const Row(
                                  children: [
                                    Text("Set Budget"),
                                    SizedBox(width: 8),
                                    Icon(
                                      Icons.tune,
                                      color: cWhiteColor,
                                    ),
                                  ],
                                ),
                              )
                            : FunctionButton(
                                child: const Row(
                                  children: [
                                    Text("Update Budget"),
                                    SizedBox(width: 8),
                                    Icon(
                                      Icons.tune,
                                      color: cWhiteColor,
                                    ),
                                  ],
                                ),
                                onPressed: () => context.router.navigate(
                                    EditCategoryRoute(category: category, budgeting: true)),
                              ),
                      ],
                    ),
                    const SizedBox(height: 40),
                    const Text(
                      "Your Budget",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      category.budget == null
                          ? "No budget set"
                          : "${category.budget!.amount.getOrCrash()} RON",
                      style: const TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const Spacer(),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
