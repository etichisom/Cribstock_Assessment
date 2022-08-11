import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:wallet_ui/reuseable/profile_pic.dart';
import 'package:wallet_ui/screens/stock/component/investments.dart';
import 'package:wallet_ui/screens/stock/component/stock_wallet.dart';

class Stocks extends StatelessWidget {
  const Stocks({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        iconTheme: const IconThemeData(color: Colors.black),
        leading: const ProfilePic(),
        actions: [
          IconButton(onPressed: (){

          },
              icon: const Icon(Icons.star_border_outlined))
          ,
          IconButton(onPressed: (){

          },
              icon: const Icon(Icons.notifications_outlined))
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            SizedBox(height: 20,),
            StockWallet(),
            SizedBox(height: 30,),
            Investments()
          ],
        ),
      ),
    );
  }
}
