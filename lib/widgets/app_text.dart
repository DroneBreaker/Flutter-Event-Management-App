import 'package:flutter/material.dart';

class AppText extends StatelessWidget {
  final String title;
  final FontWeight? fontWeight;
  final Color? color;
  final double fontSize;
  const AppText(
      {super.key,
      required this.title,
      this.fontWeight,
      this.color,
      required this.fontSize});

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style:
          TextStyle(fontWeight: fontWeight, fontSize: fontSize, color: color),
    );
  }
}
