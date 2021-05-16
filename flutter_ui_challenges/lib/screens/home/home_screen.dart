import 'package:flutter/material.dart';
import 'package:flutter_uii_challenges/constant/layout.dart';
import 'package:flutter_uii_challenges/models/course.dart';
import 'package:flutter_uii_challenges/screens/home/conpoment/info_user.dart';
import 'package:flutter_uii_challenges/screens/home/widget/banner_card.dart';
import 'package:flutter_uii_challenges/screens/home/widget/course_card.dart';
import 'package:flutter_uii_challenges/screens/home/widget/language_drop.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.menu),
        ),
        actions: [LanguageDropButton()],
      ),
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: spacing),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    InfoUser(),
                    SizedBox(height: spacing,),
                    Text(
                      "Welcome Back!",
                      style: Theme.of(context).textTheme.headline4.copyWith(
                            color: Colors.black,
                            fontWeight: FontWeight.w600,
                          ),
                    ),
                    Spacer(),
                    BannerCard(),
                    Spacer(),
                  ],
                ),
              ),
            ),
            Container(
              child: Padding(
                padding: const EdgeInsets.symmetric(
                    vertical: spacing / 2, horizontal: spacing),
                child: Text(
                  "Your Courses",
                  style: Theme.of(context).textTheme.headline6,
                ),
              ),
            ),
            Container(
              height: 130,
              margin: EdgeInsets.only(bottom: spacing),
              child: ListView.separated(
                itemBuilder: (context, index) {
                  return CourseCard(course: Course.courses[index]);
                },
                padding: EdgeInsets.symmetric(horizontal: spacing),
                itemCount: Course.courses.length,
                scrollDirection: Axis.horizontal,
                separatorBuilder: (context, index) {
                  return SizedBox(
                    width: spacing / 2,
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
