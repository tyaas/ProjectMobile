import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:tugasakhir/components/square_file.dart';
import 'package:tugasakhir/pages/home_page.dart';
import '../components/my_button.dart';
import '../components/my_textfieild.dart';
import 'package:http/http.dart' as http;
import 'package:async/async.dart';
import 'dart:convert';

class LoginPage extends StatefulWidget {
  LoginPage({super.key});
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  // text editing
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  void login() async {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => HomePage()),
    );
    // print("kepencet");
    // Mengirim HTTP GET request ke URL tertentu
    final url = Uri.parse('http://192.168.202.12:8080/api_kelas/login.php');
    final body = {
      'username': usernameController.text,
      'pass': passwordController.text
    };
    try {
      final response = await http.post(
        url,
        body: body,
      );
      final data = jsonDecode(response.body);
      if (data['success'] == true) {
        print("login Berhasil");
      } else {
        print('username atau password salah');
      }
    } catch (error) {
      print(error);
    }
  }

  @override
  void initState() {
    super.initState();
    passwordController.clear();
    usernameController.clear();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 21, 31, 99),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 10),

              // logo
              Icon(
                Icons.whatshot_outlined,
                size: 100,
                color: Color.fromARGB(255, 255, 255, 255),
              ),

              const SizedBox(height: 15),

              // welcome back
              Text(
                'Selamat Datang Di Event Kampus',
                style: TextStyle(
                  color: Color.fromARGB(255, 255, 255, 255),
                  fontSize: 16,
                ),
              ),

              const SizedBox(height: 30),

              //  username
              MyTextField(
                controller: usernameController,
                hintText: 'Username',
                obsurceText: false,
              ),

              const SizedBox(height: 10),
              // password
              MyTextField(
                controller: passwordController,
                hintText: 'Password',
                obsurceText: true,
              ),

              const SizedBox(height: 10),

              // lupa password
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 60.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      'Lupa Password?',
                      style:
                          TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 25),

              // sign button
              ElevatedButton(
                style: ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll(
                        Color.fromARGB(255, 96, 95, 92)),
                    fixedSize: MaterialStatePropertyAll(
                      Size(200, 40),
                    )),
                onPressed: () {
                  login();
                },
                child: Text("LOGIN"),
              ),

              const SizedBox(height: 20),

              // or continue
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Row(
                  children: [
                    Expanded(
                      child: Divider(
                        thickness: 0.5,
                        color: Color.fromARGB(255, 255, 255, 255),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                      child: Text(
                        'Or Continue White',
                        style: TextStyle(
                            color: Color.fromARGB(255, 255, 255, 255)),
                      ),
                    ),
                    Expanded(
                      child: Divider(
                        thickness: 1.7,
                        color: Color.fromARGB(255, 255, 255, 255),
                      ),
                    )
                  ],
                ),
              ),

              const SizedBox(height: 10),
              // google + facebook
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // google
                  SquareTIle(imagePath: 'lib/images/google.png'),

                  const SizedBox(width: 30),

                  // facebook
                  SquareTIle(imagePath: 'lib/images/facebook.png'),
                ],
              ),
              const SizedBox(height: 10),
              // register now?
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/register');
                    },
                    child: Text(
                      'Register Now',
                      style: TextStyle(
                        color: Color.fromARGB(255, 255, 255, 255),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
