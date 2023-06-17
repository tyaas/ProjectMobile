import 'package:flutter/material.dart';
import 'package:tugasakhir/pages/home_page.dart';
import 'package:tugasakhir/pages/login.dart';
import 'package:tugasakhir/pages/register.dart';
import 'package:tugasakhir/pages/users.dart';

void main() async {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/login',
      routes: {
        '/': (context) => LoginPage(),
        '/login': (context) => LoginPage(),
        '/register': (context) => RegisterPage(),
        '/dashboard': (context) => HomePage(),
        '/users': (context) => UserList(),
      },
    );
  }
}
