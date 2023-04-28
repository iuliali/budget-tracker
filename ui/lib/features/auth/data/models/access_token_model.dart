import 'package:budget_tracker/features/auth/domain/entities/access_token.dart';
import 'package:jwt_decoder/jwt_decoder.dart';

class AccessTokenModel extends AccessToken {
  AccessTokenModel({
    required String token,
  }) : super(
          token: token,
          expiresAt: AccessTokenModel.tryGetExpirationDate(token),
        );

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