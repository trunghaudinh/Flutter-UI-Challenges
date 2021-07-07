import 'package:flutter/material.dart';

import '../../../size_config.dart';

class RoundedTextField extends StatelessWidget {
  const RoundedTextField({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Email",
          style: TextStyle(color: Colors.white),
        ),
        VerticalSpacing(
          of: 10,
        ),
        TextField(
          controller: TextEditingController(text: "trunghaudinh96@gmail.com"),
          decoration: InputDecoration(
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10))),
              hintStyle: TextStyle(color: Colors.black45)),
          style: TextStyle(color: Colors.white),
          cursorColor: Colors.white,
        ),
        VerticalSpacing(),
        Text(
          "Password",
          style: TextStyle(color: Colors.white),
        ),
        VerticalSpacing(
          of: 10,
        ),
        TextField(
          controller: TextEditingController(text: "123123123123"),
          decoration: InputDecoration(
            border: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(10))),
            hintStyle: TextStyle(color: Colors.black45),
          ),
          style: TextStyle(color: Colors.white),
          obscureText: true,
          cursorColor: Colors.white,
        ),
      ],
    );
  }
}
