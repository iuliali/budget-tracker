import '../../../domain/debt/entities/group.dart';
import '../../../domain/debt/value_objects.dart';

class GroupModel {
  final int id;
  final String name;
  final double balance;

  GroupModel({
    required this.id,
    required this.name,
    required this.balance,
  });

  factory GroupModel.fromJson(Map<String, dynamic> json) {
    return GroupModel(
      id: json['id'],
      name: json['name'],
      balance: json['balance'].toDouble(),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'balance': balance,
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
      debts: [],
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
    );
  }

}