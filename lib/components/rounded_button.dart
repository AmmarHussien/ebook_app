import 'package:flutter/material.dart';

import '../constant.dart';

class RoundedButton extends StatelessWidget {
  const RoundedButton({
    super.key,
    required this.text,
    required this.press,
    this.verticalPadding = 16,
    this.horizontalPadding = 30,
    this.fontSize = 16,
  });

  final String text;
  final Function press;

  final double verticalPadding, horizontalPadding;
  final double fontSize;

  @override
  Widget build(BuildContext context) {
    return Material(
      child: GestureDetector(
        onTap: () {
          press();
        },
        child: Container(
          alignment: Alignment.center,
          margin: const EdgeInsets.symmetric(
            vertical: 16,
          ),
          padding: EdgeInsets.symmetric(
            vertical: verticalPadding,
            horizontal: horizontalPadding,
          ),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(30),
            boxShadow: [
              kBoxShadowWelcomPage,
            ],
          ),
          child: Text(
            text,
            style: TextStyle(
              fontSize: fontSize,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
