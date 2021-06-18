import 'package:flutter/material.dart';

class SizeConfig {
  static MediaQueryData _mediaQueryData;
  static double screenWidth;
  static double screenHeight;
  static double defaultSize;
  static Orientation orientation;

  void init(BuildContext buildContext) {
    _mediaQueryData = MediaQuery.of(buildContext);
    screenWidth = _mediaQueryData.size.width;
    screenHeight = _mediaQueryData.size.height;
    orientation = _mediaQueryData.orientation;
  }
}

double getProportionateScreenHeight(double inputHeight) {
  double screenHeight = SizeConfig.screenHeight;
  // designer use iphone 11 with height = 986.0
  return (inputHeight / 986.0) * screenHeight;
}

double getProportionateScreenWidth(double inputWidth) {
  double screenWidth = SizeConfig.screenHeight;
  // designer use iphone 11 with height = 986.0
  return (inputWidth / 414.0) * screenWidth;
}

class VerticalSpacing extends StatelessWidget {
  final double of;

  const VerticalSpacing({
    Key key,
    this.of = 25,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return SizedBox(height: getProportionateScreenHeight(of));
  }
}
