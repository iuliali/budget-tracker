import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

import '../../../domain/transactions/entities/expense.dart';
import '../../../domain/transactions/value_objects.dart';
import '../exceptions.dart';
import '../models/expense.dart';

abstract class ExpenseRemoteDatasource {
  Future<void> create(Expense expense);
  Future<void> update(Expense expense);
  Future<void> delete(ExpenseId expenseId);
  Future<List<ExpenseModel>> getAll();
}

@LazySingleton(as: ExpenseRemoteDatasource)
class ExpenseRemoteDatasourceImpl implements ExpenseRemoteDatasource {
  final Dio client;

  ExpenseRemoteDatasourceImpl(this.client);

  @override
  Future<void> create(Expense expense) async {
    final response = await client.post(
      "/expenses/create",
      data: ExpenseModel.fromDomain(expense).toJson(),
    );
    if (response.statusCode == 200) {
      return;
    } else {
      throw ExpenseServerException();
    }
  }

  @override
  Future<void> delete(ExpenseId expenseId) async {
    final response = await client.delete(
      "/expenses/delete/${expenseId.getOrCrash()}",
    );
    if (response.statusCode == 200) {
      return;
    } else if (response.statusCode == 400) {
      throw ExpenseNotFoundException();
    } else {
      throw ExpenseServerException();
    }
  }

  @override
  Future<List<ExpenseModel>> getAll() async {
    final response = await client.get("/expenses/all");
    if (response.statusCode == 200) {
      final List<ExpenseModel> expenses = response.data["expenses"]
          .map<ExpenseModel>((expense) => ExpenseModel.fromJson(expense))
          .toList();
      return expenses;
    } else {
      throw ExpenseServerException();
    }
  }

  @override
  Future<void> update(Expense expense) async {
    final response = await client.put(
      "/expenses/update/${expense.id.getOrCrash()}",
      data: ExpenseModel.fromDomain(expense).toJson(),
    );
    if (response.statusCode == 200) {
      return;
    } else if (response.statusCode == 400) {
      throw ExpenseNotFoundException();
    } else {
      throw ExpenseServerException();
    }
  }
}
