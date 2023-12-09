import '../../../domain/auth/value_objects.dart';
import '../../../domain/debt/entities/member.dart';
import '../../../domain/debt/value_objects.dart';

class MemberModel {
  final int id;
  final int userId;
  final String firstName;

  MemberModel({
    required this.id,
    required this.userId,
    required this.firstName,
  });

  factory MemberModel.fromJson(Map<String, dynamic> json) {
    return MemberModel(
      id: json['id'],
      userId: json['userId'],
      firstName: json['firstName'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'userId': userId,
      'firstName': firstName,
    };
  }

  static List<MemberModel> fromJsonList(List<dynamic> json) {
    return json.map((model) => MemberModel.fromJson(model)).toList();
  }

  factory MemberModel.fromDomain(Member member) {
    return MemberModel(
      id: member.id.value.getOrElse(() => 0),
      userId: member.userId.value.getOrElse(() => 0),
      firstName: member.firstName.value.getOrElse(() => ''),
    );
  }

  Member toDomain() {
    return Member(
      id: MemberId(id),
      userId: UserId(userId),
      firstName: FirstName(firstName),
    );
  }

}