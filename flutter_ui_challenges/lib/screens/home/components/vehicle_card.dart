import 'package:flutter/material.dart';
import 'package:flutter_uii_challenges/models/vehicle.dart';

class VehicleCard extends StatelessWidget {
  final Vehicle vehicle;

  const VehicleCard({
    Key key,
    this.vehicle
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadiusGeometry()
      ),
    );
  }
}
