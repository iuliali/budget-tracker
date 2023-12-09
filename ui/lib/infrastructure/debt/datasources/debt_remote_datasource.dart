import 'package:budget_tracker/domain/transactions/value_objects.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

import '../../../domain/auth/value_objects.dart';
import '../../../domain/debt/value_objects.dart';
import '../models/group_model.dart';
import '../models/debt_model.dart';
import '../exceptions.dart';

abstract class DebtRemoteDataSource {
  Future<List<GroupModel>> getGroups();
  Future<List<DebtModel>> getDebts(int groupId);
  Future<void> createGroup(GroupName name, List<UserId> userIds);
  Future<void> deleteGroup(GroupId groupId);
  Future<void> addMembers(GroupId groupId, List<UserId> userIds);
  Future<void> settleDebt(
      GroupId groupId, MemberId memberId, DebtAmount amount);
  Future<void> addGroupExpense(GroupId groupId, TransactionAmount amount,
      List<MemberId> memberIds, List<DebtAmount> amounts);
}

@LazySingleton(as: DebtRemoteDataSource)
class DebtRemoteDataSourceImpl implements DebtRemoteDataSource {
  final Dio client;

  DebtRemoteDataSourceImpl(this.client);

  @override
  Future<void> addMembers(GroupId groupId, List<UserId> userIds) async {
    try {
      await client.post(
        '/group/add_member/${groupId.getOrCrash()}',
        data: {"userIds": userIds.map((e) => e.getOrCrash()).toList()},
      );
    } on DioError {
      throw GroupServerException;
    }
  }

  @override
  Future<void> createGroup(GroupName name, List<UserId> userIds) async {
    try {
      await client.post('/group/create', data: {
        "name": name.getOrCrash(),
        "userIds": userIds.map((e) => e.getOrCrash()).toList()
      });
    } on DioError {
      throw GroupServerException;
    }
  }

  @override
  Future<List<DebtModel>> getDebts(int groupId) async {
    try {
      final response =
          await client.get('/group/split/$groupId');
      return DebtModel.fromJsonList(response.data["message"]);
    } on DioError catch (_) {
      throw DebtServerException;
    }
  }

  @override
  Future<List<GroupModel>> getGroups() async {
    try {
      final response = await client.get('/group/split/');
      final List<GroupModel> groups =
          GroupModel.fromJsonList(response.data["message"]);
      final debtsResults = await Future.wait(groups.map((e) => getDebts(e.id)));
      groups.asMap().forEach((index, element) {
        final List<DebtModel> debts = debtsResults[index];
        element.debts = debts;
      });
      return groups;
    } on DioError catch (_) {
      throw GroupServerException;
    } catch (_) {
      throw GroupServerException;
    }
  }

  @override
  Future<void> settleDebt(
      GroupId groupId, MemberId memberId, DebtAmount amount) async {
    try {
      await client.post(
        '/group/settle',
        data: {
          "groupId": groupId.getOrCrash(),
          "memberId": memberId.getOrCrash(),
          "amount": amount.getOrCrash()
        },
      );
    } on DioError {
      throw GroupServerException;
    }
  }

  @override
  Future<void> addGroupExpense(
    GroupId groupId,
    TransactionAmount amount,
    List<MemberId> memberIds,
    List<DebtAmount> amounts,
  ) async {
    try {
      await client.post(
        '/group/expense/create',
        data: {
          "groupId": groupId.getOrCrash(),
          "amount": amount.getOrCrash(),
          "memberIds": memberIds.map((e) => e.getOrCrash()).toList(),
          "amounts": amounts.map((e) => e.getOrCrash()).toList(),
        },
      );
    } on DioError catch(_) {
      throw GroupServerException;
    }

  }

  @override
  Future<void> deleteGroup(GroupId groupId) {
    // TODO: implement deleteGroup
    throw UnimplementedError();
  }
}
