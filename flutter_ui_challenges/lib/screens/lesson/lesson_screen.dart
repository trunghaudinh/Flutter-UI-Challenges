import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_uii_challenges/constant/layout.dart';
import 'package:flutter_uii_challenges/controllers/indicator_controller.dart';
import 'package:flutter_uii_challenges/models/lesson.dart';
import 'package:flutter_uii_challenges/screens/lesson/widgets/header_lesson_background.dart';
import 'package:flutter_uii_challenges/screens/lesson/widgets/indicator_dot.dart';
import 'package:flutter_uii_challenges/screens/lesson/widgets/question_card.dart';
import 'package:get/get.dart';

class LessonScreen extends StatelessWidget {
  const LessonScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Lesson lesson = Get.arguments;
    final PageController _pageViewController = PageController(initialPage: 0);
    final IndicatorController _indicatorController =
    Get.put(IndicatorController());
    var _currentPage = 0.obs;
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
                style: Theme
                    .of(context)
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
              padding: EdgeInsets.all(spacing / 2),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(
                    "Translate these phrases to Vietnamese",
                    style: Theme
                        .of(context)
                        .textTheme
                        .headline5
                        .copyWith(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: spacing),
                    height: Get.width * 0.7,
                    child: PageView.builder(
                      physics: new NeverScrollableScrollPhysics(),
                      allowImplicitScrolling: false,
                      controller: _pageViewController,
                      itemCount: lesson.questions.length,
                      itemBuilder: (context, index) {
                        return QuestionCard(question: lesson.questions[index]);
                      },
                    ),
                  ),
                  SizedBox(
                    height: spacing / 2,
                  ),
                  Obx(
                        () =>
                        Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: List.generate(
                                lesson.questions.length,
                                    (index) =>
                                    IndicatorDot(
                                        index: index,
                                        currentPage: _currentPage.value,
                                        color: lesson.color))),
                  ),
                  Container(
                    child: Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(spacing)),
                      child: Padding(
                        padding: const EdgeInsets.all(spacing),
                        child: TextField(
                          cursorColor: lesson.color,
                          maxLines: 2,
                          decoration: InputDecoration(border: InputBorder.none),
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      _currentPage.value = _currentPage.value + 1;
                      // _pageViewController.nextPage(
                      //     duration: Duration(milliseconds: 500),
                      //     curve: Curves.easeIn);
                      _pageViewController.animateToPage(
                          _currentPage.value,
                          duration: Duration(milliseconds: 500),
                          curve: Curves.easeIn);
                    },
                    child: Center(
                      child: Container(
                        width: 48,
                        height: 48,
                        child: PhysicalModel(
                          shape: BoxShape.circle,
                          color: Colors.white,
                          elevation: 4,
                          child: Icon(
                            Icons.check_outlined,
                            size: 24,
                          ),
                        ),
                      ),
                    ),
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
