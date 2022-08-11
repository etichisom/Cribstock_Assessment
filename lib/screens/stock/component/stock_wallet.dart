import 'package:flutter/material.dart';
import 'package:wallet_ui/constant.dart';
import 'package:wallet_ui/reuseable/text.dart';

class StockWallet extends StatelessWidget {
  const StockWallet({Key? key}) : super(key: key);

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
                spreadRadius: 1,
                blurRadius: 1,
                offset: const Offset(0, 1), // changes position of shadow
              ),
            ]
        ),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  const TechText("\$5,240",fontWeight: FontWeight.w500,size: 40,),
                 const Icon(Icons.keyboard_arrow_down_sharp),
                  const Spacer(),
                  Container(
                    height: 45,
                    width: 45,
                    decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.purple,
                        // image: DecorationImage(
                        //     fit: BoxFit.cover,
                        //     image: AssetImage("assest/usa.png")
                        // )
                    ),
                  )
                ],
              ),
              const SizedBox(height: 5,),
              Row(
                children:const [
                  TechText("+\$190.25",fontWeight: FontWeight.w500,size:13,color: Colors.grey,),
                  SizedBox(width: 10,),
                  Icon(Icons.arrow_drop_up_outlined,color: AppColor.primaryColor,),
                  TechText("3.04%",fontWeight: FontWeight.w600,size:13,color: AppColor.primaryColor,),
                ],
              ),
              const SizedBox(height: 29,),
              Row(
                //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  iconButton(
                      onTap:(){},
                      icon:Icons.add,
                      color:Colors.blue,
                      title:"Add money"
                  ),
                  const Spacer(),
                  iconButton(
                      onTap:(){},
                      icon:Icons.bar_chart_rounded,
                      color:Colors.orange,
                      title:"Invest"
                  ),
                  const Spacer(),
                  iconButton(
                      onTap:(){},
                      icon:Icons.more_horiz_outlined,
                      color:Colors.blueGrey,
                      title:"More"
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }


  Widget  iconButton({required  Function() onTap, required IconData icon, required MaterialColor color, required String title}) {
    return Column(
      children: [
        Container(
          width: 80,
          height: 60,
          decoration: BoxDecoration(
            color: color.withOpacity(0.12),
            borderRadius: BorderRadius.circular(25),
          ),
          child: Icon(icon,color: color,size: 35,),
        ),
        const SizedBox(height: 15,),
        TechText(title,fontWeight: FontWeight.w600,size: 12,),
      ],
    );
  }
}
