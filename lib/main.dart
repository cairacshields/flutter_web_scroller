/*
*
* A sample app for the Flutter Web Basic Scrollbar
*
* */

import 'package:flutter/material.dart';
import 'landing_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Web Basic Scroll',
        home: LandingPage(),
    );
  }
}