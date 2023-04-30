import 'package:flutter/material.dart';

import '../components/rounded_button.dart';


class WelcomScreen extends StatelessWidget {
  const WelcomScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              'assets/images/Bitmap.png',
            ),
            fit: BoxFit.fill,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RichText(
              text: TextSpan(
                style: Theme.of(context).textTheme.displaySmall,
                children: const [
                  TextSpan(
                    text: 'Flamin',
                  ),
                  TextSpan(
                    text: 'go',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              width: size.width * 0.6,
              child: RoundedButton(
                text: 'Start Reading',
                fontSize: 20,
                press: () {},
              ),
            ),
          ],
        ),
      ),
    );
  }
}

