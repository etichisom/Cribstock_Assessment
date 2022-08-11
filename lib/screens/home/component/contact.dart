import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_avataaar/flutter_avataaar.dart';
import 'package:wallet_ui/constant.dart';
import 'package:wallet_ui/reuseable/text.dart';

class Contact extends StatelessWidget {
   Contact({Key? key}) : super(key: key);
 final list = ["Anne","Kate","Edward","Phillip","Edward"];
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics:const BouncingScrollPhysics(),
      scrollDirection: Axis.horizontal,
      child: Row(
        children:[
          const  SizedBox(width: 20,),
         Column(
           children:const [
              CircleAvatar(
                radius: 25,
                child: Icon(Icons.search,color: Colors.white,),
              ),
             SizedBox(height:10,),
             //TechText(""),
           ],
         ),
         const  SizedBox(width: 10,),
          Container(
            height: 50,
            width:2,
            color: AppColor.primaryColor.withOpacity(0.3),
          ),
          Row(
            children: list.map((e){
              return Padding(
                padding: const EdgeInsets.only(left: 10,right: 10),
                child: Column(
                  children: [
                    CircleAvatar(
                      backgroundColor: Colors.transparent,
                      radius: 25,
                     child: AvataaarPicture.builder(
                       avatar: Avataaar.random(),
                     )
                    ),
                    const SizedBox(height: 10,),
                    TechText(e,fontWeight: FontWeight.w500,),
                  ],
                ),
              );
            }).toList(),
          )

        ],
      ),
    );
  }
}

