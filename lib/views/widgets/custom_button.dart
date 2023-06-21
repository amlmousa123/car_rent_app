import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.text,
    required this.width,
    required this.height,
    required this.onPressed,
    required this.backgroundColor,
    required this.borderRadius,
    required this.textStyle,
  });

  final String text;
  final double width;
  final double height;
  final void Function() onPressed;
  final Color backgroundColor;
  final double borderRadius;
  final TextStyle textStyle;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
          backgroundColor: backgroundColor,
          minimumSize: Size(width, height),
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(borderRadius))),
      child: Text(text, style: textStyle),
    );
  }
}
