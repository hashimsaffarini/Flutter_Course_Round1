import 'package:flutter/material.dart';
import 'package:quiz_app/views/widgets/number_of_question.dart';
import 'package:quiz_app/views/widgets/question.dart';

class HomePageBody extends StatefulWidget {
  const HomePageBody({super.key});

  @override
  State<HomePageBody> createState() => _HomePageBodyState();
}

class _HomePageBodyState extends State<HomePageBody> {
  int currentIndex = 0;
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
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 32),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 43),
              ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.asset(
                  'assets/images/head.png',
                ),
              ),
              const SizedBox(height: 32),
              NumberOfQuestion(currentIndex: currentIndex, quiz: quiz),
              const SizedBox(height: 32),
              Question(quiz: quiz.keys.elementAt(currentIndex)),
              const SizedBox(height: 64),
              ListView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount:
                    quiz.values.elementAt(currentIndex)['options'].length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(bottom: 24),
                    child: ElevatedButton(
                      style: ButtonStyle(
                        elevation: WidgetStateProperty.all(32),
                        backgroundColor: WidgetStateProperty.all(Colors.white),
                        shape: WidgetStateProperty.all(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(22),
                          ),
                        ),
                        padding: WidgetStateProperty.all(
                          const EdgeInsets.symmetric(vertical: 16),
                        ),
                      ),
                      onPressed: () {
                        setState(() {
                          if (currentIndex < quiz.length - 1) {
                            currentIndex++;
                          } else {                            
                            currentIndex = 0;
                          }
                        });
                      },
                      child: Text(
                        quiz.values.elementAt(currentIndex)['options'][index],
                        style: const TextStyle(
                          fontSize: 16,
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
