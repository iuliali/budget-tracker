import 'package:equatable/equatable.dart';
import '../value_objects.dart';

class User extends Equatable {
  final UserId id;
  final Username username;
  final EmailAddress emailAddress;
  final FirstName firstName;
  final LastName lastName;
  final UserDefaultCurrency defaultCurrency;

  const User({
    required this.id,
    required this.username,
    required this.emailAddress,
    required this.firstName,
    required this.lastName,
    required this.defaultCurrency,
  });

  @override
  List<Object?> get props => [username];
}