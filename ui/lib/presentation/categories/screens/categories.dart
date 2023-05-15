import 'package:flutter/material.dart';

import '../../common/colors.dart';
import '../../common/menu/services.dart';
import '../../common/menu/widgets/menu.dart';
import '../services/categories.dart';

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
        leading: Builder(builder: (context) {
          return IconButton(
              icon: const Icon(
                Icons.menu,
                color: cBlackColor,
              ),
              onPressed: () => Scaffold.of(context).openDrawer());
        }),
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
        onPressed: () {
          Navigator.of(context).pushNamed('/categories/add');
        },
        child: const Icon(Icons.add),
      ),
      body: FutureBuilder(
        future: categories,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return ListView.builder(
              itemCount: snapshot.data!.length,
              itemBuilder: (context, index) {
                final item = snapshot.data![index];
                return Dismissible(
                  key: Key(item.id.toString()),
                  onDismissed: (direction) {
                    setState(() async {
                      await deleteCategory(item.id as int);
                      snapshot.data!.removeAt(index);
                    });

                    // Then show a snackbar.
                    ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: Text('${item.name} dismissed')));
                  },
                  background: Container(
                    color: Colors.red,
                    alignment: Alignment.center,
                    child: Row(
                      children: const [
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
                        arguments: snapshot.data![index].id,
                      );
                    },
                    title: Text(snapshot.data![index].name),
                    leading: const Icon(Icons.money),
                    trailing: const Icon(Icons.arrow_forward_ios),
                  ),
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
