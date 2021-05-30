import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_uii_challenges/constants/layout.dart';
import 'package:flutter_uii_challenges/models/vehicle.dart';
import 'package:flutter_uii_challenges/screens/base_layout.dart';
import 'package:flutter_uii_challenges/screens/ticket/ticket_screen.dart';
import 'package:flutter_uii_challenges/screens/vehicle/components/banner_address.dart';
import 'package:flutter_uii_challenges/screens/vehicle/components/banner_vehicle.dart';
import 'package:get/get.dart';

class VehicleScreen extends StatelessWidget {
  const VehicleScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Vehicle vehicle = Get.arguments;
    return BaseLayout(
      backgroundColor: vehicle.color,
      headerWidget: Container(
        width: Get.width,
        child: BannerVehicle(
          vehicle: vehicle,
        ),
      ),
      bodyWidget: VehicleBody(
        vehicle: vehicle,
      ),
    );
  }
}

class VehicleBody extends StatelessWidget {
  final Vehicle vehicle;

  const VehicleBody({Key key, this.vehicle}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(spacing),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            BannerAddress(
              color: vehicle.color,
            ),
            SizedBox(
              height: spacing,
            ),
            Text(
              "Choose your Transport",
              style: Theme.of(context)
                  .textTheme
                  .headline5
                  .copyWith(fontWeight: FontWeight.bold),
            ),
            ListView.separated(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemBuilder: (context, index) => ListTile(
                  onTap: (){
                    Get.to(TicketScreen(),arguments: vehicle);
                  },
                      title: Row(
                        children: [
                          Icon(
                            Icons.access_time_outlined,
                            size: 16,
                          ),
                          SizedBox(width: spacing),
                          Text(
                            "10:00",
                            style: Theme.of(context)
                                .textTheme
                                .bodyText1
                                .copyWith(fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            width: spacing,
                          ),
                          Icon(Icons.transfer_within_a_station),
                          SizedBox(
                            width: spacing,
                          ),
                          Text(
                            "10:00",
                            style: Theme.of(context)
                                .textTheme
                                .bodyText1
                                .copyWith(fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                      subtitle: Row(
                        children: [
                          Icon(
                            Icons.location_on_outlined,
                            size: 16,
                          ),
                          SizedBox(
                            width: spacing,
                          ),
                          Text("Lorem Train Station",
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyText1
                                  .copyWith(fontWeight: FontWeight.bold))
                        ],
                      ),
                      trailing: Column(
                        children: [
                          Text(
                            "\$ 5.0",
                            style: Theme.of(context)
                                .textTheme
                                .bodyText1
                                .copyWith(fontWeight: FontWeight.bold),
                          ),
                          Container(
                            padding: EdgeInsets.all(spacing / 4),
                            decoration: BoxDecoration(
                                color: vehicle.color,
                                borderRadius: BorderRadius.circular(spacing)),
                            child: Text(
                              "Select",
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyText1
                                  .copyWith(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white),
                            ),
                          )
                        ],
                      ),
                    ),
                separatorBuilder: (context, index) => Divider(
                      thickness: 2,
                      color: Colors.grey,
                    ),
                itemCount: 3)
          ],
        ),
      ),
    );
  }
}
