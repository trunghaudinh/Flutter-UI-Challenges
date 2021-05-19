import 'package:flutter/material.dart';

class IndicatorDot extends StatelessWidget {
  final int index;
  final int currentPage;
  final Color color;

  const IndicatorDot({
    Key key,
    @required this.index,
    @required this.currentPage,
    @required this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 500),
      margin: EdgeInsets.all(6),
      height: 10,
      width: currentPage == index ? 30 : 10,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(6),
          color: currentPage == index ? color : Colors.grey),
    );
  }
}
