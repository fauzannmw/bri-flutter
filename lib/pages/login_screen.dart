import 'package:flutter/material.dart';

class login_screen extends StatelessWidget {
  EdgeInsets pad = new EdgeInsets.only(top: 50, left: 30);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.arrow_back_ios,
              size: 25,
            ),
            padding: pad,
          ),
          Padding(
            child: Text(
              'Masuk',
              style: TextStyle(fontSize: 20),
            ),
            padding: pad,
          ),
          Center(
            child: Container(
              color: Colors.black,
              width: 100,
              height: 100,
            ),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
      ),
    );
  }
}
