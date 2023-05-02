import 'package:flutter/material.dart';

import '../../constant.dart';

class ChapterCard extends StatelessWidget {
  const ChapterCard({
    super.key,
    required this.name,
    required this.tag,
    required this.chapterNumber,
    required this.press,
  });

  final String name, tag;
  final int chapterNumber;
  final Function press;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: const EdgeInsets.only(
        bottom: 16,
      ),
      padding: const EdgeInsets.symmetric(
        vertical: 15,
        horizontal: 30,
      ),
      width: size.width - 48,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(38.5),
        boxShadow: [
          BoxShadow(
            offset: const Offset(0, 10),
            blurRadius: 33,
            color: const Color(0xFFD3D3D3).withOpacity(0.84),
          ),
        ],
      ),
      child: Row(
        children: [
          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: 'Chapter $chapterNumber : $name\n',
                  style: const TextStyle(
                    fontSize: 16,
                    color: kBlackColor,
                  ),
                ),
                TextSpan(
                  text: tag,
                  style: const TextStyle(
                    color: kLightBlackColor,
                  ),
                ),
              ],
            ),
          ),
          const Spacer(),
          IconButton(
            onPressed: () {
              press();
            },
            icon: const Icon(
              Icons.arrow_forward_ios,
              size: 18,
            ),
          ),
        ],
      ),
    );
  }
}