import '../../categories/models/category.dart';

class Transaction {
  final String id;
  final String title;
  final double amount;
  final DateTime date;
  final int categoryId;
  Category? category;

  Transaction({
    required this.id,
    required this.title,
    required this.amount,
    required this.date,
    required this.categoryId,
  });

  // From JSON
  Transaction.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        title = json['title'],
        amount = json['amount'],
        date = DateTime.parse(json['date']),
        categoryId = json['categoryId'];

  setCategory(Category category){
    this.category = category;
  }

}