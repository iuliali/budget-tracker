import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

import '../../../domain/debt/value_objects.dart';
import '../models/group_model.dart';
import '../models/debt_model.dart';
import '../exceptions.dart';

abstract class DebtRemoteDataSource {
  Future<List<GroupModel>> getGroups();
  Future<List<DebtModel>> getDebts(GroupId groupId);
  Future<void> createGroup(GroupName name, List<UserId> userIds);
  Future<void> addMembers(GroupId groupId, List<UserId> userIds);
  Future<void> settleDebt(
      GroupId groupId, MemberId memberId, DebtAmount amount);
  Future<void> addGroupExpense(GroupId groupId, DebtAmount amount,
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
  Future<List<DebtModel>> getDebts(GroupId groupId) async {
    try {
      final response =
          await client.get('/group/split/${groupId.getOrCrash()}');
      return DebtModel.fromJsonList(response.data["message"]);
    } on DioError {
      throw DebtServerException;
    }
  }

  @override
  Future<List<GroupModel>> getGroups() async {
    try {
      final response = await client.get('/group/split/');
      final List<GroupModel> groups =
          GroupModel.fromJsonList(response.data["message"]);
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
    DebtAmount amount,
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
    } on DioError {
      throw GroupServerException;
    }

  }
}
