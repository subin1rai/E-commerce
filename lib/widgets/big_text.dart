import 'package:flutter/material.dart';

//creating method of text to use again and again

class BigText extends StatelessWidget {
Color? color;
  final String text;
  double size;
  TextOverflow overFlow;

  BigText({
    super.key,
    required this.text,
    this.color = const Color(0xFF332d2),
    this.overFlow = TextOverflow.ellipsis,
    this.size = 20,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(fontSize: size, color: color,fontWeight: FontWeight.w400),
      overflow: overFlow,
      maxLines: 1,
    );
  }
}
