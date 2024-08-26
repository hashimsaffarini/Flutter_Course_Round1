import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  const Question({
    super.key,
    required this.quiz,
  });

  final String quiz;
  @override
  Widget build(BuildContext context) {
    return Text(
      quiz,
      style: const TextStyle(
        fontSize: 32,
        color: Colors.white,
        fontWeight: FontWeight.w700,
      ),
    );
  }
}
