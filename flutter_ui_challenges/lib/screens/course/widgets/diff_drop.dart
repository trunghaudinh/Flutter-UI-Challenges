import 'package:flutter/material.dart';
import 'package:flutter_uii_challenges/constant/layout.dart';
import 'package:flutter_uii_challenges/controllers/difficulty_controller.dart';
import 'package:flutter_uii_challenges/models/course.dart';
import 'package:get/get.dart';

class DiffDrop extends StatelessWidget {
  final Course data;
  const DiffDrop({Key key,@required this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final DifficultyController controller = Get.put(DifficultyController());
    return Container(
      padding: EdgeInsets.only(left: spacing , right: spacing),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(spacing),
        color: Colors.white
      ),
      child: DropdownButtonHideUnderline(
        child: DropdownButton(
          value: ObxValue(()=>controller.difficulty.value),
          onChanged: (String newValue){
            controller.change(newValue);
          },
          icon: Icon(Icons.keyboard_arrow_down_rounded,color: data.color,),
          items: [
            DropdownMenuItem(
              value: "Beginer",
              child: Text(
                "Beginer",
                style: Theme.of(context).textTheme.bodyText1.copyWith(
                  color: data.color,
                ),
              ),
            ),
            DropdownMenuItem(
              value: "Intermediate",
              child: Text(
                "Intermediate",
                style: Theme.of(context).textTheme.bodyText1.copyWith(
                  color: data.color,
                ),
              ),
            ),
            DropdownMenuItem(
              value: "Advanced",
              child: Text(
                "Advanced",
                style: Theme.of(context).textTheme.bodyText1.copyWith(
                  color: data.color,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
