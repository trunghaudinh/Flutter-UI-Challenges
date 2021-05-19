import 'package:flutter/material.dart';
import 'package:flutter_uii_challenges/constant/layout.dart';
import 'package:flutter_uii_challenges/models/lesson.dart';
import 'package:flutter_uii_challenges/screens/lesson/widgets/header_lesson_background.dart';
import 'package:get/get.dart';

class LessonScreen extends StatelessWidget {
  const LessonScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Lesson lesson = Get.arguments;
    return Scaffold(
      body: Stack(
        children: [
          HeaderLessonBackground(lesson: lesson),
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
                  Icons.arrow_back_ios_rounded,
                  color: Colors.white,
                ),
              ),
              title: Text(
                lesson.name,
                style: Theme.of(context)
                    .textTheme
                    .headline6
                    .copyWith(color: Colors.white),
              ),
              centerTitle: true,
              actions: [
                IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.more_vert,
                      color: Colors.white,
                    ))
              ],
            ),
            body: Container(
              padding: EdgeInsets.all(spacing),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(
                    "Translate these phrases to Vietnamese",
                    style: Theme.of(context).textTheme.headline5.copyWith(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                  Container(
                    height: Get.width * 0.7,
                    child: Card(
                        child: Container(
                      padding: EdgeInsets.all(spacing),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Align(
                              alignment: Alignment.topLeft,
                              child: Icon(Icons.format_quote)),
                          Text(
                            lesson.questions[0].title,
                            style: Theme.of(context)
                                .textTheme
                                .headline5
                                .copyWith(fontWeight: FontWeight.normal),
                          ),
                          Align(
                              alignment: Alignment.bottomRight,
                              child: Icon(Icons.format_quote)),
                        ],
                      ),
                    )),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
