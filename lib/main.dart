import 'package:bri_flutter/landing_page/landing_page_screen.dart';
import 'package:bri_flutter/pages/home.dart';
import 'package:bri_flutter/pages/login_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity),
      home: landing_page_screen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
