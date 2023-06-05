import '../../../domain/auth/entities/user.dart';
import '../../../domain/auth/value_objects.dart';
import '../../../domain/debt/value_objects.dart';

class UserModel {
  final int id;
  final String username;
  final String email;
  final String firstName;
  final String lastName;

  UserModel({
    required this.id,
    required this.username,
    required this.email,
    required this.firstName,
    required this.lastName,
  });

  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(
      id: json['id'],
      username: json['username'],
      email: json['email'],
      firstName: json['firstName'],
      lastName: json['lastName'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'username': username,
      'email': email,
      'firstName': firstName,
      'lastName': lastName,
    };
  }

  User toDomain() {
    return User(
      id: UserId(id),
      username: Username(username),
      emailAddress: EmailAddress(email),
      firstName: FirstName(firstName),
      lastName: LastName(lastName),
    );
  }

  static List<User> toDomainList(List<UserModel> users) {
    return users.map((user) => user.toDomain()).toList();
  }
}