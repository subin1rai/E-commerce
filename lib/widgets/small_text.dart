import 'package:flutter/material.dart';

class SmallText extends StatelessWidget {
  Color? col;
  final String text;
  double size;
  double height;

  SmallText({
    super.key,
    required this.text,
    this.height = 1.2,
    this.col = const Color(0xFF332d2),
    this.size = 12,
  });
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(fontSize: size, color: Colors.grey[500],height: height),
      
    );
  }
}
