import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final Function() onTap;
  final String title;
  final double fontSize;
  final Color? color;
  final FontWeight? fontWeight;
  const Button(
      {super.key,
      required this.onTap,
      required this.title,
      required this.fontSize,
      this.color,
      this.fontWeight});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: TextButton.styleFrom(
            minimumSize: const Size(150, 55),
            // fixedSize: const Size(150, 55),
            elevation: 3,
            backgroundColor: Colors.yellowAccent),
        // style: ButtonStyle(maximumSize: Size.zero),
        onPressed: onTap,
        child: Text(
          title,
          style: TextStyle(fontSize: fontSize),
        ));
  }
}
