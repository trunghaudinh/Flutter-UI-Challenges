import 'package:flutter/material.dart';
import 'package:flutter_uii_challenges/models/vehicle.dart';
import 'package:flutter_uii_challenges/screens/base_layout.dart';
import 'package:get/get.dart';

class TicketScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Vehicle vehicle = Get.arguments;
    return BaseLayout(
      backgroundColor: vehicle.color,
      headerWidget: Text(vehicle.name),
      bodyWidget: Text(vehicle.name),
    );
  }
}
