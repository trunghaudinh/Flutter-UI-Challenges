import 'package:flutter/material.dart';
import 'package:flutter_uii_challenges/models/my_theme_provider.dart';
import 'package:flutter_uii_challenges/screens/home_screen.dart';
import 'package:flutter_uii_challenges/theme.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(ChangeNotifierProvider(
      create: (context) => MyThemeProvider(), child: MyApp()));
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Clock',
      theme: themeData(context),
      darkTheme: darkThemeData(context),
      themeMode: context.watch<MyThemeProvider>().isLightTheme
          ? ThemeMode.light
          : ThemeMode.dark,
      home: HomeScreen(),
    );
  }
}
