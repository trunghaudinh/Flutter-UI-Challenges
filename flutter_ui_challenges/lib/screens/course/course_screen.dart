import 'package:flutter/material.dart';
import 'package:flutter_uii_challenges/constant/layout.dart';
import 'package:flutter_uii_challenges/controllers/difficulty_controller.dart';
import 'package:flutter_uii_challenges/models/course.dart';
import 'package:flutter_uii_challenges/screens/course/widgets/header_course_background.dart';
import 'package:flutter_uii_challenges/screens/course/widgets/lesson_card.dart';
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
    final DifficultyController controller = Get.put(DifficultyController());
    return Scaffold(
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
              title: Obx(
                () => Text(
                  "${course.name} ${controller.difficulty.value}",
                  style: Theme.of(context).textTheme.headline6.copyWith(
                      color: Colors.white, fontWeight: FontWeight.normal),
                ),
              ),
              actions: [
                IconButton(icon: Icon(Icons.more_vert), onPressed: () {})
              ],
            ),
            body: Container(
              padding:
                  EdgeInsets.only(top: spacing, left: spacing, right: spacing),
              child: Expanded(
                child: Column(
                  children: [
                    HeaderCourse(course: course),
                    SizedBox(
                      height: spacing * 2,
                    ),
                    Expanded(
                      child: GridView.builder(
                          gridDelegate:
                              const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                          ),
                          itemCount: course.lessons.length,
                          itemBuilder: (context, index) {
                            return LessonCard(lesson: course.lessons[index]);
                          }),
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
