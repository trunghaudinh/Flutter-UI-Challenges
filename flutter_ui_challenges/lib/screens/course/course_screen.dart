import 'package:flutter/material.dart';
import 'package:flutter_uii_challenges/constant/layout.dart';
import 'package:flutter_uii_challenges/models/course.dart';
import 'package:flutter_uii_challenges/screens/course/widgets/header_course_background.dart';
import 'package:get/get.dart';

import 'components/header_course.dart';

class CourseScreen extends StatefulWidget {
  const CourseScreen({
    Key key,
  }) : super(key: key);

  @override
  _CourseScreenState createState() => _CourseScreenState();
}

class _CourseScreenState extends State<CourseScreen> {
  @override
  Widget build(BuildContext context) {
    Course course = Get.arguments;
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            HeaderCourseBackground(course: course),
            Scaffold(
              backgroundColor: Colors.transparent,
              appBar: AppBar(
                elevation: 0,
                backgroundColor: Colors.transparent,
                leading: IconButton(
                  onPressed: () {
                    Get.back();
                  },
                  icon: Icon(
                    Icons.keyboard_arrow_left_rounded,
                    color: Colors.white,
                    size: 36,
                  ),
                ),
                centerTitle: true,
                title: Text(
                  "Course",
                  style: Theme.of(context).textTheme.headline6.copyWith(
                      color: Colors.white, fontWeight: FontWeight.normal),
                ),
                actions: [
                  IconButton(icon: Icon(Icons.more_vert), onPressed: () {})
                ],
              ),
              body: Container(
                padding: EdgeInsets.only(
                    top: spacing, left: spacing, right: spacing),
                child: Column(
                  children: [HeaderCourse(course: course)],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
