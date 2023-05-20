import 'package:equatable/equatable.dart';

import '../value_objects.dart';

class Category extends Equatable {
  final CategoryId id;
  final CategoryName name;

  const Category({
    required this.id,
    required this.name,
  });

  @override
  List<Object?> get props => [id];
}