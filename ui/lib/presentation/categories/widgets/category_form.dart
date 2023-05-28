import 'package:auto_route/auto_route.dart';
import 'package:budget_tracker/presentation/core/widgets/buttons/whole_length_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../application/categories/category_form/category_form_bloc.dart';
import '../../core/routing/router.dart';

class CategoryForm extends StatelessWidget {
  const CategoryForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final GlobalKey<FormState> formKey = GlobalKey<FormState>();
    return BlocConsumer<CategoryFormBloc, CategoryFormState>(
      listener: (context, state) {
        state.saveFailureOrSuccessOption.fold(
          () {},
          (either) => either.fold(
            (failure) {
              final snackBar = SnackBar(
                content: Text(
                  failure.maybeMap(
                    unexpected: (_) =>
                        'Unexpected error occurred, please contact support.',
                    categoryAlreadyExists: (_) =>
                        'Category with this name already exists.',
                    orElse: () => "Couldn't save the category.",
                  ),
                ),
              );
              ScaffoldMessenger.of(context).showSnackBar(snackBar);
            },
            (_) {
              context.router.popAndPush(const CategoriesRoute());
            },
          ),
        );
      },
      builder: (context, state) {
        return Form(
          key: formKey,
          child: IntrinsicHeight(
            child: Column(
              children: [
                TextFormField(
                  decoration: const InputDecoration(
                    labelText: 'Name',
                  ),
                  autocorrect: false,
                  onChanged: (value) => context
                      .read<CategoryFormBloc>()
                      .add(CategoryFormEvent.nameChanged(value)),
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  validator: (_) {
                    return state.name.value.fold(
                        (f) => f.maybeMap(
                              empty: (_) => 'Category name cannot be empty',
                              shortCategoryName: (_) =>
                                  'Category name is too short',
                              orElse: () => null,
                            ),
                        (_) => state.saveFailureOrSuccessOption.fold(
                              () => null,
                              (either) => either.fold(
                                (failure) => failure.maybeMap(
                                  orElse: () => null,
                                ),
                                (_) => null,
                              ),
                            ));
                  },
                ),
                const SizedBox(height: 20),
                WholeLengthButton(
                  onPressed: () {
                    if (formKey.currentState!.validate()) {
                      context
                          .read<CategoryFormBloc>()
                          .add(const CategoryFormEvent.saved());
                    }
                  },
                  text: 'Save',
                ),
                const Expanded(flex: 2, child: SizedBox()),
              ],
            ),
          ),
        );
      },
    );
  }
}
