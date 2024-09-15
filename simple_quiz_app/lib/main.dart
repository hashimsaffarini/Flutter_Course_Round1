import 'package:flutter/material.dart';
import 'package:simple_quiz_app/views/pages/home_page.dart';

void main() {
  runApp(const QuizApp());
}

class QuizApp extends StatelessWidget {
  const QuizApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Quiz App',
      home: HomePage(), //? screen or page
    );
  }
}