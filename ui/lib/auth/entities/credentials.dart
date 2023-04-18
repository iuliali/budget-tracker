class Credentials {
  final String accessToken;
  final String refreshToken;

  const Credentials({
    required this.accessToken,
    required this.refreshToken
  });

  factory Credentials.fromJson(Map<String, dynamic> json) {
    return Credentials(
      accessToken: json['access_token'],
      refreshToken: json['refresh_token']
    );
  }
}