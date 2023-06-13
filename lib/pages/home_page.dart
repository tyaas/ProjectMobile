import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:flutter/widgets.dart';

import '../widget/category.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: BottomNavigationBar(items: [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
        BottomNavigationBarItem(icon: Icon(Icons.bookmark), label: "Tersimpan"),
        BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profil")
      ]),
      body: SingleChildScrollView(
        child: SafeArea(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Container(
                    height: 140,
                    width: double.infinity,
                    color: Color.fromARGB(255, 22, 0, 145)),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Container(
                                  alignment: Alignment.topLeft,
                                  height: 45,
                                  width: 45,
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image: NetworkImage(
                                              'https://thumbs.dreamstime.com/z/businessman-avatar-cartoon-character-profile-picture-wearing-suit-glasses-portrait-round-icon-vector-illustration-graphic-149144704.jpg')),
                                      borderRadius: BorderRadius.circular(25),
                                      border: Border.all(
                                          color: Colors.white,
                                          style: BorderStyle.solid,
                                          width: 10))),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                "Halo Mahasiswa, Selamat Datang !",
                                style:
                                    GoogleFonts.montserrat(color: Colors.white),
                              )
                            ],
                          ),
                          Container(
                              alignment: Alignment.topRight,
                              child: Icon(
                                Icons.notifications_active,
                                color: Color.fromARGB(255, 207, 184, 184),
                                size: 30,
                              )),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(15),
                      child: Container(
                        height: 60,
                        width: double.infinity,
                        decoration: BoxDecoration(
                            color: Color(0xFFF5F5F7),
                            borderRadius: BorderRadius.circular(30)),
                        child: TextField(
                          cursorHeight: 20,
                          autofocus: false,
                          decoration: InputDecoration(
                              hintText: "Cari kegiatan",
                              prefixIcon: Icon(Icons.search),
                              border: OutlineInputBorder(
                                  borderSide:
                                      BorderSide(color: Colors.grey, width: 2),
                                  borderRadius: BorderRadius.circular(30))),
                        ),
                      ),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 0, 0, 0),
                      ),
                      child: Image(image: AssetImage("UTI.jpg")),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(0),
                      child: Row(
                        children: [
                          category(imagePath: "book.png", title: 'MataKuliah'),
                          category(
                              imagePath: "mahasiswa.png", title: 'Mahasiswa'),
                          category(imagePath: "kalendar.png", title: 'Jadwal'),
                          category(
                              imagePath: "university.png", title: 'Kampus'),
                          category(
                              imagePath: "bookmark.png", title: 'Tersimpan')
                        ],
                      ),
                    ),
                    Text("Gamabar")
                  ],
                )
              ],
            ),
          ],
        )),
      ),
    );
  }
}
