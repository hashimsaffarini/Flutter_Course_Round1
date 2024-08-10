import 'package:flutter/material.dart';

class HomePageBody extends StatefulWidget {
  const HomePageBody({super.key});

  @override
  State<HomePageBody> createState() => _HomePageBodyState();
}

class _HomePageBodyState extends State<HomePageBody> {
  Map<String, Map<String, dynamic>> quiz = {
    'What is the capital of Palestine?': {
      'options': ['Ramallah', 'Jerusalem', 'Nablus', 'Tulkarm'],
      'answer': 'Jerusalem',
    },
    'What is the capital of France?': {
      'options': ['Paris', 'Lyon', 'Marseille', 'Toulouse'],
      'answer': 'Paris',
    },
    'What is the capital of Germany?': {
      'options': ['Berlin', 'Hamburg', 'Munich', 'Cologne'],
      'answer': 'Berlin',
    },
  };
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          const SizedBox(height: 43),
          ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Image.asset(
              'assets/images/head.png',
            ),
          ),
          const SizedBox(height: 20),
        ],
      ),
    );
  }
}
