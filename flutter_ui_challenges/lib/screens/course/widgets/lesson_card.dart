import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_uii_challenges/constant/layout.dart';
import 'package:flutter_uii_challenges/models/lesson.dart';
import 'package:flutter_uii_challenges/models/question.dart';
import 'package:flutter_uii_challenges/screens/lesson/lesson_screen.dart';
import 'package:get/get.dart';

class LessonCard extends StatelessWidget {
  final Lesson lesson;

  const LessonCard({Key key, @required this.lesson}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    int totalQuestion = lesson.questions.length;
    int totalAnswered = 0;
    for (Question quest in lesson.questions) {
      if (quest.answered) {
        totalAnswered++;
      }
    }
    return GestureDetector(
      onTap: (){
        Get.to(LessonScreen(),arguments: lesson);
      },
      child: Card(
        margin: EdgeInsets.all(spacing/2),
        clipBehavior: Clip.hardEdge,
        color: Colors.white,
        shape:
        RoundedRectangleBorder(borderRadius: BorderRadius.circular(spacing)),
        child: Container(
          width: Get.width / 2 - (spacing),
          height: Get.width / 2 - (spacing),
          padding: EdgeInsets.all(spacing),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              PhysicalModel(
                color: Colors.white,
                shape: BoxShape.circle,
                elevation: 4.0,
                child: Container(
                  padding: EdgeInsets.all(spacing),
                  child: SvgPicture.asset(
                    lesson.icon,
                    height: 24,
                    width: 24,
                  ),
                ),
              ),
              Spacer(),
              Text(
                "${lesson.name}",
                style: Theme
                    .of(context)
                    .textTheme
                    .bodyText1
                    .copyWith(color: Colors.black),
              ),
              Text("${totalAnswered}/$totalQuestion"),
              Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}
