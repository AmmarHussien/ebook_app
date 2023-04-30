import 'package:ebook_app/constant.dart';
import 'package:flutter/material.dart';

import 'Welcom Screen/welcom_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        textTheme: Theme.of(context).textTheme.apply(
              displayColor: kBlackColor,
            ),
      ),
      debugShowCheckedModeBanner: false,
      home: const WelcomScreen(),
    );
  }
}
