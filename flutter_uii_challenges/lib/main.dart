import 'package:flutter/material.dart';
import 'package:flutter_uii_challenges/screens/main/main_screen.dart';
import 'package:get/get.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Ui Challenges',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        backgroundColor: Color(0xFFF3F6F9)
      ),
      debugShowCheckedModeBanner: false,
      home: MainScreen(),
    );
  }
}

