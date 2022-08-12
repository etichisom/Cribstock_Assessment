import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:wallet_ui/constant.dart';

class AppBackground extends StatelessWidget {
  final Widget child;
  const AppBackground({
    required this.child,
    Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
         SizedBox(
            height: size.height,
            width: size.width,
          ),
          Container(
            height: size.height*0.27,
            width: size.width,
            decoration:const BoxDecoration(
              color: AppColor.primaryColor,
              borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(13),
                bottomLeft: Radius.circular(13)
              )
            ),
          ),
          child
        ],
      ),
    );
  }
}
