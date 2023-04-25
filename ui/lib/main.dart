import 'package:flutter/material.dart';

import 'auth/screens/login.dart';
import 'auth/screens/register.dart';
import 'categories/screens/add-category.dart';
import 'categories/screens/categories.dart';
import 'common/colors.dart';
import 'transactions/screens/home.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch().copyWith(
          primary: cAccentColor,
          secondary: cGreyColor,
          background: cBackgroundColor
        )
      ),
      home: const LoginScreen(),
      routes: {
        '/login': (context) => const LoginScreen(),
        '/register': (context) => const RegisterScreen(),
        "/home": (context) => const HomeScreen(),
        "/categories": (context) => const CategoriesScreen(),
        '/categories/add': (context) => const AddCategoryScreen(),
      }
    );
  }
}
