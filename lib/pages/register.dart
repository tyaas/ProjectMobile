import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/material.dart';
import 'package:tugasakhir/components/square_file.dart';

import '../components/my_button.dart';
import '../components/my_textfieild.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  @override

  // text editing and controller
  final usernameController = TextEditingController();

  final passwordController = TextEditingController();

  // sign in user method
  void signUserIn() {}

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 21, 31, 99),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 10),

              Icon(
                Icons.account_circle_rounded,
                size: 100,
                color: Color.fromARGB(255, 255, 255, 255),
              ),

              const SizedBox(height: 10),

              Text(
                'Silakan Buat Akun Dahulu',
                style: TextStyle(
                  color: Color.fromARGB(255, 255, 255, 255),
                  fontSize: 16,
                ),
              ),

              const SizedBox(height: 30),

              MyTextField(
                controller: usernameController,
                hintText: 'Username',
                obsurceText: false,
              ),

              const SizedBox(height: 10),

              // password

              MyTextField(
                controller: usernameController,
                hintText: 'Email',
                obsurceText: false,
              ),

              const SizedBox(height: 10),

              MyTextField(
                controller: passwordController,
                hintText: 'Password',
                obsurceText: true,
              ),

              const SizedBox(height: 10),

              MyButton(onTap: signUserIn),

              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
