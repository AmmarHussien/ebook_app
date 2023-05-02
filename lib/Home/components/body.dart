import 'package:ebook_app/details/details_screen.dart';
import 'package:flutter/material.dart';

import 'best_of_day.dart';
import 'continue_reading_card.dart';
import 'reading_list_card.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              'assets/images/main_page_bg.png',
            ),
            alignment: Alignment.topCenter,
            fit: BoxFit.fitWidth,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: size.height * 0.1,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 24,
              ),
              child: RichText(
                text: TextSpan(
                  style: Theme.of(context)
                      .textTheme
                      .displaySmall!
                      .copyWith(fontSize: 30),
                  children: const [
                    TextSpan(text: 'What are you \nreading '),
                    TextSpan(
                      text: 'today?',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  ReadingListCard(
                    image: 'assets/images/book-1.png',
                    title: 'Crushing & Influence',
                    auth: 'Gray Venchuk',
                    rating: 4.9,
                    pressDetails: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => const DetailsScreen(),
                        ),
                      );
                    },
                    pressRead: () {},
                  ),
                  ReadingListCard(
                    image: 'assets/images/book-2.png',
                    title: 'Top Ten Business Hacks',
                    auth: 'Herman Joel',
                    rating: 4.5,
                    pressDetails: () {},
                    pressRead: () {},
                  ),
                  const SizedBox(
                    width: 30,
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 24,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  RichText(
                    text: TextSpan(
                      style: Theme.of(context)
                          .textTheme
                          .displaySmall!
                          .copyWith(fontSize: 30),
                      children: const [
                        TextSpan(text: 'Best of The '),
                        TextSpan(
                          text: 'Day',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                  BestOfTheDayCard(size: size),
                  RichText(
                    text: TextSpan(
                      style: Theme.of(context).textTheme.displaySmall!.copyWith(
                            fontWeight: FontWeight.w300,
                            fontSize: 30,
                          ),
                      children: const [
                        TextSpan(text: 'Continue '),
                        TextSpan(
                          text: 'reading...',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  ContinueReadingCardItem(
                    title: 'Crushing & Influencer',
                    auth: 'Gray Venchuk',
                    image: 'assets/images/book-1.png',
                    numOfChapter: 4,
                    press: () {},
                    numOfAllChapter: 8,
                  ),
                  ContinueReadingCardItem(
                    title: 'Top Ten Business Hacks',
                    auth: 'Herman Joel',
                    image: 'assets/images/book-2.png',
                    numOfChapter: 8,
                    press: () {},
                    numOfAllChapter: 12,
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
