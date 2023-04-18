class User {
  final int id;
  final String firstName;
  final String lastName;

  const User({
    required this.id,
    required this.firstName,
    required this.lastName
  });

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      id: json['id'],
      firstName: json['first_name'],
      lastName: json['last_name']
    );
  }
}