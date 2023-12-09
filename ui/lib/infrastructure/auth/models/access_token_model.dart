import 'package:equatable/equatable.dart';
import 'package:jwt_decoder/jwt_decoder.dart';

class AccessTokenModel extends Equatable{
  final String token;
  final DateTime? expiresAt;

  AccessTokenModel({
    required this.token,
  }) : expiresAt = tryGetExpirationDate(token);

  factory AccessTokenModel.fromJson(Map<String, dynamic> json) {
    return AccessTokenModel(
      token: json['access_token'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'access_token': token,
    };
  }

  @override
  List<Object?> get props => [token, expiresAt];

  static DateTime? tryGetExpirationDate(String token) {
    try {
      return JwtDecoder.getExpirationDate(token);
    } catch (e) {
      return null;
    }
  }
}