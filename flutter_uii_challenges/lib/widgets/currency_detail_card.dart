import 'package:flutter/material.dart';
import 'package:flutter_uii_challenges/core/theme/color.theme.dart';
import 'package:flutter_uii_challenges/core/theme/layout.theme.dart';
import 'package:flutter_uii_challenges/model/currency_model.dart';
import 'package:flutter_uii_challenges/widgets/icon_holder.dart';

class CurrencyDetailCard extends StatelessWidget {
  final CurrencyModel currencyModel;

  const CurrencyDetailCard({
    Key key,
    @required this.currencyModel,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width * 1 - defaultMargin,
      height: size.width * 0.55,
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(defaultBorderRadius)),
        ),
        clipBehavior: Clip.hardEdge,
        child: Container(
          padding: const EdgeInsets.all(defaultMargin),
          color: Colors.white,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Row(
                children: [
                  IconHolder(
                      icon: currencyModel.icon,
                      backgroundIcon: currencyModel.backgroundColor),
                  SizedBox(
                    width: defaultMargin,
                  ),
                  Text(currencyModel.name.toString(),
                      style: TextStyle(fontWeight: FontWeight.bold)),
                  Spacer(),
                  Text(currencyModel.symbol,
                      style: TextStyle(color: iconColor)),
                ],
              ),
              SizedBox(
                height: defaultMargin / 2,
              ),
              Row(
                children: [
                  Text(
                    "\$" + currencyModel.totalAmount.toString(),
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
                      "+ ${currencyModel.percentAmount}%",
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
                "${currencyModel.totalCurrencyAmount.toString()} ${currencyModel.symbol}",
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
