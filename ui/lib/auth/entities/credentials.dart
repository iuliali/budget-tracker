import 'dart:convert';

import 'package:budget_tracker/auth/entities/user.dart';

class Credentials {
  final String accessToken;
  final User user;

  const Credentials({
    required this.accessToken,
    required this.user
  });

  factory Credentials.fromJson(Map<String, dynamic> json) {
    final decodedClaims = jsonDecode(
      String.fromCharCodes(
        base64Url.decode(
          base64Url.normalize(json['access_token'].split('.')[1])
        )
      )
    );
    final user = User.fromJson(decodedClaims);
    return Credentials(
      accessToken: json['access_token'],
      user: user
    );
  }
}