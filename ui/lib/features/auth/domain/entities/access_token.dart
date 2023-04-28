

import 'package:equatable/equatable.dart';

class AccessToken extends Equatable {
  final String token;
  final DateTime? expiresAt;

  const AccessToken({
    required this.token,
    required this.expiresAt,
  });

  @override
  // TODO: implement props
  List<Object?> get props => [token, expiresAt];

  bool get isExpired => expiresAt != null && expiresAt!.isBefore(DateTime.now());
}
