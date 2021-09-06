import 'package:bri_flutter/konsultasi_page/detail_konsultasi.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:bri_flutter/pages/profile.dart';
import 'package:bri_flutter/pages/reminder.dart';

class KonsultasiScreen extends StatefulWidget {
  @override
  State<KonsultasiScreen> createState() => _KonsultasiScreenState();
}

class _KonsultasiScreenState extends State<KonsultasiScreen> {
  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    double screenwidth = screenSize.width;

    return SafeArea(
      child: Scaffold(
        backgroundColor: Color.fromRGBO(240, 239, 235, 1),
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(80),
          child: AppBar(
            backgroundColor: Color.fromRGBO(240, 239, 235, 1),
            shadowColor: Color.fromRGBO(240, 239, 235, 1),
            elevation: 0,
            centerTitle: true,
            title: Padding(
              padding: const EdgeInsets.only(top: 30),
              child: Text(
                'Konsultasi',
                style: TextStyle(
                    color: Color.fromRGBO(100, 80, 80, 1),
                    fontFamily: "Nunito",
                    fontSize: 26,
                    fontWeight: FontWeight.w700),
              ),
            ),
            leading: Padding(
              padding: const EdgeInsets.only(top: 25),
              child: IconButton(
                onPressed: () {
                  setState(() {
                    Navigator.pop(context);
                  });
                },
                icon: Icon(Icons.arrow_back_ios),
                color: Color.fromRGBO(100, 80, 80, 1),
              ),
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //searchbar
              Align(
                alignment: Alignment.topCenter,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Container(
                    alignment: Alignment.centerLeft,
                    width: screenwidth,
                    height: 36,
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(165, 162, 221, 1),
                      borderRadius: BorderRadius.all(
                        Radius.circular(11),
                      ),
                    ),
                    child: Stack(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 10.0),
                          child: Icon(
                            Icons.search,
                            color: Colors.white,
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.only(left: 40, top: 2),
                          child: Text(
                            'Search',
                            style: TextStyle(color: Colors.white),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 8,
              ),

              //filter bar
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Container(
                  width: screenwidth,
                  height: 24,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: 106,
                        height: 24,
                        decoration: BoxDecoration(
                          color: Color.fromRGBO(165, 162, 221, 1),
                          borderRadius: BorderRadius.all(
                            Radius.circular(11),
                          ),
                        ),
                        child: Row(
                          children: [
                            Icon(Icons.keyboard_arrow_down,
                                color: Colors.white),
                            Text(
                              'Dokter/Psikolog',
                              style: TextStyle(
                                fontFamily: "Nunito",
                                fontSize: 10,
                                color: Colors.white,
                              ),
                            )
                          ],
                        ),
                      ),
                      Container(
                        width: 79,
                        height: 24,
                        decoration: BoxDecoration(
                          color: Color.fromRGBO(165, 162, 221, 1),
                          borderRadius: BorderRadius.all(
                            Radius.circular(11),
                          ),
                        ),
                        child: Row(
                          children: [
                            Icon(Icons.keyboard_arrow_down,
                                color: Colors.white),
                            Text(
                              'Rating',
                              style: TextStyle(
                                fontFamily: "Nunito",
                                fontSize: 10,
                                color: Colors.white,
                              ),
                            )
                          ],
                        ),
                      ),
                      Container(
                        width: 106,
                        height: 24,
                        decoration: BoxDecoration(
                          color: Color.fromRGBO(165, 162, 221, 1),
                          borderRadius: BorderRadius.all(
                            Radius.circular(11),
                          ),
                        ),
                        child: Row(
                          children: [
                            Icon(Icons.keyboard_arrow_down,
                                color: Colors.white),
                            Text(
                              'Tarif terrendah',
                              style: TextStyle(
                                fontFamily: "Nunito",
                                fontSize: 10,
                                color: Colors.white,
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 26),

              //drjung
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: InkWell(
                  onTap: () {
                    setState(() {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return DetailKonsultasi();
                      }));
                    });
                  },
                  child: Container(
                    width: screenwidth,
                    height: 132,
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(165, 162, 221, 1),
                      borderRadius: BorderRadius.all(
                        Radius.circular(12),
                      ),
                    ),
                    child: Stack(
                      children: [
                        Container(
                          alignment: Alignment.centerLeft,
                          padding: const EdgeInsets.only(top: 6, left: 10),
                          child: Image.asset("images/dokterjung.png"),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 12, right: 16),
                          child: Align(
                            alignment: Alignment.topRight,
                            child: Container(
                              width: 60,
                              height: 17,
                              decoration: BoxDecoration(
                                color: Color.fromRGBO(150, 211, 102, 1),
                                borderRadius: BorderRadius.all(
                                  Radius.circular(17),
                                ),
                              ),
                              child: Center(
                                child: Text(
                                  'Available',
                                  style: TextStyle(
                                    fontFamily: "Nunito",
                                    fontSize: 10,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 130, bottom: 50),
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              'dr. Jung',
                              style: TextStyle(
                                  fontFamily: "Nunito",
                                  color: Colors.white,
                                  fontWeight: FontWeight.w700,
                                  fontSize: 18),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 130, bottom: 15),
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              'Dokter Spesialis Anak',
                              style: TextStyle(
                                  fontFamily: "Nunito",
                                  color: Colors.white,
                                  fontWeight: FontWeight.w700,
                                  fontSize: 10),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                            left: 129,
                            top: 20,
                            right: 10,
                          ),
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: Image.asset("images/stars.png"),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                            left: 130,
                            top: 57,
                            right: 10,
                          ),
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              'Rp100.000',
                              style: TextStyle(
                                  fontFamily: "Nunito",
                                  color: Color.fromRGBO(153, 236, 176, 1),
                                  fontWeight: FontWeight.w700,
                                  fontSize: 10),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(right: 15, bottom: 12),
                          child: Align(
                            alignment: Alignment.bottomRight,
                            child: Image.asset("images/mulaikonsul.png"),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 32,
              ),

              //dr.jeon
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: InkWell(
                  onTap: () {},
                  child: Container(
                    width: screenwidth,
                    height: 132,
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(165, 162, 221, 1),
                      borderRadius: BorderRadius.all(
                        Radius.circular(12),
                      ),
                    ),
                    child: Stack(
                      children: [
                        Container(
                          alignment: Alignment.centerLeft,
                          padding: const EdgeInsets.only(top: 6, left: 10),
                          child: Image.asset("images/drjeon.png"),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 12, right: 16),
                          child: Align(
                            alignment: Alignment.topRight,
                            child: Container(
                              width: 60,
                              height: 17,
                              decoration: BoxDecoration(
                                color: Color.fromRGBO(150, 211, 102, 1),
                                borderRadius: BorderRadius.all(
                                  Radius.circular(17),
                                ),
                              ),
                              child: Center(
                                child: Text(
                                  'Available',
                                  style: TextStyle(
                                    fontFamily: "Nunito",
                                    fontSize: 10,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 130, bottom: 50),
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              'dr. Jeon',
                              style: TextStyle(
                                  fontFamily: "Nunito",
                                  color: Colors.white,
                                  fontWeight: FontWeight.w700,
                                  fontSize: 18),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 130, bottom: 15),
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              'Psikolog Anak',
                              style: TextStyle(
                                  fontFamily: "Nunito",
                                  color: Colors.white,
                                  fontWeight: FontWeight.w700,
                                  fontSize: 10),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                            left: 129,
                            top: 20,
                            right: 10,
                          ),
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: Image.asset("images/stars.png"),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                            left: 130,
                            top: 57,
                            right: 10,
                          ),
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              'Rp100.000',
                              style: TextStyle(
                                  fontFamily: "Nunito",
                                  color: Color.fromRGBO(153, 236, 176, 1),
                                  fontWeight: FontWeight.w700,
                                  fontSize: 10),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(right: 15, bottom: 12),
                          child: Align(
                            alignment: Alignment.bottomRight,
                            child: Image.asset("images/mulaikonsul.png"),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 32,
              ),

              //dr yeon
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: InkWell(
                  onTap: () {},
                  child: Container(
                    width: screenwidth,
                    height: 132,
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(165, 162, 221, 1),
                      borderRadius: BorderRadius.all(
                        Radius.circular(12),
                      ),
                    ),
                    child: Stack(
                      children: [
                        Container(
                          alignment: Alignment.centerLeft,
                          padding: const EdgeInsets.only(top: 6, left: 10),
                          child: Image.asset("images/dryeon.png"),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 12, right: 16),
                          child: Align(
                            alignment: Alignment.topRight,
                            child: Container(
                              width: 60,
                              height: 17,
                              decoration: BoxDecoration(
                                color: Color.fromRGBO(229, 90, 90, 1),
                                borderRadius: BorderRadius.all(
                                  Radius.circular(17),
                                ),
                              ),
                              child: Center(
                                child: Text(
                                  'Unvailable',
                                  style: TextStyle(
                                    fontFamily: "Nunito",
                                    fontSize: 10,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 130, bottom: 50),
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              'dr. Yeon',
                              style: TextStyle(
                                  fontFamily: "Nunito",
                                  color: Colors.white,
                                  fontWeight: FontWeight.w700,
                                  fontSize: 18),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 130, bottom: 15),
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              'Psikolog Anak',
                              style: TextStyle(
                                  fontFamily: "Nunito",
                                  color: Colors.white,
                                  fontWeight: FontWeight.w700,
                                  fontSize: 10),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                            left: 129,
                            top: 20,
                            right: 10,
                          ),
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: Image.asset("images/stars.png"),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                            left: 130,
                            top: 57,
                            right: 10,
                          ),
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              'Rp100.000',
                              style: TextStyle(
                                  fontFamily: "Nunito",
                                  color: Color.fromRGBO(153, 236, 176, 1),
                                  fontWeight: FontWeight.w700,
                                  fontSize: 10),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(right: 15, bottom: 12),
                          child: Align(
                            alignment: Alignment.bottomRight,
                            child: Image.asset("images/mulaikonsul.png"),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
