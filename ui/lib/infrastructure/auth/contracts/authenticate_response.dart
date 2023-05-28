class AuthenticateResponse {
  final String accessToken;

  AuthenticateResponse({
    required this.accessToken,
  });

  factory AuthenticateResponse.fromJson(Map<String, dynamic> json) {
    return AuthenticateResponse(
      accessToken: json['access_token'],
    );
  }
}