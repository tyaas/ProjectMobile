import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/widgets.dart';
import 'package:tugasakhir/pages/login.dart';
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
        BottomNavigationBarItem(
            icon: Icon(Icons.calendar_month), label: "jadwal"),
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
                              InkWell(
                                onTap: () {},
                                child: Container(
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
                              ),
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
                          InkWell(
                            onTap: () {},
                            child: Container(
                                alignment: Alignment.topRight,
                                child: Icon(
                                  Icons.notifications_active,
                                  color: Color.fromARGB(255, 207, 184, 184),
                                  size: 30,
                                )),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(5),
                      child: Container(
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

                    //Baris Menu
                    Center(
                      child: Container(
                        width: 490,
                        margin: EdgeInsets.only(top: 10),
                        decoration: BoxDecoration(
                          color: Colors.black12,
                          borderRadius: BorderRadius.circular(25),
                        ),
                        child: Container(
                          margin: EdgeInsets.all(30),
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  InkWell(
                                    onTap: () {},
                                    child: Column(
                                      children: [
                                        Container(
                                          height: 50,
                                          width: 50,
                                          decoration: BoxDecoration(
                                            color:
                                                Color.fromARGB(255, 22, 0, 145),
                                            borderRadius:
                                                BorderRadius.circular(100),
                                          ),
                                          child: Center(
                                            child: Icon(Icons.person,
                                                size: 30, color: Colors.white),
                                          ),
                                        ),
                                        SizedBox(
                                          height: 5,
                                        ),
                                        Text(
                                          'User',
                                          style: TextStyle(fontSize: 10),
                                        ),
                                      ],
                                    ),
                                  ),
                                  InkWell(
                                    onTap: () {},
                                    child: Column(
                                      children: [
                                        Container(
                                          height: 50,
                                          width: 50,
                                          decoration: BoxDecoration(
                                            color:
                                                Color.fromARGB(255, 22, 0, 145),
                                            borderRadius:
                                                BorderRadius.circular(100),
                                          ),
                                          child: Center(
                                            child: Icon(Icons.app_registration,
                                                size: 30, color: Colors.white),
                                          ),
                                        ),
                                        SizedBox(
                                          height: 5,
                                        ),
                                        Text('Regis',
                                            style: TextStyle(
                                              fontSize: 10,
                                            )),
                                      ],
                                    ),
                                  ),
                                  InkWell(
                                    onTap: () {},
                                    child: Column(
                                      children: [
                                        Container(
                                          height: 50,
                                          width: 50,
                                          decoration: BoxDecoration(
                                            color:
                                                Color.fromARGB(255, 22, 0, 145),
                                            borderRadius:
                                                BorderRadius.circular(100),
                                          ),
                                          child: Center(
                                            child: Icon(Icons.calendar_month,
                                                size: 30, color: Colors.white),
                                          ),
                                        ),
                                        SizedBox(
                                          height: 5,
                                        ),
                                        Text(
                                          'Jadwal',
                                          style: TextStyle(fontSize: 10),
                                        ),
                                      ],
                                    ),
                                  ),
                                  InkWell(
                                    onTap: () {},
                                    child: Column(
                                      children: [
                                        Container(
                                          height: 50,
                                          width: 50,
                                          decoration: BoxDecoration(
                                            color:
                                                Color.fromARGB(255, 22, 0, 145),
                                            borderRadius:
                                                BorderRadius.circular(100),
                                          ),
                                          child: Center(
                                            child: Icon(Icons.category_rounded,
                                                size: 30, color: Colors.white),
                                          ),
                                        ),
                                        SizedBox(
                                          height: 5,
                                        ),
                                        Text(
                                          'Kategory',
                                          style: TextStyle(fontSize: 10),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          margin: EdgeInsets.all(10),
                          height: 120,
                          width: 120,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                                image: NetworkImage(
                                    "https://spmb.teknokrat.ac.id/wp-content/uploads/2023/02/teknokrat_university-21022023-0001-1536x1536.jpg")),
                            color: Color.fromARGB(255, 22, 0, 145),
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.all(10),
                          height: 120,
                          width: 200,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                                image: NetworkImage(
                                    "https://teknokrat.ac.id/wp-content/uploads/2023/04/maxresdefault.jpg")),
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.all(10),
                          height: 120,
                          width: 120,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                                image: NetworkImage(
                                    "https://spmb.teknokrat.ac.id/wp-content/uploads/2023/02/teknokrat_university-21022023-0004.jpg")),
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                      ],
                    ),

                    InkWell(
                      onTap: () {},
                      child: Container(
                        margin: EdgeInsets.all(12),
                        height: 16,
                        width: 150,
                        child: Text(
                          'Selengkapnya >',
                          style: TextStyle(fontSize: 13),
                        ),
                      ),
                    ),

                    SizedBox(
                      height: 30,
                    ), //Baris Menu
                    Container(
                      color: Color.fromARGB(146, 255, 255, 255),
                      padding: EdgeInsets.only(top: 0, bottom: 5),
                      child: Column(
                        children: [
                          SizedBox(
                            height: 200,
                            child: ListView(
                              children: [
                                CarouselSlider(
                                  items: [
                                    SlideItem(
                                        'https://teknokrat.ac.id/wp-content/uploads/2023/04/Sekar-Kinasih-040423-1.jpg'),
                                    SlideItem(
                                        'https://teknokrat.ac.id/wp-content/uploads/2023/01/WhatsApp-Image-2023-01-04-at-18.00.09.jpeg'),
                                    SlideItem(
                                        'https://teknokrat.ac.id/wp-content/uploads/2023/04/Tim-Tari-Teknokrat-120323.jpeg'),
                                    SlideItem(
                                        'https://teknokrat.ac.id/wp-content/uploads/2023/04/ddaa.png'),
                                  ],
                                  options: CarouselOptions(
                                    height: 250.0,
                                    enlargeCenterPage: true,
                                    autoPlay: true,
                                    aspectRatio: 16 / 9,
                                    autoPlayCurve: Curves.fastOutSlowIn,
                                    enableInfiniteScroll: true,
                                    autoPlayAnimationDuration:
                                        Duration(milliseconds: 800),
                                    viewportFraction: 0.8,
                                  ),
                                )
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                        ],
                      ),
                    ),

                    //end
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

class SlideItem extends StatelessWidget {
  final String img;

  SlideItem(this.img);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.all(5),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: Colors.grey.shade300),
          color: Colors.white),
      child: Image(
          image: NetworkImage(
            img,
          ),
          fit: BoxFit.cover),
    );
  }
}

class IconButton extends StatelessWidget {
  final String nameLabel;
  final IconData iconLabel;
  final int index;

  IconButton(this.nameLabel, this.iconLabel, this.index);

  // List<Map> _fragment = [
  //   {'title': 'Daftar User', 'view': ListUser()},
  //   {'title': 'Daftar Mahasiswa', 'view': ListMahasiswa()},
  // ];

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 5),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            // margin: EdgeInsets.only(bottom: 5),
            child: Material(
              borderRadius: BorderRadius.all(
                Radius.circular(40),
              ),
              color: Colors.transparent,
              child: InkWell(
                borderRadius: BorderRadius.all(
                  Radius.circular(40),
                ),
                // onTap: () {
                //   if (index == 99) {
                //     EventPref.clear();
                //     Get.off(LoginPage());
                //   } else {
                //     Navigator.push(
                //       context,
                //       MaterialPageRoute(
                //           builder: (context) => _fragment[index]['view']),
                //     );
                //   }
                // },
                child: Container(
                  // margin: EdgeInsets.all(5),
                  height: 60,
                  width: 60,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(
                      Radius.circular(30),
                    ),
                  ),
                  child: Center(
                    child: Stack(
                      children: [
                        Icon(
                          iconLabel,
                          color: Colors.white,
                          size: 40,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 5, bottom: 5),
            child: Text(
              nameLabel,
              style: TextStyle(fontSize: 14),
            ),
          )
        ],
      ),
    );
  }
}
