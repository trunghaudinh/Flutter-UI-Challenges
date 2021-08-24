import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_uii_challenges/size_config.dart';

class TimeHourAndMinutes extends StatefulWidget {
  const TimeHourAndMinutes({Key? key}) : super(key: key);

  @override
  _TimeHourAndMinutesState createState() => _TimeHourAndMinutesState();
}

class _TimeHourAndMinutesState extends State<TimeHourAndMinutes> {
  var _timeOfDay = TimeOfDay.now();

  @override
  void initState() {
    super.initState();
    Timer.periodic(Duration(seconds: 1), (timer) {
      if (_timeOfDay.minute != TimeOfDay.now().minute) {
        setState(() {
          _timeOfDay = TimeOfDay.now();
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    var _period = _timeOfDay.period == DayPeriod.am ? "AM" : "PM";
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "${_timeOfDay.hourOfPeriod}:${_timeOfDay.minute}",
          style: Theme.of(context).textTheme.headline1,
        ),
        SizedBox(
          width: 5,
        ),
        RotatedBox(
          quarterTurns: 3,
          child: Text(
            _period,
            style: TextStyle(fontSize: getProportionateScreenWidth(18)),
          ),
        )
      ],
    );
  }
}
