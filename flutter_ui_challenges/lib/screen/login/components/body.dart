import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_uii_challenges/screen/login/components/header_text.dart';
import 'package:flutter_uii_challenges/screen/login/components/land.dart';
import 'package:flutter_uii_challenges/screen/login/components/tabs.dart';
import 'package:flutter_uii_challenges/screen/login/components/text_field.dart';
import 'package:flutter_uii_challenges/size_config.dart';

class Body extends StatefulWidget {
  const Body({Key key}) : super(key: key);

  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  bool _isDay = false;

  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 2), () {
      setState(() {
        _isDay = true;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    List<Color> lightBgColors = [
      Color(0xFF8C2480),
      Color(0xFFCE587D),
      Color(0xFFFF9485),
      if (_isDay) Color(0xFFFF9D80),
    ];
    var darkBgColors = [
      Color(0xFF0D1441),
      Color(0xFF283584),
      Color(0xFF376AB2),
    ];

    var _duration = Duration(seconds: 1);
    return AnimatedContainer(
      duration: _duration,
      width: double.infinity,
      height: SizeConfig.screenHeight,
      decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: _isDay ? lightBgColors : darkBgColors)),
      child: Stack(
        children: [
          AnimatedPositioned(
              duration: _duration,
              bottom: getProportionateScreenWidth(_isDay ? -40 : -90),
              left: getProportionateScreenWidth(20),
              child: SvgPicture.asset("assets/icons/Sun.svg")),
          Land(),
          Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: SafeArea(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    VerticalSpacing(
                      of: 50,
                    ),
                    Tabs(
                      press: (value) {
                        setState(() {
                          _isDay = value == 0;
                        });
                      },
                    ),
                    VerticalSpacing(),
                    HeaderText(),
                    VerticalSpacing(
                      of: 50,
                    ),
                    RoundedTextField()
                  ],
                ),
              )),
        ],
      ),
    );
  }
}
