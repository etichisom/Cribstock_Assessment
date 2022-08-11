import 'package:flutter/material.dart';

class InvestmentModel{
  final String title,data, amount,percent;
  final String image;
  final bool up ;


  InvestmentModel({
    required this.title,
    required this.data,
    required this.amount,
    required  this.image,
    required this.percent,
    required this.up
  });
}

List<InvestmentModel> kInvestmentList =[
  InvestmentModel(
      title: "Apple",
      data: "3 Shares.\$280.90",
      amount: "\$1404",
      image: "assest/netflix.svg",
      percent: "1.20%",
      up: true
  ),
  InvestmentModel(
      title: "Paypal",
      data: "2 Shares.\$170.90",
      amount: "\$3404",
      image: "assest/paypal.svg",
      percent: "3.20%",
      up: false
  ),
  InvestmentModel(
      title: "Paypal",
      data: "2 Shares.\$170.90",
      amount: "\$3404",
      image: "assest/paypal.svg",
      percent: "3.20%",
      up: false
  ),

];