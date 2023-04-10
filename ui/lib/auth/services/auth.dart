import 'dart:convert';
import 'package:http/http.dart' as http;

import '../entities/credentials.dart';
import '../entities/user.dart';

Future<Credentials> login(String username, String password) async {
  final response = await http.post(
    Uri.parse('https://api.example.com/login'),
    body: {
      'username': username,
      'password': password
    }
  );

  if (response.statusCode == 200) {
    return Credentials.fromJson(jsonDecode(response.body));
  } else {
    throw Exception('Failed to login');
  }
}

Future<Credentials> register(String firstName, String lastName, String username, String password) async {
  final response = await http.post(
    Uri.parse('https://api.example.com/register'),
    body: {
      'first_name': firstName,
      'last_name': lastName,
      'username': username,
      'password': password
    }
  );

  if (response.statusCode == 200) {
    return Credentials.fromJson(jsonDecode(response.body));
  } else {
    throw Exception('Failed to register');
  }
}
