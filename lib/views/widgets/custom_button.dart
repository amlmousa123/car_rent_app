import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(
      {super.key,
      required this.text,
      required this.width,
      required this.height,
      required this.onPressed,
      required this.backgroundColor,
      required this.borderRadius,
      required this.fontSize,
      required this.textColor,
      required this.fontWeight});

  final String text;
  final double width;
  final double height;
  final void Function() onPressed;
  final Color backgroundColor;
  final double borderRadius;
  final double fontSize;
  final Color textColor;
  final FontWeight fontWeight;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
          backgroundColor: backgroundColor,
          minimumSize: Size(width, height),
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(borderRadius))),
      child: Text(
        text,
        style: TextStyle(
            fontSize: fontSize, color: textColor, fontWeight: fontWeight),
      ),
    );
  }
}
