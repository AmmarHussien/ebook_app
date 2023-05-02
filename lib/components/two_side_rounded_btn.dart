import 'package:flutter/material.dart';

import '../constant.dart';

class TwoSideRoundedButton extends StatelessWidget {
  const TwoSideRoundedButton({
    super.key,
    required this.text,
    this.radious = 30,
    required this.press,
  });

  final String text;
  final double radious;
  final Function press;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        press();
      },
      child: Container(
        alignment: Alignment.center,
        padding: const EdgeInsets.symmetric(vertical: 10),
        decoration: BoxDecoration(
          color: kBlackColor,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(
              radious,
            ),
            bottomRight: Radius.circular(
              radious,
            ),
          ),
        ),
        child: Text(
          text,
          style: const TextStyle(
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
