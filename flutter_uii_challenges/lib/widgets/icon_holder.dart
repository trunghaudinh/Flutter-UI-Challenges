import 'package:flutter/material.dart';

class IconHolder extends StatelessWidget {
  final IconData icon;
  final Color backgroundIcon;

  const IconHolder(
      {Key key, @required this.icon, @required this.backgroundIcon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: 40,
      decoration: BoxDecoration(color: backgroundIcon, shape: BoxShape.circle),
      child: Icon(
        icon,
        color: Colors.white,
      ),
    );
  }
}
