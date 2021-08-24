import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_uii_challenges/constants.dart';
import 'package:flutter_uii_challenges/models/my_theme_provider.dart';
import 'package:flutter_uii_challenges/screens/components/clock_painter.dart';
import 'package:flutter_uii_challenges/size_config.dart';
import 'package:provider/provider.dart';

class Clock extends StatefulWidget {
  const Clock({Key? key}) : super(key: key);

  @override
  _ClockState createState() => _ClockState();
}

class _ClockState extends State<Clock> {
  var _dateTime = DateTime.now();

  @override
  void initState() {
    super.initState();
    Timer.periodic(Duration(seconds: 1), (timer) {
      setState(() {
        _dateTime = DateTime.now();
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Padding(
          padding:
              EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
          child: AspectRatio(
            aspectRatio: 1.4,
            child: Container(
              decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.surface,
                  shape: BoxShape.circle,
                  boxShadow: [
                    BoxShadow(
                        offset: Offset(0, 0),
                        color: kShadowColor.withOpacity(0.14),
                        blurRadius: 23),
                  ]),
              child: Transform.rotate(
                angle: -pi / 2,
                child: CustomPaint(
                  painter: ClockPainter(context, _dateTime),
                ),
              ),
            ),
          ),
        ),
        Positioned(
            top: 10,
            left: 0,
            right: 0,
            child: Consumer<MyThemeProvider>(
              builder: (context, theme, child) => GestureDetector(
                onTap: () {
                  theme.changeTheme();
                },
                child: SvgPicture.asset(
                  theme.isLightTheme
                      ? "assets/icons/Sun.svg"
                      : "assets/icons/Moon.svg",
                  color: Theme.of(context).primaryColor,
                  height: 24,
                  width: 24,
                ),
              ),
            ))
      ],
    );
  }
}
