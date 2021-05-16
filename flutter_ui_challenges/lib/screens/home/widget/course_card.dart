import 'package:flutter/material.dart';
import 'package:flutter_uii_challenges/constant/color.dart';
import 'package:flutter_uii_challenges/constant/layout.dart';
import 'package:flutter_uii_challenges/models/course.dart';

class CourseCard extends StatelessWidget {
  final Course course;

  const CourseCard({Key key, @required this.course}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.hardEdge,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(borderRadius)),
      color: course.color,
      child: Container(
        width: 150,
        padding: EdgeInsets.all(spacing / 2),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              course.name,
              style: Theme.of(context)
                  .textTheme
                  .headline6
                  .copyWith(fontWeight: FontWeight.bold, color: Colors.white),
            ),
            Text(
              course.difficulty,
              style: Theme.of(context)
                  .textTheme
                  .bodyText1
                  .copyWith(color: Colors.white),
            ),
            Container(
              alignment: Alignment.centerRight,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Container(
                    width: 50,
                    height: 50,
                    child: CircularProgressIndicator(
                      value: 50,
                      strokeWidth: 3,
                      backgroundColor: Colors.white30,
                      valueColor: AlwaysStoppedAnimation(Colors.white),
                    ),
                  ),
                  Text(
                    "50%",
                    style: Theme.of(context)
                        .textTheme
                        .bodyText1
                        .copyWith(color: Colors.white),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
