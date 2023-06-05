import '../../../domain/debt/entities/group.dart';
import '../../../domain/debt/value_objects.dart';
import 'debt_model.dart';
import 'member_model.dart';

class GroupModel {
  final int id;
  final String name;
  final double balance;
  final List<MemberModel> memebers;
  final List<DebtModel> debts;

  GroupModel({
    required this.id,
    required this.name,
    required this.balance,
    required this.memebers,
    this.debts = const [],
  });

  set debts(List<DebtModel> debts) {
    for (var debt in debts) {
      this.debts.add(debt);
    }
  }

  factory GroupModel.fromJson(Map<String, dynamic> json) {
    return GroupModel(
      id: json['id'],
      name: json['name'],
      balance: json['balance'].toDouble(),
      memebers: MemberModel.fromJsonList(json['members'] ?? []),
      debts: DebtModel.fromJsonList(json['debts'] ?? []),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'balance': balance,
      'members': memebers.map((e) => e.toJson()).toList(),
      "debts": debts.map((e) => e.toJson()).toList(),
    };
  }

  static List<GroupModel> fromJsonList(List<dynamic> json) {
    return json.map((model) => GroupModel.fromJson(model)).toList();
  }

  Group toDomain() {
    return Group(
      id: GroupId(id),
      name: GroupName(name),
      balance: DebtAmount(balance),
      members: memebers.map((e) => e.toDomain()).toList(),
      debts: debts.map((e) => e.toDomain()).toList(),
    );
  }

  static List<Group> toDomainList(List<GroupModel> models) {
    return models.map((model) => model.toDomain()).toList();
  }

  factory GroupModel.fromDomain(Group group) {
    return GroupModel(
      id: group.id.value.getOrElse(() => 0),
      name: group.name.value.getOrElse(() => ''),
      balance: group.balance.value.getOrElse(() => 0),
      memebers: group.members.map((e) => MemberModel.fromDomain(e)).toList(),
      debts: group.debts.map((e) => DebtModel.fromDomain(e)).toList()
    );
  }

}