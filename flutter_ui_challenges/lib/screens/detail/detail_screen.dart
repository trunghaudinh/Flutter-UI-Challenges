import 'package:flutter/material.dart';
import 'package:flutter_uii_challenges/core/theme/color.theme.dart';
import 'package:flutter_uii_challenges/core/theme/layout.theme.dart';
import 'package:flutter_uii_challenges/model/currency_model.dart';
import 'package:flutter_uii_challenges/screens/detail/compoment/date_list.dart';
import 'package:flutter_uii_challenges/screens/main/compoments/char_detail.dart';
import 'package:flutter_uii_challenges/widgets/currency_detail_card.dart';
import 'package:flutter_uii_challenges/widgets/func_coin.dart';
import 'package:get/get.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    CurrencyModel _currencyModel = Get.arguments;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          _currencyModel.name.toUpperCase() + " Wallet",
          style: Theme.of(context).textTheme.headline6,
        ),
        centerTitle: true,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: iconColor,
          ),
          onPressed: () {
            Get.back();
          },
        ),
        actions: [
          IconButton(
              icon: Icon(
                Icons.more_vert,
                color: iconColor,
              ),
              onPressed: () {
                Get.snackbar("hi", "Nore");
              })
        ],
      ),
      body: Container(
        padding: EdgeInsets.all(defaultMargin),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            CurrencyDetailCard(currencyModel: _currencyModel),
            SizedBox(
              height: defaultMargin,
            ),
            DateList(),
            SizedBox(height: defaultMargin),
            Expanded(flex: 2, child: ChartDetail()),
            SizedBox(
              height: defaultMargin / 2,
            ),
            Expanded(
              flex: 1,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CoinFunctions(
                      label: 'Buy ${_currencyModel.name}',
                      isBuyCoin: true,
                      onTap: () {
                        Get.snackbar(
                            "Wallet", "Buy 1000 ${_currencyModel.name}");
                      }),
                  CoinFunctions(
                      label: 'Sell ${_currencyModel.name}',
                      isBuyCoin: false,
                      onTap: () {
                        Get.snackbar(
                            "Wallet", "Sell 1000 ${_currencyModel.name}");
                      })
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
