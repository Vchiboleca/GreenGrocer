
import 'package:shared_preferences/shared_preferences.dart';

import '../model/users.dart';

Future<void> saveUserData(User user) async {
  final prefs = await SharedPreferences.getInstance();
  await prefs.setString('userId', user.id);
  await prefs.setString('email', user.email);
  await prefs.setString('name', user.name);
  await prefs.setString('phone', user.phone);
  await prefs.setString('nuit', user.nuit);
  await prefs.setString('createdAt', user.createdAt.toIso8601String());
}

Future<User?> getSavedUser() async {
  final prefs = await SharedPreferences.getInstance();
  final userId = prefs.getString('userId');

  if (userId == null) return null;

  return User(
    id: userId,
    name: prefs.getString('name') ?? '',
    email: prefs.getString('email') ?? '',
    phone: prefs.getString('phone') ?? '',
    nuit: prefs.getString('nuit') ?? '',
    createdAt: DateTime.parse(prefs.getString('createdAt') ?? DateTime.now().toIso8601String()),
  );
}