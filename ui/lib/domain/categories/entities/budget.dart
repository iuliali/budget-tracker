import 'package:equatable/equatable.dart';

import '../value_objects.dart';

class Budget extends Equatable {
  final CategoryId categoryId;
  final BudgetAmount amount;

  const Budget({
    required this.categoryId,
    required this.amount,
  });

  @override
  List<Object?> get props => [categoryId];

}