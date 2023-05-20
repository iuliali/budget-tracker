import 'package:auto_route/auto_route.dart';
import 'package:budget_tracker/application/categories/categories_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../domain/auth/value_objects.dart';
import '../../../domain/categories/entities/category.dart';
import '../../../injection.dart';
import '../../core/routing/router.dart';
import '../../core/widgets/app_bar.dart';
import '../../core/widgets/menu.dart';

@RoutePage()
class CategoriesPage extends StatelessWidget {
  const CategoriesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) {
        final bloc = getIt<CategoriesBloc>();
        bloc.add(const CategoriesEvent.fetchCategories());
        return bloc;
      },
      child: Scaffold(
        backgroundColor: Theme
            .of(context)
            .colorScheme
            .background,
        appBar: generateAppBarWidget(context, FirstName("Victor")),
        drawer: const Drawer(child: MenuWidget()),
        floatingActionButton: FloatingActionButton(
          onPressed: () => context.router.push(const AddCategoryRoute()),
          child: const Icon(Icons.add),
        ),
        body: BlocConsumer<CategoriesBloc, CategoriesState>(
          listener: (context, state) {},
          builder: (context, state) {
            final List<Category> listOfCategories = state.failureOrCategories.fold(
                  () => [],
                  (a) => a.fold(
                    (l) => [],
                    (r) => r,
                  )
            );
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
              itemCount: listOfCategories.length,
              itemBuilder: (context, index) {
                final item = listOfCategories[index];
                return Dismissible(
                  key: Key(item.id.toString()),
                  onDismissed: (direction) {
                    // Then show a snackbar.
                    ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: Text('${item.name.getOrCrash()} dismissed')));
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
                        Expanded(child: SizedBox()),
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
                      Navigator.of(context).pushNamed(
                        '/category',
                        arguments: item.id,
                      );
                    },
                    title: Text(item.name.getOrCrash()),
                    leading: const Icon(Icons.money),
                    trailing: const Icon(Icons.arrow_forward_ios),
                  ),
                );
              },
            );
          },
        ),
      ),
    );
  }
}
