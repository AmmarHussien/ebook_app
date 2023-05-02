import 'package:flutter/material.dart';

import '../../constant.dart';

class ContinueReadingCardItem extends StatelessWidget {
  const ContinueReadingCardItem({
    super.key,
    required this.title,
    required this.auth,
    required this.image,
    required this.numOfChapter,
    required this.press,
    required this.numOfAllChapter,
  });

  final String title, auth, image;
  final int numOfChapter, numOfAllChapter;
  final Function press;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: () {
        press();
      },
      child: Padding(
        padding: const EdgeInsets.only(
          bottom: 10,
        ),
        child: Container(
          height: 70,
          width: double.infinity,
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
          child: ClipRRect(
            borderRadius: BorderRadius.circular(38.5),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(
                      left: 30,
                      right: 20,
                    ),
                    child: Row(
                      children: [
                        Expanded(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                title,
                                style: const TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                auth,
                                style: const TextStyle(
                                  color: kLightBlackColor,
                                ),
                              ),
                              Align(
                                alignment: Alignment.bottomRight,
                                child: Text(
                                  'Chapter $numOfChapter of $numOfAllChapter',
                                  style: const TextStyle(
                                    fontSize: 10,
                                    color: kLightBlackColor,
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                            ],
                          ),
                        ),
                        Image.asset(
                          image,
                          width: 55,
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  height: 7,
                  width: size.width * (numOfChapter / numOfAllChapter),
                  decoration: BoxDecoration(
                    color: kProgressIndicator,
                    borderRadius: BorderRadius.circular(7),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}


