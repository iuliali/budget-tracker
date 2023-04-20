class User {
  final int sub;
  final String firstName;
  final String lastName;

  const User({
    required this.sub,
    required this.firstName,
    required this.lastName
  });

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      sub: json['sub'],
      firstName: json['first_name'],
      lastName: json['last_name']
    );
  }
}