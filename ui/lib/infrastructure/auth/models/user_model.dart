import '../../../domain/auth/entities/user.dart';
import '../../../domain/auth/value_objects.dart';

class UserModel {
  final String username;
  final String email;
  final String firstName;
  final String lastName;

  UserModel({
    required this.username,
    required this.email,
    required this.firstName,
    required this.lastName,
  });

  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(
      username: json['username'],
      email: json['email'],
      firstName: json['firstName'],
      lastName: json['lastName'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'username': username,
      'email': email,
      'firstName': firstName,
      'lastName': lastName,
    };
  }

  User toDomain() {
    return User(
      username: Username(username),
      emailAddress: EmailAddress(email),
      firstName: FirstName(firstName),
      lastName: LastName(lastName),
    );
  }
}