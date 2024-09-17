import 'package:flutter/material.dart';
import 'package:simple_quiz_app/views/pages/home_page.dart';
import 'package:simple_quiz_app/views/pages/on_boarding_page.dart';

void main() {
  runApp(const QuizApp());
}

class QuizApp extends StatelessWidget {
  const QuizApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Quiz App',
      initialRoute: '/',
      routes: {
        '/': (context) => const OnBoardingPage(),
        '/home': (context) => const HomePage(),
      },
      // home: const OnBoardingPage(), //? screen or page
    );
  }
}
