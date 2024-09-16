import 'package:flutter/material.dart';

class HomePageBody extends StatefulWidget {
  const HomePageBody({
    super.key,
  });

  @override
  State<HomePageBody> createState() => _HomePageBodyState();
}

class _HomePageBodyState extends State<HomePageBody> {
  int currentQuestionIndex = 0;
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
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 36),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 60),
            Center(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(16),
                child: Image.asset('assets/images/head.png'),
              ),
            ),
            const SizedBox(height: 24),
            Text(
              'Question ${currentQuestionIndex + 1} of ${quiz.length}',
              style: const TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontFamily: 'Gilroy',
                fontWeight: FontWeight.w400,
              ),
            ),
            const SizedBox(height: 32),
            Text(
              quiz.keys.elementAt(currentQuestionIndex),
              style: const TextStyle(
                color: Colors.white,
                fontSize: 36,
                fontFamily: 'Gilroy',
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 32),
            Column(
              children: List.generate(
                quiz.values.elementAt(currentQuestionIndex)['options'].length,
                (index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(vertical: 12),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        minimumSize: const Size(double.infinity, 65),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(32),
                        ),
                      ),
                      onPressed: () {
                        setState(() {
                          currentQuestionIndex++;
                          if (currentQuestionIndex == quiz.length) {
                            currentQuestionIndex = 0;
                          }
                        });
                      },
                      child: Text(
                        quiz.values.elementAt(currentQuestionIndex)['options']
                            [index],
                        style: const TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          fontFamily: 'Gilroy',
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
