import 'package:flutter/material.dart';

void main() {
  runApp(const BirthDayApp());
}

class BirthDayApp extends StatelessWidget {
  const BirthDayApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffD2BCD5),
      body: Center(
        child: Image.asset(
          'assets/images/birthday.png',
        ),
      ),
    );
  }
}
