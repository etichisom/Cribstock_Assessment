import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:wallet_ui/constant.dart';
import 'package:wallet_ui/screens/stock/stock.dart';

import 'home/home.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({Key? key}) : super(key: key);

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  int currentIndex =0;
  List<Widget> body= [
   const Home(),
    const SizedBox(),
    const Stocks(),
    const SizedBox(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: body[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: AppColor.primaryColor,
        unselectedItemColor: AppColor.grey,
        type: BottomNavigationBarType.fixed,
        onTap: (index){
          setState(() {
            currentIndex=index;
          });
        },
        currentIndex:currentIndex ,
          items: const[
            BottomNavigationBarItem(icon: Icon(FontAwesomeIcons.home),label: "Home"),
            BottomNavigationBarItem(icon: Icon(CupertinoIcons.chart_pie_fill),label: "Report"),
            BottomNavigationBarItem(icon: Icon(FontAwesomeIcons.exchange),label: "Stock"),
            BottomNavigationBarItem(icon: Icon(CupertinoIcons.creditcard_fill),label: "Cards")
          ]
      ),
    );
  }
}
