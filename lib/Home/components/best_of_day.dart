import 'package:flutter/material.dart';

import '../../components/two_side_rounded_btn.dart';
import '../../constant.dart';
import 'book_rating.dart';

class BestOfTheDayCard extends StatelessWidget {
  const BestOfTheDayCard({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 20),
      width: double.infinity,
      height: 205,
      child: Stack(
        children: [
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              padding: EdgeInsets.only(
                left: 24,
                top: 24,
                right: size.width * 0.35,
              ),
              height: 185,
              width: double.infinity,
              decoration: BoxDecoration(
                color: const Color(0xFFEAEAEA).withOpacity(0.45),
                borderRadius: BorderRadius.circular(30),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'New Yourk Time Best For 11th March 2020',
                    style: TextStyle(
                      fontSize: 9,
                      color: kLightBlackColor,
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Text(
                    'How To Win \nFrindes & Influence',
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                  const Text(
                    'Gary Venchuk',
                    style: TextStyle(
                      color: kLightBlackColor,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: const [
                      BookRating(rating: 4.3),
                      SizedBox(
                        width: 10,
                      ),
                      Expanded(
                        child: Text(
                          'When the earth was flat and everyone wanted to win the game of the best and people...',
                          maxLines: 3,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            fontSize: 10,
                            color: kLightBlackColor,
                          ),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            right: 0,
            top: 0,
            child: Image.asset(
              'assets/images/book-3.png',
              width: size.width * 0.35,
            ),
          ),
          Positioned(
            right: 0,
            bottom: 0,
            child: SizedBox(
              height: 40,
              width: size.width * 0.3,
              child: TwoSideRoundedButton(
                text: 'Read',
                press: () {},
                radious: 24,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
