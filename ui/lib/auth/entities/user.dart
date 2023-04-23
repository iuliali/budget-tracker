class User {
  final String firstName;
  final String lastName;

  const User({
    required this.firstName,
    required this.lastName
  });

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      firstName: json['first_name'],
      lastName: json['last_name']
    );
  }

  Map<String, dynamic> toJson() => {
    'first_name': firstName,
    'last_name': lastName
  };
}