import 'package:flutter/material.dart';


class TechText extends StatelessWidget {
  final String text;
  final double size;
  final FontWeight fontWeight;
  final TextAlign textAlign;
  final Color color;

  const TechText(
      this.text,{
        this.size=12,
        this.fontWeight=FontWeight.normal,
        this.color=Colors.black,
        this.textAlign=TextAlign.start,
        Key? key
      }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(text,
      textAlign: textAlign,
      style: TextStyle(
        color: color,
        fontSize: size,
        fontWeight: fontWeight,
      ),);
  }
}
