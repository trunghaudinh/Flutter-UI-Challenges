import 'package:flutter/material.dart';
import 'package:flutter_uii_challenges/constant/layout.dart';
import 'package:flutter_uii_challenges/models/question.dart';
import 'package:get/get.dart';

class QuestionCard extends StatelessWidget {
  final Question question;

  const QuestionCard({Key key, @required this.question}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(spacing))),
        child: Container(
          padding: EdgeInsets.all(spacing),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Align(
                  alignment: Alignment.topLeft,
                  child: Icon(Icons.format_quote)),
              Text(
                question.title,
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
        ));
  }
}
