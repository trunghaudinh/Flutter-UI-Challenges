import 'package:flutter/material.dart';
import 'package:flutter_uii_challenges/core/theme/color.theme.dart';
import 'package:flutter_uii_challenges/core/theme/layout.theme.dart';
import 'package:flutter_uii_challenges/widgets/icon_holder.dart';

class WalletCard extends StatelessWidget {
  final String title;
  final IconHolder iconHolder;
  final String totalMoney;
  final String countBit;
  final String percentChange;

  const WalletCard(
      {Key key,
      @required this.title,
      @required this.iconHolder,
      @required this.totalMoney,
      @required this.countBit,
      @required this.percentChange})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width * 1 - defaultMargin,
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(defaultBorderRadius)),
        ),
        clipBehavior: Clip.hardEdge,
        margin: EdgeInsets.all(defaultMargin),
        child: Container(
          padding: const EdgeInsets.all(defaultMargin),
          color: Colors.white,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Row(
                children: [
                  iconHolder,
                  SizedBox(
                    width: defaultMargin,
                  ),
                  Text(title, style: TextStyle(fontWeight: FontWeight.bold)),
                  Spacer(),
                  Text("USD", style: TextStyle(color: iconColor)),
                  Icon(
                    Icons.keyboard_arrow_down_rounded,
                    color: iconColor,
                  )
                ],
              ),
              SizedBox(
                height: defaultMargin / 2,
              ),
              Row(
                children: [
                  Text(
                    totalMoney,
                    style: Theme.of(context).textTheme.headline4.copyWith(
                        color: Color(0xFF4C5867), fontWeight: FontWeight.bold),
                  ),
                  Spacer(),
                  Container(
                    padding: EdgeInsets.all(defaultMargin / 2),
                    decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.all(
                          Radius.circular(defaultBorderRadius)),
                    ),
                    child: Text(
                      percentChange,
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: defaultMargin / 2,
              ),
              Text(
                countBit,
                style: Theme.of(context)
                    .textTheme
                    .headline6
                    .copyWith(color: iconColor),
              ),
              Spacer(),
              Icon(Icons.keyboard_arrow_down_rounded)
            ],
          ),
        ),
      ),
    );
  }
}
