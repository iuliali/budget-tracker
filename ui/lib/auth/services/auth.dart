import 'dart:convert';
import 'package:budget_tracker/config.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

import '../entities/credentials.dart';



Future<Credentials> login(String username, String password) async {
  final url = Uri.parse("$API_URL/auth/authenticate");
  final headers = <String, String>{
    'Content-Type': 'application/json',
  };
  final response = await http.post(
    url,
    headers: headers,
    body: jsonEncode(<String, String>{
      'username': username,
      'password': password
    })
  );

  if (response.statusCode == 200) {
    final prefs = await SharedPreferences.getInstance();
    final cred = Credentials.fromJson(jsonDecode(response.body));
    await prefs.setString('credentials', jsonEncode(cred.toJson()));
    return cred;
  } else {
    throw Exception('Failed to login');
  }
}

Future<void> register(String firstName, String lastName, String email, String username, String password) async {
  final url = Uri.parse("$API_URL/auth/register");
  final response = await http.post(
    url,
    headers: <String, String>{
      'Content-Type': 'application/json',
    },
    body: jsonEncode({
      'firstName': firstName,
      'lastName': lastName,
      'username': username,
      'password': password,
      "email": email
    })
  );

  if (response.statusCode != 200) {
    throw Exception(response.body);
  }
}

Future<Credentials> getAccessToken() async {
  final prefs = await SharedPreferences.getInstance();
  final credString = prefs.getString('credentials') ?? '';
  final cred = Credentials.fromJson(jsonDecode(credString));
  return cred;
}