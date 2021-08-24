import 'package:flutter/material.dart';
import 'package:flutter_uii_challenges/screens/components/clock.dart';
import 'package:flutter_uii_challenges/screens/components/country_card.dart';
import 'package:flutter_uii_challenges/screens/components/time_hour_and_minutes.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<CountryCard> list = List.empty(growable: true);
    list.add(CountryCard(
        country: "HaNoi",
        timeZone: "+3HRS | EST",
        iconSrc: "assets/icons/Liberty.svg",
        time: "9:20",
        period: "PM"));
    list.add(CountryCard(
        country: "HaNoi",
        timeZone: "+7HRS | EST",
        iconSrc: "assets/icons/Liberty.svg",
        time: "9:20",
        period: "PM"));
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Column(
          children: [
            Text(
              "Newport Beach, USA | PST",
              style: Theme.of(context).textTheme.bodyText1,
            ),
            TimeHourAndMinutes(),
            Spacer(),
            Clock(),
            Spacer(),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  CountryCard(
                      country: "HaNoi, VietNam",
                      timeZone: "+3HRS | EST",
                      iconSrc: "assets/icons/Liberty.svg",
                      time: "9:20",
                      period: "PM"),
                  CountryCard(
                      country: "HoCHiMinh, VietNam",
                      timeZone: "+7HRS | EST",
                      iconSrc: "assets/icons/Sydney.svg",
                      time: "1:20",
                      period: "AM")
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
