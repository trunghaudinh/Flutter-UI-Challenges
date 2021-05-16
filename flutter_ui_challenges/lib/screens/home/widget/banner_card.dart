import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_uii_challenges/constant/color.dart';
import 'package:flutter_uii_challenges/constant/layout.dart';

class BannerCard extends StatelessWidget {
  const BannerCard({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Card(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(borderRadius)),
      child: Container(
        width: size.width,
        height: 250,
        child: Stack(
          children: [
            Positioned(
                right: 0,
                child: SvgPicture.asset(
                  'assets/icons/banner.svg',
                  height: 250,
                )),
            Container(
              width: size.width * 0.6,
              padding: EdgeInsets.all(spacing),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(
                        vertical: spacing / 4, horizontal: spacing / 2),
                    decoration: BoxDecoration(
                      color: Colors.blue[100],
                      borderRadius: BorderRadius.circular(spacing),
                    ),
                    child: Text(
                      "Intermediate",
                      style: Theme.of(context).textTheme.caption.copyWith(
                            color: Colors.blue[800],
                          ),
                    ),
                  ),
                  Spacer(),
                  Text(
                    "Today's Challenge",
                    style: Theme.of(context).textTheme.headline4.copyWith(
                          height: 1,
                          color: Colors.black,
                          fontWeight: FontWeight.normal,
                        ),
                  ),
                  SizedBox(
                    height: spacing / 2,
                  ),
                  Text(
                    "German meals",
                    style: Theme.of(context).textTheme.headline6.copyWith(
                        fontWeight: FontWeight.normal, color: iconColor),
                  ),
                  Spacer(),
                  Row(
                    children: [
                      SvgPicture.asset(
                        'assets/icons/milestone.svg',
                        height: 24,
                        width: 24,
                      ),
                      SizedBox(
                        width: spacing / 2,
                      ),
                      Expanded(
                        child: Text(
                          "Take this lesson to earn more milestones",
                          style: Theme.of(context).textTheme.caption.copyWith(
                              color: iconColor, fontWeight: FontWeight.normal),
                        ),
                      )
                    ],
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
