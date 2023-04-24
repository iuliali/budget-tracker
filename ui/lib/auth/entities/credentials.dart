import 'user.dart';

class Credentials {
  final String accessToken;
  final User? user;

  const Credentials({
    required this.accessToken,
    required this.user
  });

  factory Credentials.fromJson(Map<String, dynamic> json) {
    return Credentials(
      accessToken: json['access_token'],
      user: null
    );
  }

  Map<String, dynamic> toJson() => {
    'access_token': accessToken,
    'user': user?.toJson()
  };
}