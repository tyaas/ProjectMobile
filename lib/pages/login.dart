import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:tugasakhir/components/square_file.dart';

import '../components/my_button.dart';
import '../components/my_textfieild.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  // text editing
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  // sign in user method
  void signUserIn() {}

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
              MyButton(
                onTap: signUserIn,
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
                  Text(
                    'Register Now',
                    style: TextStyle(
                      color: Color.fromARGB(255, 255, 255, 255),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
