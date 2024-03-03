import 'package:auto_route/auto_route.dart';
import 'package:budget_tracker/application/categories/categories_bloc.dart';
import 'package:budget_tracker/presentation/core/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../domain/categories/entities/category.dart';
import '../../core/routing/router.dart';
import '../../core/widgets/app_bar.dart';
import '../../core/widgets/bottom_bar.dart';
import '../../core/widgets/header.dart';
import '../../core/widgets/menu.dart';

@RoutePage()
class CategoriesPage extends StatelessWidget {
  const CategoriesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    BlocProvider.of<CategoriesBloc>(context).add(const CategoriesEvent.fetch());
    return Scaffold(
      bottomNavigationBar: const BottomBar(),
      backgroundColor: Theme.of(context).colorScheme.background,
      appBar: generateAppBarWidget(context),
      drawer: const Drawer(child: MenuWidget()),
      floatingActionButton: FloatingActionButton(
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(15.0))
        ),
        onPressed: () => context.router.navigate(const AddCategoryRoute()),
        backgroundColor: Theme.of(context).colorScheme.primary,
        child: const Icon(Icons.add),
      ),
      body: SafeArea(
        child: ListView(
          children: <Widget>[
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 32),
              child: HeaderWidget(title: "Categories"),
            ),
            BlocConsumer<CategoriesBloc, CategoriesState>(
              listener: (context, state) {
                state.failureOrCategories.fold(
                  () {},
                  (either) => either.fold(
                    (failure) => ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text(failure.maybeMap(
                          unexpected: (_) =>
                              "Unexpected error occured while fetching categories",
                          categoryNotFound: (_) => "Insufficient permission",
                          orElse: () => "Unexpected error occured",
                        )),
                      ),
                    ),
                    (categories) {},
                  ),
                );
              },
              builder: (context, state) {
                final List<Category> listOfCategories =
                    state.failureOrCategories.fold(
                        () => [],
                        (a) => a.fold(
                              (l) => [],
                              (r) => r,
                            ));
                if (state.isFetching) {
                  return const Center(
                    child: CircularProgressIndicator(),
                  );
                }
                if (listOfCategories.isEmpty) {
                  return const Center(
                    child: Text("No categories found"),
                  );
                }
                return ListView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: listOfCategories.length,
                  itemBuilder: (context, index) {
                    final item = listOfCategories[index];
                    return Dismissible(
                      key: Key(item.id.toString()),
                      onDismissed: (direction) {
                        context.read<CategoriesBloc>().add(
                            CategoriesEvent.deleteCategory(
                                categoryId: item.id));
                      },
                      background: Container(
                        color: Colors.red,
                        alignment: Alignment.center,
                        child: const Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Icon(
                                Icons.delete,
                                color: Colors.white,
                              ),
                            ),
                            Spacer(),
                            Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Icon(
                                Icons.delete,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                      child: ListTile(
                        onTap: () {
                          context.router.navigate(
                            CategoryRoute(categoryId: item.id),
                          );
                        },
                        title: Text(item.name.getOrCrash()),
                        leading: const Icon(Icons.drag_indicator),
                        trailing: IntrinsicWidth(
                          child: Row(
                            children: [
                              (item.budget == null)
                                  ? const Icon(Icons.all_inclusive)
                                  : Text(
                                      "${item.budget?.amount.getOrCrash()} RON",
                                      style: const TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                        color: cGreyColor
                                      ),
                                    ),
                              const SizedBox(width: 26),
                              const Icon(Icons.chevron_right),
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
