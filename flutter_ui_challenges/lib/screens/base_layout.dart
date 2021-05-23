import 'package:flutter/material.dart';
import 'package:flutter_uii_challenges/constants/color.dart';
import 'package:flutter_uii_challenges/constants/layout.dart';
import 'package:get/get.dart';

class BaseLayout extends StatelessWidget {
  final int backgroundColor;

  final Widget headerWidget;
  final Widget bodyWidget;
  final Widget fullScreen;
  final bool isFullScreen;

  BaseLayout(
      {Key key,
      this.backgroundColor,
      this.headerWidget,
      this.bodyWidget,
      this.fullScreen,
      this.isFullScreen})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor ?? trainColor,
      body: Stack(
        children: [
          Container(
            width: Get.width,
            height: Get.height,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Container(
                  padding: EdgeInsets.all(spacing),
                  height: Get.height * 0.4,
                  width: Get.width,
                  child: headerWidget,
                ),
                Expanded(
                    child: Stack(
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: (Get.height * 0.15)/2.5),
                      clipBehavior: Clip.hardEdge,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(borderRadius * 2),
                              topRight: Radius.circular(borderRadius * 2))),
                    ),
                    bodyWidget
                  ],
                ))
              ],
            ),
          )
        ],
      ),
    );
  }
}
