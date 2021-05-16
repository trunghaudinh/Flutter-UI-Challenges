import 'package:flutter/material.dart';
import 'package:flutter_uii_challenges/screens/home/home_screen.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Ui Challenge Day 2',
      theme: ThemeData(
        backgroundColor: Color(0xFFF7F7F7),
        textTheme: GoogleFonts.poppinsTextTheme(Theme.of(context).textTheme).apply(bodyColor: Colors.black),
      ),
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}

