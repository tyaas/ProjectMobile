import 'package:flutter/material.dart';
import 'package:tugasakhir/pages/home_page.dart';
import 'package:tugasakhir/pages/login.dart';
import 'package:tugasakhir/pages/register.dart';

void main() async {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: RegisterPage(),
    );
  }
}
