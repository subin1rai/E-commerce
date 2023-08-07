import 'package:e_commerce/widgets/small_text.dart';
import 'package:flutter/material.dart';

class IconandText extends StatelessWidget {
  final IconData icon;
  final String text;
  final Color iconColor;
  const IconandText(
      {super.key,
      required this.icon,
      required this.text,
      required this.iconColor});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(icon,color: iconColor,),
        SizedBox(width: 5,),
        SmallText(text: text,),
      ],
    );
  }
}
