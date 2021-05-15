import 'package:flutter/material.dart';
import 'package:flutter_uii_challenges/core/theme/layout.theme.dart';
import 'package:flutter_uii_challenges/widgets/icon_holder.dart';

class CoinFunctions extends StatelessWidget {
  final String label;
  final bool isBuyCoin;
  final Function onTap;

  const CoinFunctions({
    Key key,
    @required this.label,
    @required this.isBuyCoin,
    @required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(defaultBorderRadius)),
        ),
        child: Container(
          padding: EdgeInsets.symmetric(
              vertical: defaultMargin / 2, horizontal: defaultMargin * 2),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconHolder(
                  icon: Icons.attach_money_rounded,
                  backgroundIcon: isBuyCoin ? Colors.blue : Colors.pinkAccent),
              SizedBox(height: defaultMargin / 2),
              Text(label)
            ],
          ),
        ),
      ),
    );
  }
}
