import 'package:flutter/material.dart';
import 'package:simple_quiz_app/models/quiz_model.dart';

class HomePageBody extends StatefulWidget {
  const HomePageBody({
    super.key,
  });

  @override
  State<HomePageBody> createState() => _HomePageBodyState();
}

class _HomePageBodyState extends State<HomePageBody> {
  int currentQuestionIndex = 0;
  int correctAnswers = 0;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 36),
      child: currentQuestionIndex < quiz.length
          ? SingleChildScrollView(
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
                    quiz[currentQuestionIndex].question,
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
                      quiz[currentQuestionIndex].options.length,
                      (index) {
                        return Padding(
                          padding: const EdgeInsets.symmetric(vertical: 12),
                          child: ElevatedButton(
                            onPressed: () {
                              setState(() {
                                if (quiz[currentQuestionIndex].options[index] ==
                                    quiz[currentQuestionIndex].answer) {
                                  correctAnswers++;
                                }
                                currentQuestionIndex++;
                              });
                            },
                            style: ElevatedButton.styleFrom(
                              minimumSize: const Size(double.infinity, 65),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(32),
                              ),
                            ),
                            child: Text(
                              quiz[currentQuestionIndex].options[index],
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
            )
          : Column(
              children: [
                const SizedBox(height: 60),
                ClipRRect(
                  borderRadius: BorderRadius.circular(16),
                  child: Image.network(
                    'https://media.istockphoto.com/id/1199025903/vector/congratulations-greeting-card-vector-lettering.jpg?s=612x612&w=0&k=20&c=JBjYOnkRerY0uxBrYAtKccIk6tdiBCuzwClegCucpmw=',
                  ),
                ),
                const SizedBox(height: 32),
                const Text(
                  'Congratulations!.',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 36,
                    fontFamily: 'Gilroy',
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 32),
                Text(
                  'Your score is $correctAnswers out of ${quiz.length}',
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontFamily: 'Gilroy',
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const Spacer(),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      currentQuestionIndex = 0;
                      correctAnswers = 0;
                    });
                  },
                  style: ElevatedButton.styleFrom(
                    minimumSize: const Size(double.infinity, 65),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(32),
                    ),
                  ),
                  child: const Text(
                    'Play Again',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontFamily: 'Gilroy',
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const SizedBox(height: 6),
              ],
            ),
    );
  }
}
