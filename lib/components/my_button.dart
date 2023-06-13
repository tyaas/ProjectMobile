import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final Function()? onTap;

  const MyButton({super.key, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(25),
        margin: const EdgeInsets.symmetric(horizontal: 60),
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.5), // Warna bayangan
              spreadRadius: 5, // Jarak penyebaran bayangan
              blurRadius: 7, // Jarak blur bayangan
              offset: Offset(0, 3), // Posisi bayangan dalam koordinat (x, y)
            ),
          ],
          color: Color.fromARGB(255, 121, 122, 145),
          borderRadius: BorderRadius.circular(8),
        ),
        child: const Center(
          child: Text(
            'Sign in',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
          ),
        ),
      ),
    );
  }
}
