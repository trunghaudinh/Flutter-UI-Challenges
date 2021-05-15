import 'package:flutter/material.dart';
import 'package:flutter_uii_challenges/core/theme/color.theme.dart';
import 'package:flutter_uii_challenges/core/theme/layout.theme.dart';
import 'package:flutter_uii_challenges/model/currency_model.dart';
import 'package:flutter_uii_challenges/screens/main/compoments/wallet_card_list.dart';
import 'package:flutter_uii_challenges/widgets/currency_card.dart';
import 'package:get/get.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key key}) : super(key: key);

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text('Wallets', style: Theme.of(context).textTheme.headline6),
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.menu),
          color: iconColor,
          onPressed: () {
            Get.snackbar("hi", "Click Menu");
          },
        ),
        actions: [
          IconButton(
              icon: Icon(Icons.account_balance_wallet_rounded),
              color: iconColor,
              onPressed: () {
                Get.snackbar("hi", "Click Menu Right");
              })
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          WalletCardList(),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: defaultMargin),
            child: Row(
              children: [
                Text(
                  "Sort by higher %",
                  style: Theme.of(context)
                      .textTheme
                      .bodyText2
                      .copyWith(color: iconColor),
                ),
                Spacer(),
                Text("24H",style: Theme.of(context).textTheme.bodyText2.copyWith(color: iconColor),),
                Icon(Icons.keyboard_arrow_down,color: iconColor,)
              ],
            ),
          ),
          Expanded(child: ListView.separated(
            itemBuilder: (context,index) => CurrencyCard(data: CurrencyModel.demoCurrnecyData[index]),
            separatorBuilder: (context,index) => SizedBox(height: defaultMargin / 2,),
            itemCount: CurrencyModel.demoCurrnecyData.length,
          ))
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        currentIndex: _currentIndex,
        type: BottomNavigationBarType.fixed,
        selectedIconTheme: IconThemeData(color: Color(0xFF4C5867)),
        unselectedIconTheme: IconThemeData(color: iconColor),
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedLabelStyle: TextStyle(color: Color(0xFF4C5867)),
        unselectedLabelStyle: TextStyle(color: iconColor),
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.account_balance_wallet_rounded),
              label: "Wallet"),
          BottomNavigationBarItem(
              icon: Icon(Icons.explore_rounded), label: "Explore"),
          BottomNavigationBarItem(
              icon: Icon(Icons.notifications_rounded), label: "Notification"),
          BottomNavigationBarItem(
              icon: Icon(Icons.settings_rounded), label: "Settings"),
        ],
      ),
    );
  }
}
