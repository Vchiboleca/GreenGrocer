library;
import 'dart:convert';
import 'package:greengrocer/utils/url_endpoint.dart';
import 'package:http/http.dart' as http;

import '../model/users.dart';
import '../utils/sharedpreferences.dart';

Future<User?> login(String email, String password) async {
  try {
    final response = await http.post(
      Uri.parse('$baseUrl$loginEndpoint'),
      headers: {'Content-Type': 'application/json'},
      body: jsonEncode({
        'email': email,
        'password': password,
      }),
    );

    final responseData = jsonDecode(response.body);

    if (response.statusCode == 200) {

      final user = User.fromJson(
        responseData['user'] as Map<String, dynamic>,
        userId: responseData['userId'] as String,
      );


      await saveUserData(user);

      return user;
    } else if (response.statusCode == 401) {
      throw Exception('Credenciais inválidas');
    } else {
      throw Exception('Falha no login: ${responseData['error'] ?? response.body}');
    }
  } catch (e) {
    throw Exception('Erro ao conectar ao servidor: $e');
  }
}
