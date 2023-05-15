import 'package:flutter/material.dart';

import 'injection.dart';
import 'presentation/auth/screens/login.dart';
import 'presentation/auth/screens/register.dart';
import 'presentation/categories/screens/add-category.dart';
import 'presentation/categories/screens/categories.dart';
import 'presentation/common/colors.dart';
import 'presentation/transactions/screens/home.dart';

void main() {
  configureDependencies();
  runApp(const MyApp());
}

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
