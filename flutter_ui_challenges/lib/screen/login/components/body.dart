import 'package:flutter/material.dart';
import 'package:flutter_uii_challenges/screen/login/components/tabs.dart';

class Body extends StatelessWidget {
  const Body({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Color> lightBgColors = [
      Color(0xFF8C2480),
      Color(0xFFCE587D),
      Color(0xFFFF9485),
      // if (isFullSun) Color(0xFFFF9D80),
    ];
    var darkBgColors = [
      Color(0xFF0D1441),
      Color(0xFF283584),
      Color(0xFF376AB2),
    ];
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            Text("asdasdasd"),
            // Tabs(
            //   press: (value) {},
            // )
          ],
        ),
      ),
    );
  }
}
