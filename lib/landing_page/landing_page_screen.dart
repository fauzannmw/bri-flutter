import 'package:bri_flutter/landing_page/singkatan/short.dart';
import 'package:flutter/material.dart';
import 'dart:math';

class landing_page_screen extends StatefulWidget {
  @override
  State<landing_page_screen> createState() => _landing_page_screenState();
}

class _landing_page_screenState extends State<landing_page_screen> {
  int countlanding = 1;

  @override
  Widget build(BuildContext context) {
    //ini buat ngambil nilai width layar
    Size screenSize = MediaQuery.of(context).size;
    double screenwidth = screenSize.width;

    return Scaffold(
      backgroundColor: Color.fromRGBO(165, 162, 221, 1),
      body: SafeArea(
        child: Container(
          child: Stack(
            children: [
              //ifnya harus ada di children gak bisa child
              //COUNTLANDING 1
              if (countlanding == 1) ...{
                Container(
                  padding: EdgeInsets.only(top: 80, bottom: 120),
                  child: Column(
                    //biar universal dibiarin start aja, kalau mau ke tengah pake widget center aja
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        width: screenwidth,
                        height: 50,
                        child: Center(
                          child: Text(
                            'Halo!',
                            style: TextStyle(
                                fontWeight: FontWeight.w800,
                                fontSize: 48,
                                fontFamily: "Nunito",
                                color: Colors.white),
                          ),
                        ),
                      ),
                      Container(
                        child: Center(
                          child: Image.asset('images/logo.png'),
                        ),
                      ),
                      //Kata-kata
                      Container(
                        width: screenwidth,
                        child: Center(
                          child: Padding(
                            padding: EdgeInsets.symmetric(horizontal: 40),
                            child: Text(
                              'Selamat datang di aplikasi ParentAll, platform penyedia layanan jasa dan barang kebutuhan ibu dan anak terbaik di Indonesia!',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 20,
                                fontFamily: "Nunito",
                                color: Colors.white,
                                shadows: <Shadow>[
                                  Shadow(
                                    offset: Offset(0, 1),
                                    blurRadius: 4,
                                    color: Color.fromRGBO(0, 0, 0, 0.25),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              }

              //COUNTLANDING 2
              else if (countlanding == 2) ...{
                Container(
                  padding: EdgeInsets.only(top: 80, bottom: 120),
                  child: Column(
                    //biar universal dibiarin start aja, kalau mau ke tengah pake widget center aja
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        width: screenwidth,
                        height: 50,
                        child: Center(
                          child: Text(
                            'Tentang kami',
                            style: TextStyle(
                                fontWeight: FontWeight.w800,
                                fontSize: 36,
                                fontFamily: "Nunito",
                                color: Colors.white),
                          ),
                        ),
                      ),
                      Container(
                        child: Center(
                          child: Image.asset('images/logo.png'),
                        ),
                      ),
                      //Kata-kata
                      Container(
                        width: screenwidth,
                        child: Center(
                          child: Padding(
                            padding: EdgeInsets.symmetric(horizontal: 40),
                            child: Text(
                              'Aplikasi kami membantu para orang tua dalam mengedukasi anak, belajar mengenai parenting, berkonsultasi dengan para ahli, hingga berbelanja',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 20,
                                fontFamily: "Nunito",
                                color: Colors.white,
                                shadows: <Shadow>[
                                  Shadow(
                                    offset: Offset(0, 1),
                                    blurRadius: 4,
                                    color: Color.fromRGBO(0, 0, 0, 0.25),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              }

              //COUNTLANDING 3
              else if (countlanding == 3) ...{
                Container(
                  padding: EdgeInsets.only(top: 50, bottom: 120),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 80),
                        width: screenwidth,
                        // height: 50,
                        child: Center(
                          child: Text(
                            'Konsultasi dengan ahli!',
                            style: TextStyle(
                                fontWeight: FontWeight.w800,
                                fontSize: 36,
                                fontFamily: "Nunito",
                                color: Colors.white),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                      Container(
                        child: Center(
                          child: Image.asset('images/logo.png'),
                        ),
                      ),
                      //Kata-kata
                      Container(
                        width: screenwidth,
                        child: Center(
                          child: Padding(
                            padding: EdgeInsets.symmetric(horizontal: 40),
                            child: Text(
                              'di ParentAll, anda dapat melakukan konsultasi mulai dari dokter hingga psikolog dengan harga terjangkau!',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 20,
                                fontFamily: "Nunito",
                                color: Colors.white,
                                shadows: <Shadow>[
                                  Shadow(
                                    offset: Offset(0, 1),
                                    blurRadius: 4,
                                    color: Color.fromRGBO(0, 0, 0, 0.25),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      //liat /landing_page/singkatan/short.dart
                    ],
                  ),
                )
              },

              //TOMBOL DIBAWAH
              Container(
                alignment: Alignment.bottomRight,
                padding: EdgeInsets.only(right: 30, bottom: 32),
                child: InkWell(
                  onTap: () {
                    setState(() {
                      countlanding += 1;
                    });
                  },
                  child: Stack(
                    children: [
                      if (countlanding == 1) ...{
                        Container(
                          width: 211,
                          height: 43,
                          decoration: BoxDecoration(
                            color: Color.fromRGBO(255, 255, 255, 1),
                            borderRadius: BorderRadius.all(
                              Radius.circular(55),
                            ),
                          ),
                          child: Stack(
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.only(top: 11, left: 15),
                                child: Text(
                                  "Let's start our journey",
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontFamily: "Nunito",
                                      fontWeight: FontWeight.w700),
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(top: 9, left: 170),
                                child: Transform.rotate(
                                  angle: 180 * (pi / 180),
                                  child: Icon(
                                    Icons.arrow_back,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      } else ...{
                        Container(
                          width: 104,
                          height: 43,
                          decoration: BoxDecoration(
                            color: Color.fromRGBO(255, 255, 255, 1),
                            borderRadius: BorderRadius.all(
                              Radius.circular(55),
                            ),
                          ),
                          child: Stack(
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.only(top: 11, left: 20),
                                child: Text(
                                  "Next",
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontFamily: "Nunito",
                                      fontWeight: FontWeight.w700),
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(top: 9, left: 63),
                                child: Transform.rotate(
                                  angle: 180 * (pi / 180),
                                  child: Icon(
                                    Icons.arrow_back,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      }
                    ],
                  ),
                ),
              ),
              if (countlanding > 1) ...{
                Container(
                  alignment: Alignment.bottomLeft,
                  padding: EdgeInsets.only(left: 30, bottom: 32),
                  child: InkWell(
                    onTap: () {
                      setState(() {
                        countlanding -= 1;
                      });
                    },
                    child: Container(
                      width: 104,
                      height: 43,
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(255, 255, 255, 1),
                        borderRadius: BorderRadius.all(
                          Radius.circular(55),
                        ),
                      ),
                      child: Stack(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 12, left: 50),
                            child: Text(
                              "Back",
                              style: TextStyle(
                                  fontSize: 14,
                                  fontFamily: "Nunito",
                                  fontWeight: FontWeight.w700),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 9, left: 15),
                            child: Icon(
                              Icons.arrow_back,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              },

              Container(
                child: Buletbulet(),
                alignment: Alignment.bottomCenter,
                padding: EdgeInsets.only(bottom: 100),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
