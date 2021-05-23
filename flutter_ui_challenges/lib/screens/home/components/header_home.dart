import 'package:flutter/material.dart';
import 'package:flutter_uii_challenges/constants/layout.dart';

class HeaderHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Hello, \nTrung Hau Dinh",
                  style: Theme.of(context).textTheme.headline4.copyWith(
                      color: Colors.white, fontWeight: FontWeight.bold),
                ),
                Container(
                  height: 60,
                  width: 60,
                  clipBehavior: Clip.hardEdge,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle, color: Colors.white),
                  child: Image.asset(
                    'assets/images/avatar.png',
                    fit: BoxFit.fill,
                  ),
                ),
              ],
            ),
            SizedBox(height: spacing),
            Text(
              "Where will you go ?",
              style: Theme.of(context)
                  .textTheme
                  .bodyText1
                  .copyWith(color: Colors.white),
            ),
            SizedBox(height: spacing),
            TextField(
              cursorColor: Color(0xFF3A9EC1),
              decoration: InputDecoration(
                contentPadding: EdgeInsets.all(0),
                prefixIcon: Icon(Icons.search, color: Colors.grey),
                filled: true,
                fillColor: Colors.white,
                border: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.circular(borderRadius),
                ),
                hintText: "Search",
                hintStyle: TextStyle(color: Colors.grey),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
