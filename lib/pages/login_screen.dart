import 'package:flutter/material.dart';

class login_screen extends StatelessWidget {
  EdgeInsets pad = new EdgeInsets.only(top: 50, left: 30);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(165, 162, 221, 1),
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.only(top: 30),
            child: FloatingActionButton(
              backgroundColor: Colors.white,
              child: Padding(
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
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            child: Text(
              'Masuk',
              style: TextStyle(
                  fontFamily: "Nunito",
                  fontSize: 24,
                  color: Color.fromRGBO(242, 247, 255, 1)),
            ),
            padding: pad,
          ),
        ],
      ),
    );
  }
}
