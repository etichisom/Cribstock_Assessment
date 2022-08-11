import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:wallet_ui/reuseable/text.dart';

class Transaction extends StatelessWidget {
  const Transaction({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15)
        ),
        child: Padding(
          padding: const EdgeInsets.only(bottom: 25,top: 25,left: 25,right: 25),
          child: Row(
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
                  icon:Icons.compare_arrows_outlined,
                  color:Colors.orange,
                  title:"Send money"
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
