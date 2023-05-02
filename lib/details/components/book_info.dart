import 'package:flutter/material.dart';

import '../../Home/components/book_rating.dart';
import '../../components/rounded_button.dart';
import '../../constant.dart';

class BookInfo extends StatelessWidget {
  const BookInfo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              RichText(
                text: TextSpan(
                  style: Theme.of(context).textTheme.displaySmall,
                  children: const [
                    TextSpan(
                      text: 'Crushing &\n',
                      style: TextStyle(
                        fontSize: 28,
                      ),
                    ),
                    TextSpan(
                      text: 'Influence',
                      style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Column(
                      children: [
                        const Text(
                          'Is simply dummy text of the printing and typesetting industry, Is simply dummy text of the printing and typesetting industry,',
                          maxLines: 5,
                          style: TextStyle(
                            fontSize: 10,
                            color: kLightBlackColor,
                          ),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        RoundedButton(
                          text: 'Read',
                          fontSize: 15,
                          verticalPadding: 10,
                          press: () {},
                        ),
                      ],
                    ),
                  ),
                  Column(
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.favorite_border,
                        ),
                      ),
                      const BookRating(rating: 4.5),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
        Image.asset(
          'assets/images/book-1.png',
          height: 200,
        ),
      ],
    );
  }
}
