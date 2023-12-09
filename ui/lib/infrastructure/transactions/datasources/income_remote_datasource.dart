import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

import '../../../domain/transactions/entities/income.dart';
import '../../../domain/transactions/value_objects.dart';
import '../exceptions.dart';
import '../models/income.dart';

abstract class IncomeRemoteDatasource {
  Future<void> create(Income income);
  Future<void> update(Income income);
  Future<void> delete(IncomeId incomeId);
  Future<List<IncomeModel>> getAll();
}

@LazySingleton(as: IncomeRemoteDatasource)
class IncomeRemoteDatasourceImpl implements IncomeRemoteDatasource {
  final Dio client;

  IncomeRemoteDatasourceImpl(this.client);

  @override
  Future<void> create(Income income) async {
    final response = await client.post(
      "/incomes/create",
      data: IncomeModel.fromDomain(income).toJson(),
    );
    if (response.statusCode == 200) {
      return;
    } else {
      throw IncomeServerException();
    }
  }

  @override
  Future<void> delete(IncomeId incomeId) async {
    final response = await client.delete(
      "/incomes/delete/${incomeId.getOrCrash()}",
    );
    if (response.statusCode == 200) {
      return;
    } else if (response.statusCode == 400) {
      throw IncomeNotFoundException();
    } else {
      throw IncomeServerException();
    }
  }

  @override
  Future<List<IncomeModel>> getAll() async {
    final response = await client.get("/incomes/all");
    if (response.statusCode == 200) {
      final List<IncomeModel> incomes = response.data["incomes"]
          .map<IncomeModel>((income) => IncomeModel.fromJson(income))
          .toList();
      return incomes;
    } else {
      throw IncomeServerException();
    }
  }

  @override
  Future<void> update(Income income) async {
    final response = await client.put(
      "/incomes/update/${income.id.getOrCrash()}",
      data: IncomeModel.fromDomain(income).toJson(),
    );
    if (response.statusCode == 200) {
      return;
    } else if (response.statusCode == 400) {
      throw IncomeNotFoundException();
    } else {
      throw IncomeServerException();
    }
  }
}
