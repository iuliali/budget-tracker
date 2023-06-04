import '../../../domain/debt/entities/member.dart';
import '../../../domain/debt/value_objects.dart';

class MemberModel {
  final int id;
  final String username;
  final String? name;

  MemberModel({
    required this.id,
    required this.username,
    this.name,
  });

  factory MemberModel.fromJson(Map<String, dynamic> json) {
    return MemberModel(
      id: json['id'],
      username: json['username'],
      name: json['name'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'username': username,
      'name': name,
    };
  }

  static List<MemberModel> fromJsonList(List<dynamic> json) {
    return json.map((model) => MemberModel.fromJson(model)).toList();
  }

  factory MemberModel.fromDomain(Member member) {
    return MemberModel(
      id: member.id.value.getOrElse(() => 0),
      username: member.username.value.getOrElse(() => ''),
      name: member.name.value.getOrElse(() => ''),
    );
  }

  Member toDomain() {
    return Member(
      id: MemberId(id),
      username: MemberUsername(username),
      name: MemberName(name ?? ''),
    );
  }

}