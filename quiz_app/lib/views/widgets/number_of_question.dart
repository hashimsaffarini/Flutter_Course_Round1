import 'package:flutter/material.dart';

class NumberOfQuestion extends StatelessWidget {
  const NumberOfQuestion({
    super.key,
    required this.currentIndex,
    required this.quiz,
  });

  final int currentIndex;
  final Map<String, Map<String, dynamic>> quiz;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          'Question ${currentIndex + 1} of ${quiz.length}',
          style: const TextStyle(
            fontSize: 20,
            color: Colors.white,
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    );
  }
}
