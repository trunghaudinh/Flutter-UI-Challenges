import 'package:flutter/material.dart';
import 'package:flutter_uii_challenges/constants/layout.dart';
import 'package:flutter_uii_challenges/models/vehicle.dart';
import 'package:flutter_uii_challenges/screens/base_layout.dart';
import 'package:flutter_uii_challenges/screens/home/components/banner_home.dart';
import 'package:flutter_uii_challenges/screens/home/components/header_home.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BaseLayout(
      headerWidget: HeaderHome(),
      bodyWidget: BodyHome(),
    );
  }
}

class BodyHome extends StatelessWidget {
  const BodyHome({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: spacing),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          BannerHome(),
          SizedBox(height: spacing /2,),
          Text("Choose your Transport",style: Theme.of(context).textTheme.headline6.copyWith(
            fontWeight: FontWeight.bold
          ),),
          SizedBox(height: spacing /2,),

        ],
      ),
    );
  }
}
