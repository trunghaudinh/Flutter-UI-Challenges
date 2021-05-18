import 'package:flutter/material.dart';
import 'package:flutter_uii_challenges/models/course.dart';
import 'package:flutter_uii_challenges/models/lesson.dart';
import 'package:flutter_uii_challenges/models/question.dart';
import 'package:flutter_uii_challenges/screens/course/widgets/diff_drop.dart';
import 'package:get/get.dart';

class HeaderCourse extends StatelessWidget {
  final Course course;

  const HeaderCourse({Key key, @required this.course}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    int answered = 0;
    int totalQues = 0;
    for (Lesson lesson in course.lessons) {
      for (Question question in lesson.questions) {
        if (question.answered) {
          answered++;
        }
        totalQues++;
      }
    }
    return Container(
      height: Get.width * 0.6,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                course.name,
                style: Theme.of(context)
                    .textTheme
                    .headline4
                    .copyWith(fontWeight: FontWeight.bold, color: Colors.white),
              ),
              DiffDrop(
                data: course,
              )
            ],
          ),
          Stack(
            alignment: Alignment.center,
            children: [
              Container(
                width: Get.width * 0.25,
                height: Get.width * 0.25,
                child: CircularProgressIndicator(
                  value: answered / totalQues,
                  strokeWidth: 4,
                  backgroundColor: Colors.white30,
                  valueColor: AlwaysStoppedAnimation(Colors.white),
                ),
              ),
              Text(
                (answered / totalQues * 100).toStringAsFixed(0) + "%",
                style: Theme.of(context)
                    .textTheme
                    .headline4
                    .copyWith(color: Colors.white),
              )
            ],
          )
        ],
      ),
    );
  }
}
