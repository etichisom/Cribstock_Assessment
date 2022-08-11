import 'package:flutter/material.dart';

class TransactionModel{
  final String title,date, amount;
  final Color color;
  final IconData iconData;

  TransactionModel({
    required this.title,
    required this.date,
    required this.amount,
    required  this.iconData,
    required this.color
  });
}

List<TransactionModel> kTxnList =[
  TransactionModel(
      title: "Food",
      date: "14 April 2019",
      amount: "\$450",
      iconData: Icons.no_food_outlined,
      color: Colors.orange
  ),
  TransactionModel(
      title: "Drug",
      date: "14 April 2019",
      amount: "\$29",
      iconData: Icons.medication_liquid_sharp,
      color: Colors.green
  ),

];