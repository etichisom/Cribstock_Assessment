import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:wallet_ui/reuseable/background.dart';
import 'package:wallet_ui/reuseable/profile_pic.dart';
import 'package:wallet_ui/screens/home/component/contact.dart';
import 'package:wallet_ui/screens/home/component/transaction.dart';
import 'package:wallet_ui/screens/home/component/wallet.dart';

import 'component/txn.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBackground(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: const ProfilePic(),
          actions: [
            IconButton(onPressed: (){

             },
                icon: const Icon(CupertinoIcons.search))
           ,
            IconButton(onPressed: (){

            },
                icon: const Icon(Icons.notifications_outlined))

          ],
        ),
        body: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 25,),
              const  Wallet(),
              const   SizedBox(height: 25,),
              Contact(),
              const SizedBox(height: 5,),
              const Transaction(),
              const TransactionList()
            ],
          ),
        ),
      ),
    );
  }
}
