import 'dart:math';

import 'package:flutter/material.dart';

class ClockPainter extends CustomPainter {
  final BuildContext context;
  final DateTime dateTime;

  ClockPainter(this.context, this.dateTime);

  @override
  void paint(Canvas canvas, Size size) {
    double centerX = size.width / 2;
    double centerY = size.height / 2;
    Offset center = Offset(centerX, centerY);

    // calendar Hour
    // minute = 360/12 = 30
    double minHourX =
        centerX + (size.width * 0.25 * cos((dateTime.hour * 30) * pi / 180));
    double minHourY =
        centerY + (size.width * 0.25 * sin((dateTime.hour * 30) * pi / 180));
    canvas.drawLine(
        center,
        Offset(minHourX, minHourY),
        Paint()
          ..color = Theme.of(context).colorScheme.secondary
          ..style = PaintingStyle.stroke
          ..strokeWidth = 10);

    // calendar minute
    // minute = 360/60 = 6
    double minX =
        centerX + (size.width * 0.27 * cos((dateTime.minute * 6) * pi / 180));
    double minY =
        centerY + (size.width * 0.27 * sin((dateTime.minute * 6) * pi / 180));
    canvas.drawLine(
        center,
        Offset(minX, minY),
        Paint()
          ..color = Theme.of(context).accentColor
          ..style = PaintingStyle.stroke
          ..strokeWidth = 10);

    // calendar second
    // minute = 360/60 = 6
    double minSecondX =
        centerX + (size.width * 0.3 * cos((dateTime.second * 6) * pi / 180));
    double minHSecondY =
        centerY + (size.width * 0.3 * sin((dateTime.second * 6) * pi / 180));
    canvas.drawLine(center, Offset(minSecondX, minHSecondY),
        Paint()..color = Theme.of(context).primaryColor);

    // draw dot
    var dotPainter = Paint()..color = Theme.of(context).primaryIconTheme.color!;
    canvas.drawCircle(center, 24, dotPainter);

    canvas.drawCircle(
        center, 23, Paint()..color = Theme.of(context).backgroundColor);

    canvas.drawCircle(center, 10, dotPainter);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
