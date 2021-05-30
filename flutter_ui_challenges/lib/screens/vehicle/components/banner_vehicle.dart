import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_uii_challenges/constants/layout.dart';
import 'package:flutter_uii_challenges/models/vehicle.dart';
import 'package:get/get.dart';

class BannerVehicle extends StatelessWidget {
  final Vehicle vehicle;

  const BannerVehicle({Key key, this.vehicle}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Row(
              children: [
                IconButton(
                    icon: Icon(
                      Icons.arrow_back,
                      color: Colors.white,
                      size: 24,
                    ),
                    onPressed: () {
                      Get.back();
                    }),
                Expanded(
                  child: Text(
                    vehicle.name,
                    style: Theme.of(context).textTheme.headline4.copyWith(
                        color: Colors.white, fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                  ),
                ),
                SizedBox(
                  width: 24,
                )
              ],
            ),
            Expanded(child: Padding(
              padding: EdgeInsets.all(spacing),
                child: SvgPicture.asset(vehicle.icon)))
          ],
        ),
      ),
    );
  }
}
