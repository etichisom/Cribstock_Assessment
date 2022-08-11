import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:wallet_ui/constant.dart';
import 'package:wallet_ui/reuseable/text.dart';

class Wallet extends StatelessWidget {
  const Wallet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20,right: 20),
      child: Container(
        width: double.maxFinite,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.15),
                spreadRadius: 3,
                blurRadius: 3,
                offset: const Offset(0, 2), // changes position of shadow
              ),
            ]
        ),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
             // const SizedBox(height: 10,),
              Row(
                children: [
                  Column(
                    children: const [
                         TechText("Avaliable Balance",color: Colors.grey,size: 14,),
                      SizedBox(height: 15,),
                      TechText("\$16,485",fontWeight: FontWeight.w500,size: 40,),
                    ],
                  ),
                  const Spacer(),
                   Container(
                     height: 45,
                     width: 45,
                     decoration: const BoxDecoration(
                       shape: BoxShape.circle,
                       image: DecorationImage(
                         fit: BoxFit.cover,
                         image: AssetImage("assest/usa.png")
                       )
                     ),
                   )
                ],
              ),
              const SizedBox(height: 29,),
              Row(
                children: [
                  GestureDetector(
                    onTap: (){},
                    child: Row(
                      children:  [
                        const TechText("See More",fontWeight: FontWeight.w600,size: 13,color: Colors.grey,),
                       const SizedBox(width: 5,),
                        CircleAvatar(
                          radius: 10,
                          backgroundColor: AppColor.primaryColor.withOpacity(0.3),
                          child:const Icon(Icons.arrow_forward_ios_rounded,color: AppColor.primaryColor,size: 12,),
                        )
                      ],
                    ),
                  ),
                  const Spacer(),
                  GestureDetector(
                    onTap: (){},
                    child: Row(
                      children: const [
                        TechText("Us Dollar",fontWeight: FontWeight.w600,size: 14,color: AppColor.primaryColor,),
                        Icon(Icons.keyboard_arrow_down,color: AppColor.primaryColor)
                      ],
                    ),
                  ),
                ],
              ),
             // const SizedBox(height: 10,),
            ],
          ),
        ),
      ),
    );
  }
}
