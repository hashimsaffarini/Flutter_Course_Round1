class QuizModel {
  String question;
  List<String> options;
  String answer;
  QuizModel({
    required this.question,
    required this.options,
    required this.answer,
  });
}

List<QuizModel> quiz = [
  QuizModel(
    question: 'What is the capital of Palestine?',
    options: ['Ramallah', 'Jerusalem', 'Nablus', 'Tulkarm'],
    answer: 'Jerusalem',
  ),
  QuizModel(
    question: 'What is the capital of France?',
    options: ['Paris', 'Lyon', 'Marseille', 'Toulouse'],
    answer: 'Paris',
  ),
  QuizModel(
    question: 'What is the capital of Germany?',
    options: ['Berlin', 'Hamburg', 'Munich', 'Cologne'],
    answer: 'Berlin',
  ),
];
