import 'package:flutter/material.dart';

class login_screen extends StatelessWidget {
  EdgeInsets pad = new EdgeInsets.only(top: 30, left: 30);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(165, 162, 221, 1),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            child: FloatingActionButton(
              backgroundColor: Colors.white,
              child: Container(
                padding: EdgeInsets.only(left: 6),
                child: Icon(
                  Icons.arrow_back_ios,
                  size: 20,
                  color: Colors.black,
                ),
              ),
              onPressed: () {
                // setState(() {});
              },
            ),
            padding: pad,
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            child: Text(
              'Masuk',
              style: TextStyle(
                  fontFamily: "Nunito",
                  fontSize: 48,
                  fontWeight: FontWeight.w900,
                  color: Color.fromRGBO(242, 247, 255, 1)),
            ),
            padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
          ),
          Container(
            child: SingleChildScrollView(
              padding: EdgeInsets.symmetric(horizontal: 25, vertical: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    child: Image.asset("images/logo.png"),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  // Text(
                  //   "Masuk",
                  //   style: TextStyle(
                  //       color: Colors.white,
                  //       fontSize: 40,
                  //       fontWeight: FontWeight.w900),
                  // ),
                  // SizedBox(
                  //   height: 30,
                  // ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        alignment: Alignment.centerLeft,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          // boxShadow: [
                          //   BoxShadow(
                          //       color: Colors.black,
                          //       blurRadius: 6,
                          //       offset: Offset(0, 2))
                          // ]
                        ),
                        height: 60,
                        child: TextField(
                          keyboardType: TextInputType.emailAddress,
                          style: TextStyle(color: Colors.black87),
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              contentPadding: EdgeInsets.only(top: 14),
                              prefixIcon: Icon(
                                Icons.phone_android,
                                color: Colors.black,
                              ),
                              hintText: "Nomor Telepon",
                              hintStyle: TextStyle(
                                color: Colors.black,
                              )),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        alignment: Alignment.centerLeft,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          // boxShadow: [
                          //   BoxShadow(
                          //       color: Colors.black,
                          //       blurRadius: 6,
                          //       offset: Offset(0, 2))
                          // ]
                        ),
                        height: 60,
                        child: TextField(
                          keyboardType: TextInputType.emailAddress,
                          style: TextStyle(color: Colors.black87),
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              contentPadding: EdgeInsets.only(top: 14),
                              prefixIcon: Icon(
                                Icons.mail,
                                color: Colors.black,
                              ),
                              hintText: "Email",
                              hintStyle: TextStyle(
                                color: Colors.black,
                              )),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        alignment: Alignment.centerLeft,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          // boxShadow: [
                          //   BoxShadow(
                          //       color: Colors.black,
                          //       blurRadius: 6,
                          //       offset: Offset(0, 2))
                          // ]
                        ),
                        height: 60,
                        child: TextField(
                          keyboardType: TextInputType.emailAddress,
                          style: TextStyle(color: Colors.black87),
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              contentPadding: EdgeInsets.only(top: 14),
                              prefixIcon: Icon(
                                Icons.facebook,
                                color: Colors.blue,
                              ),
                              hintText: "Facebook",
                              hintStyle: TextStyle(
                                color: Colors.black,
                              )),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 25),
            child: Text(
              "Belum punya akun? Klik disini untuk daftar!",
              style: TextStyle(
                  fontFamily: "Nunito",
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: Color.fromRGBO(242, 247, 255, 1)),
            ),
          ),
        ],
      ),
    );
  }
}
