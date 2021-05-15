import 'package:flutter/material.dart';
import 'package:flutter_uii_challenges/core/theme/layout.theme.dart';
import 'package:flutter_uii_challenges/model/currency_model.dart';
import 'package:flutter_uii_challenges/screens/detail/detail_screen.dart';
import 'package:flutter_uii_challenges/widgets/icon_holder.dart';
import 'package:get/get.dart';

class CurrencyCard extends StatelessWidget {
  final CurrencyModel data;

  const CurrencyCard({
    Key key,
    @required this.data,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(defaultBorderRadius)),
        ),
        // clipBehavior: Clip.hardEdge,
        margin: EdgeInsets.symmetric(horizontal: defaultMargin),
        child: ListTile(
          onTap: () {
            Get.to(() => DetailScreen(),arguments: data);
          },
          contentPadding: const EdgeInsets.symmetric(
              vertical: defaultMargin / 2, horizontal: defaultMargin),
          leading: IconHolder(
            icon: data.icon,
            backgroundIcon: data.backgroundColor,
          ),
          title: Row(
            children: [
              Text(
                "${data.totalCurrencyAmount.toString()} ${data.symbol}",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Spacer(),
              Text(
                "\$${data.totalAmount.toString()}",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ],
          ),
          subtitle: Row(
            children: [
              Text(
                "\$ ${data.percentAmount.toString()}",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Spacer(),
              Text(
                "+${data.percent.toString()}%",
                style:
                    TextStyle(fontWeight: FontWeight.bold, color: Colors.green),
              ),
            ],
          ),
        ));
  }
}
