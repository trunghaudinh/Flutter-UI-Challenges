import 'package:flutter/material.dart';
import 'package:flutter_uii_challenges/constant/color.dart';
import 'package:flutter_uii_challenges/constant/layout.dart';

class InfoUser extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.all(0),
      leading: Container(
        width: 60,
        height: 60,
        clipBehavior: Clip.hardEdge,
        decoration: BoxDecoration(shape: BoxShape.circle),
        child: Image.asset('assets/images/avatar.jpg'),
      ),
      title: Text(
        "Dinh Trung Hau",
        style: Theme.of(context).textTheme.bodyText1,
      ),
      subtitle: Container(
        margin: EdgeInsets.only(top: spacing /4),
        child: Row(
          children: [
            Icon(
              Icons.location_on_rounded,
              color: iconColor,
            ),
            SizedBox(width: spacing /2,),
            Text("Viet Nam")
          ],
        ),
      ),
    );
  }
}
