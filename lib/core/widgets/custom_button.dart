import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    Key? key,
    required this.text,
    this.fontSize,
    required this.textColor,
    required this.backgroundColor,
    required this.borderRadius,
  }) : super(key: key);

  final String text;
  final double? fontSize;
  final Color textColor;
  final Color backgroundColor;
  final BorderRadius borderRadius;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 48,
      child: TextButton(
          onPressed: () {},
          style: TextButton.styleFrom(
              backgroundColor: backgroundColor,
              shape: RoundedRectangleBorder(
                borderRadius: borderRadius,
              )),
          child: Text(
            text,
            style: Styles.titleStyle18.copyWith(
                color: textColor,
                fontSize: fontSize,
                fontWeight: FontWeight.bold),
          )),
    );
  }
}
