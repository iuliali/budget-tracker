import 'package:flutter/widgets.dart';

class MenuItem {
  final String title;
  final IconData icon;
  final String route;
  final bool disabled;

  const MenuItem({
    required this.title,
    required this.icon,
    required this.route,
    this.disabled = false,
  });
}