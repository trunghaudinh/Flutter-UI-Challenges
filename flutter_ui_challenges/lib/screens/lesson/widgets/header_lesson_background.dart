import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_uii_challenges/constant/layout.dart';
import 'package:flutter_uii_challenges/models/lesson.dart';

class HeaderLessonBackground extends StatelessWidget {
  final Lesson lesson;

  const HeaderLessonBackground({Key key, @required this.lesson})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      child: Stack(
        children: [
          SvgPicture.asset(
            'assets/images/appbar.svg',
            height: size.width,
            color: lesson.color,
            fit: BoxFit.cover,
          ),
          Positioned(
              top: spacing,
              left: -size.width * 0.1,
              child: Container(
                height: size.width * 0.5,
                width: size.width * 0.5,
                decoration: BoxDecoration(
                    shape: BoxShape.circle, color: Colors.white10),
              )),
          Positioned(
              top: spacing * 2,
              right: -size.width * 0.2,
              child: Container(
                height: size.width * 0.4,
                width: size.width * 0.4,
                decoration: BoxDecoration(
                    shape: BoxShape.circle, color: Colors.white10),
              )),
          Positioned(
            top: spacing * 5,
            right: spacing * 4,
            child: Container(
                height: size.width * 0.2,
                width: size.width * 0.2,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.white10, width: 5),
                  shape: BoxShape.circle,
                )),
          )
        ],
      ),
    );
  }
}
