import 'package:flutter/material.dart';
import 'src/pages/auth/sign_in_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.green),
        scaffoldBackgroundColor: Colors.white.withAlpha(190),
        primarySwatch: Colors.green,
        primaryColor: Colors.green,
        appBarTheme: const AppBarTheme(backgroundColor: Colors.green),
        floatingActionButtonTheme: const FloatingActionButtonThemeData(
          backgroundColor: Colors.green,
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(backgroundColor: Colors.green),
        ),
      ),
      home: const SignInScreen(),
    );
  }
}
