import 'package:flutter/material.dart';
import 'package:flutter_uii_challenges/widgets/icon_holder.dart';
import 'package:flutter_uii_challenges/widgets/wallet_card.dart';

class WalletCardList extends StatelessWidget {
  const WalletCardList({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    PageController _pageController = new PageController(initialPage: 0);

    return Container(
      width: double.infinity,
      height: size.width * 0.65,
      child: PageView(
        scrollDirection: Axis.horizontal,
        controller: _pageController,
        children: [
          WalletCard(
            title: "Total Bitcoin",
            iconHolder: IconHolder(
                icon: Icons.account_balance_wallet_rounded,
                backgroundIcon: Color(0xFF4C5867)),
            percentChange: '+15.5%',
            totalMoney: "104.000\$",
            countBit: '15.44 BTC',
          ),
          WalletCard(
            title: "Total Ethereum",
            iconHolder: IconHolder(
                icon: Icons.account_balance_wallet_rounded,
                backgroundIcon: Colors.blue),
            percentChange: '+10.5%',
            totalMoney: "54.900\$",
            countBit: '150.89 BTC',
          ),
          WalletCard(
            title: "Total DogeCoin",
            iconHolder: IconHolder(
                icon: Icons.account_balance_wallet_rounded,
                backgroundIcon: Colors.yellow),
            percentChange: '+5.5%',
            totalMoney: "10.900\$",
            countBit: '120.89 BTC',
          ),
          WalletCard(
            title: "Total SHIBA INU",
            iconHolder: IconHolder(
                icon: Icons.account_balance_wallet_rounded,
                backgroundIcon: Colors.redAccent),
            percentChange: '+1.5%',
            totalMoney: "100.900\$",
            countBit: '20.89 BTC',
          ),
        ],
      ),
    );
  }
}
