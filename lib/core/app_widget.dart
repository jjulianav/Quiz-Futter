//import 'package:DevQuiz/splash/splash_page.dart';
import 'package:devQuiz/challenge/challenge_page.dart';
import 'package:devQuiz/home/home_page.dart';
import 'package:devQuiz/splash/splash_page.dart';
import 'package:flutter/material.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "DevQuiz",
      home: ChallengePage(),
    );
  }
}
