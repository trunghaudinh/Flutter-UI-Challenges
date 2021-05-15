import 'package:flutter/material.dart';
import 'package:flutter_uii_challenges/core/theme/color.theme.dart';
import 'package:flutter_uii_challenges/core/theme/layout.theme.dart';

class DateList extends StatefulWidget {
  @override
  _DateListState createState() => _DateListState();
}

class _DateListState extends State<DateList> {
  int _currentSelected = 0;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        ChipFilter(
          label: 'Day',
          chipIndex: 0,
          groupIndex: _currentSelected,
          onTap: () {
            setState(() {
              _currentSelected = 0;
            });
          },
        ),
        ChipFilter(
          label: 'Week',
          chipIndex: 1,
          groupIndex: _currentSelected,
          onTap: () {
            setState(() {
              _currentSelected = 1;
            });
          },
        ),
        ChipFilter(
          label: 'Month',
          chipIndex: 2,
          groupIndex: _currentSelected,
          onTap: () {
            setState(() {
              _currentSelected = 2;
            });
          },
        ),
        ChipFilter(
          label: 'Year',
          chipIndex: 3,
          groupIndex: _currentSelected,
          onTap: () {
            setState(() {
              _currentSelected = 3;
            });
          },
        ),
      ],
    );
  }
}

class ChipFilter extends StatelessWidget {
  final String label;
  final Function onTap;
  final int chipIndex;
  final int groupIndex;

  const ChipFilter({
    Key key,
    @required this.label,
    @required this.onTap,
    @required this.chipIndex,
    @required this.groupIndex,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.symmetric(
            vertical: defaultMargin / 4, horizontal: defaultMargin / 2),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(defaultBorderRadius),
            color: chipIndex == groupIndex ? iconColor : Colors.white),
        child: Text(
          label,
          style: TextStyle(
              color: chipIndex == groupIndex ? Colors.white : iconColor),
        ),
      ),
    );
  }
}
