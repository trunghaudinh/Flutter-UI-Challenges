import 'package:flutter/material.dart';
import 'package:flutter_uii_challenges/constants/layout.dart';
import 'package:get/get.dart';

class BannerHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: Get.height * 0.15,
      child: Card(
        elevation: 8,
        shape: RoundedRectangleBorder(
            borderRadius:
            BorderRadius.all(Radius.circular(borderRadius))),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: spacing),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Balance",
                    style: Theme.of(context)
                        .textTheme
                        .bodyText1
                        .copyWith(fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "\$ 20 ",
                    style: Theme.of(context).textTheme.headline6.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
                  )
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Rewards",
                    style: Theme.of(context)
                        .textTheme
                        .bodyText1
                        .copyWith(fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "\$ 14.2 ",
                    style: Theme.of(context).textTheme.headline6.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
                  )
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Total Trips",
                    style: Theme.of(context)
                        .textTheme
                        .bodyText1
                        .copyWith(fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "\$ 230 ",
                    style: Theme.of(context).textTheme.headline6.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
