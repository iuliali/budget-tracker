import '../value_objects.dart';
import 'member.dart';

class Group {
  final GroupId id;
  final GroupName name;
  final List<Member> members;

  Group({
    required this.id,
    required this.name,
    required this.members,
  });
}