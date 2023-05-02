import 'package:flutter/material.dart';

import '../../components/two_side_rounded_btn.dart';
import '../../constant.dart';
import 'book_rating.dart';

class ReadingListCard extends StatelessWidget {
  const ReadingListCard({
    super.key,
    required this.image,
    required this.title,
    required this.auth,
    required this.rating,
    required this.pressDetails,
    required this.pressRead,
  });

  final String image, title, auth;
  final double rating;
  final Function pressDetails, pressRead;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        left: 24,
        bottom: 40,
      ),
      height: 245,
      width: 202,
      child: Stack(
        children: [
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              height: 221,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(30),
                boxShadow: [
                  kBoxShadow,
                ],
              ),
            ),
          ),
          Image.asset(
            image,
            width: 150,
          ),
          Positioned(
            top: 35,
            right: 10,
            child: Column(
              children: [
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.favorite_border,
                  ),
                ),
                BookRating(
                  rating: rating,
                ),
              ],
            ),
          ),
          Positioned(
            top: 160,
            child: SizedBox(
              height: 85,
              width: 202,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 24),
                    child: RichText(
                      maxLines: 2,
                      text: TextSpan(
                        style: const TextStyle(
                          color: kBlackColor,
                        ),
                        children: [
                          TextSpan(
                            text: '$title\n',
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          TextSpan(text: auth)
                        ],
                      ),
                    ),
                  ),
                  const Spacer(),
                  Row(
                    children: [
                      GestureDetector(
                        onTap: () {
                          pressDetails();
                        },
                        child: Container(
                          width: 101,
                          padding: const EdgeInsets.symmetric(vertical: 10),
                          alignment: Alignment.center,
                          child: const Text('Details'),
                        ),
                      ),
                      Expanded(
                        child: TwoSideRoundedButton(
                          text: 'Read',
                          press: () {
                            pressRead();
                          },
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
