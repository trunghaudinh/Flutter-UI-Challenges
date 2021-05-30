import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_uii_challenges/constants/layout.dart';
import 'package:flutter_uii_challenges/models/vehicle.dart';
import 'package:flutter_uii_challenges/screens/vehicle/vehicle_screen.dart';
import 'package:get/get.dart';

class VehicleCard extends StatelessWidget {
  final Vehicle vehicle;

  const VehicleCard({Key key, this.vehicle}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
          Get.to(VehicleScreen(),arguments: vehicle);
      },
      child: Container(
        padding: EdgeInsets.all(spacing),
        height: 150,
        decoration: BoxDecoration(
            color: vehicle.color,
            borderRadius: BorderRadius.all(Radius.circular(borderRadius))),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  vehicle.name,
                  style: Theme.of(context).textTheme.headline6.copyWith(
                      fontWeight: FontWeight.bold, color: Colors.white),
                ),
                Container(
                  padding: EdgeInsets.symmetric(
                      horizontal: spacing / 2, vertical: spacing / 4),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(borderRadius),
                      color: Colors.white),
                  child: Text(
                    "Select",
                    style: Theme.of(context).textTheme.bodyText2,
                  ),
                )
              ],
            ),
            SvgPicture.asset(
              vehicle.icon,
              height: 100,
            )
          ],
        ),
      ),
    );
  }
}
