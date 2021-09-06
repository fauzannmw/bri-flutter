import 'package:flutter/material.dart';

class DetailKonsultasi extends StatefulWidget {
  @override
  State<DetailKonsultasi> createState() => _DetailKonsultasiState();
}

class _DetailKonsultasiState extends State<DetailKonsultasi> {
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
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 30),
                child: Container(
                  width: screenwidth,
                  height: 620,
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(165, 162, 221, 1),
                    borderRadius: BorderRadius.all(
                      Radius.circular(15),
                    ),
                  ),
                  child: Stack(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 24, right: 21),
                        child: Align(
                          alignment: Alignment.topRight,
                          child: Image.asset("images/icon_favorite.png"),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 24, left: 21),
                        child: Align(
                          alignment: Alignment.topLeft,
                          child: Image.asset("images/icon_share.png"),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 30),
                        child: Align(
                          alignment: Alignment.topCenter,
                          child: Image.asset("images/drjung115.png"),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 160, left: 21),
                        child: Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            'dr. Jung',
                            style: TextStyle(
                              fontFamily: "Nunito",
                              fontSize: 20,
                              color: Colors.white,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 190, left: 21),
                        child: Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            'Dokter Spesialis Anak',
                            style: TextStyle(
                              fontFamily: "Nunito",
                              fontSize: 14,
                              color: Colors.white,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
