import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:wallet_ui/constant.dart';
import 'package:wallet_ui/model/investment_model.dart';
import 'package:wallet_ui/model/transaction_model.dart';
import 'package:wallet_ui/reuseable/text.dart';

class Investments extends StatelessWidget {
  const Investments({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20,right: 20,top: 10),
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const[
              TechText("Investments",fontWeight: FontWeight.w700,size:18,),
            ],
          ),
          const SizedBox(height: 15,),
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(15),
            ),
            child: ListView.builder(
                itemCount:kInvestmentList.length,
                shrinkWrap: true,
                primary: false,
                itemBuilder: (context,index){
                  var data = kInvestmentList[index];
                  return  Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: ListTile(
                      leading: SizedBox(
                        width: 50,
                        child: SvgPicture.asset(
                          data.image,),
                      ),
                      horizontalTitleGap: 5,
                      trailing:SizedBox(
                        width: 100,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            TechText(data.amount,fontWeight: FontWeight.w700,size: 15,),
                            const SizedBox(height: 5,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Icon(
                                  data.up?Icons.arrow_drop_up_outlined:Icons.arrow_drop_down_sharp,
                                  color:data.up==false?Colors.red:AppColor.primaryColor,),
                                TechText("3.04%",fontWeight: FontWeight.w600,
                                  size:13,color:data.up==false?Colors.red:AppColor.primaryColor,),
                              ],
                            )
                          ],
                        ),
                      ) ,
                      subtitle: TechText(data.data,fontWeight: FontWeight.w700,size: 13,color: Colors.grey,) ,
                      title: TechText(data.title,fontWeight: FontWeight.w700,size: 16,),
                    ),
                  );
                }
            ),
          ),
        ],
      ),
    );
  }
}
