import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

import '../../../domain/categories/entities/budget.dart';
import '../../../domain/categories/value_objects.dart';
import '../exceptions.dart';
import '../models/budget_model.dart';

abstract class BudgetRemoteDataSource{
  /// Throws [BudgetServerException] for all error codes.
  Future<BudgetModel> getByCategoryId(CategoryId categoryId);
  /// Throws [BudgetAlreadyExistsException] if budget with provided name already exists,
  /// Throws [BudgetServerException] for other error codes.
  Future<void> create(Budget budget);
  /// Throws [BudgetServerException] for all error codes.
  Future<void> update(Budget budget);
  /// Throws [BudgetServerException] for all error codes.
  Future<void> delete(Budget budget);
}

@LazySingleton(as: BudgetRemoteDataSource)
class BudgetRemoteDataSourceImpl implements BudgetRemoteDataSource{
  final Dio client;

  BudgetRemoteDataSourceImpl(this.client);

  @override
  Future<void> create(Budget budget) async {
    final response = await client.post(
      "/budget/create",
      data: BudgetModel.fromDomain(budget).toJson()
    );
    if(response.statusCode == 200){
      return;
    } else if(response.statusCode == 400){
      throw BudgetAlreadyExistsException();
    } else {
      throw BudgetServerException();
    }
  }

  @override
  Future<void> delete(Budget budget) async {
    final response = await client.delete(
        "/budget/delete/${budget.categoryId.getOrCrash()}"
    );
    if(response.statusCode == 200){
      return;
    } else if (response.statusCode == 400) {
      throw CategoryNotFoundException();
    } else {
      throw BudgetServerException();
    }
  }

  @override
  Future<void> update(Budget budget) async {
    final response = await client.patch(
      "/budget/update/${budget.categoryId.getOrCrash()}",
      data: {"amount": budget.amount.getOrCrash()},
    );
    if(response.statusCode == 200){
      return;
    } else if(response.statusCode == 400){
      throw BudgetAlreadyExistsException();
    } else {
      throw BudgetServerException();
    }
  }

  @override
  Future<BudgetModel> getByCategoryId(CategoryId categoryId) async {
    final response = await client.get("/budget/active/${categoryId.getOrCrash()}");
    if(response.statusCode == 200){
      return BudgetModel.fromJson(response.data["budget"]);
    } else {
      throw BudgetServerException();
    }

  }
}
