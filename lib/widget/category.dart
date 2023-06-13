import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class category extends StatelessWidget {
  final String imagePath;
  final String title;
  const category({super.key, required this.imagePath, required this.title});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Container(
          width: 60,
          height: 80,
          child: Column(
            children: [
              Image.asset(
                imagePath,
                width: 30,
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                title,
                style: GoogleFonts.montserrat(fontSize: 10),
              )
            ],
          ),
        ),
      ),
    );
  }
}
