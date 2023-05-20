import 'package:budget_tracker/domain/auth/value_objects.dart';
import 'package:equatable/equatable.dart';

class User extends Equatable {
  final Username username;
  final EmailAddress emailAddress;
  final FirstName firstName;
  final LastName lastName;

  const User({
    required this.username,
    required this.emailAddress,
    required this.firstName,
    required this.lastName,
  });

  @override
  List<Object?> get props => [username];
}