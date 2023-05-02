import 'package:ebook_app/Home/components/best_of_day.dart';
import 'package:ebook_app/Home/components/book_rating.dart';
import 'package:ebook_app/components/rounded_button.dart';
import 'package:ebook_app/constant.dart';
import 'package:flutter/material.dart';

import 'book_info.dart';
import 'chapter_card.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              alignment: Alignment.topCenter,
              children: [
                Container(
                  height: size.height * 0.4,
                  width: double.infinity,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/images/bg.png'),
                      fit: BoxFit.fitWidth,
                    ),
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(50),
                      bottomRight: Radius.circular(50),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 24,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(
                          height: size.height * 0.1,
                        ),
                        const BookInfo()
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    top: size.height * 0.4 - 20,
                  ),
                  child: Column(
                    children: [
                      ChapterCard(
                        name: 'Money',
                        tag: 'Life is about change',
                        chapterNumber: 1,
                        press: () {},
                      ),
                      ChapterCard(
                        name: 'Power',
                        tag: 'Everything lovers power',
                        chapterNumber: 2,
                        press: () {},
                      ),
                      ChapterCard(
                        name: 'Influence',
                        tag: 'Influence easly like never before',
                        chapterNumber: 3,
                        press: () {},
                      ),
                      ChapterCard(
                        name: 'Win',
                        tag: 'Winnig is what matters',
                        chapterNumber: 4,
                        press: () {},
                      ),
                      const SizedBox(
                        height: 10,
                      )
                    ],
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
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
                        TextSpan(
                          text: 'You might also ',
                        ),
                        TextSpan(
                          text: 'like..',
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
                  BestOfTheDayCard(size: size)
                ],
              ),
            ),
            const SizedBox(
              height: 40,
            )
          ],
        ),
      ),
    );
  }
}
