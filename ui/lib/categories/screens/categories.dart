import 'package:budget_tracker/categories/services/categories.dart';
import 'package:flutter/material.dart';

import '../../common/colors.dart';
import '../../common/menu/services.dart';
import '../../common/menu/widgets/menu.dart';

class CategoriesScreen extends StatefulWidget {
  const CategoriesScreen({Key? key}) : super(key: key);

  @override
  State<CategoriesScreen> createState() => _CategoriesScreenState();
}

class _CategoriesScreenState extends State<CategoriesScreen> {
  var categories = getCategories();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.background,
        elevation: 0,
        title: Text(
          'Categories',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20,
            color: Theme.of(context).colorScheme.secondary,
          ),
        ),
        leading: Builder(
            builder: (context) {
              return IconButton(
                  icon: const Icon(
                    Icons.menu,
                    color: cBlackColor,
                  ),
                  onPressed: () => Scaffold.of(context).openDrawer()
              );
            }
        ),
      ),
      drawer: Drawer(
        child: MenuWidget(
          items: menuItems,
          selectedIndex: 1,
          onItemSelected: (index) {
            Navigator.of(context).pushNamed(menuItems[index].route);
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.add),
      ),
      body: FutureBuilder(
        future: categories,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return ListView.builder(
              itemCount: snapshot.data!.length,
              itemBuilder: (context, index) {
                return ListTile(
                  onTap: () {
                    Navigator.of(context).pushNamed(
                      '/category',
                      arguments: snapshot.data![index].id,
                    );
                  },
                  title: Text(snapshot.data![index].name),
                  leading: const Icon(Icons.money),
                );
              },
            );
          } else if (snapshot.hasError) {
            return Text('${snapshot.error}');
          }
          return const Center(child: CircularProgressIndicator());
        },
      ),
    );
  }
}
