import 'package:flutter/material.dart';
import 'package:wallet_ui/constant.dart';
import 'package:wallet_ui/model/transaction_model.dart';
import 'package:wallet_ui/reuseable/text.dart';

class TransactionList extends StatelessWidget {
  const TransactionList({Key? key}) : super(key: key);

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
              TechText("Transaction",fontWeight: FontWeight.w700,size:18,),
              TechText("See all",fontWeight: FontWeight.w700,size: 15,color: AppColor.primaryColor,)
            ],
          ),
         const SizedBox(height: 15,),
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(15),
            ),
            child: ListView.builder(
              itemCount:kTxnList.length,
                shrinkWrap: true,
                primary: false,
                itemBuilder: (context,index){
                 var data = kTxnList[index];
                  return  Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: ListTile(
                      leading: Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                         color: data.color.withOpacity(0.15),
                        ),
                        child: Icon(data.iconData,color: data.color,),
                      ),
                      trailing:TechText(data.amount,fontWeight: FontWeight.w700,size: 15,) ,
                      subtitle: TechText(data.date,fontWeight: FontWeight.w700,size: 13,color: Colors.grey,) ,
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
