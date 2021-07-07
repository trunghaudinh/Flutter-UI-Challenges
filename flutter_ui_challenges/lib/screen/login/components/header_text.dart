import 'package:flutter/material.dart';

import '../../../size_config.dart';

class HeaderText extends StatelessWidget {
  const HeaderText({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Good Morning",
          style: Theme.of(context)
              .textTheme
              .headline3
              .copyWith(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        VerticalSpacing(
          of: 10,
        ),
        Text(
          "Enter your information below",
          style: Theme.of(context)
              .textTheme
              .bodyText1
              .copyWith(color: Colors.white),
        ),
      ],
    );
  }
}
