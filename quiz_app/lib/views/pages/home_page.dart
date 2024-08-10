import 'package:flutter/material.dart';
import 'package:quiz_app/views/widgets/home_page_body.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(0xffAF7EE7),
              Color(0xff927AFF),
              Color(0xff272052),
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: const HomePageBody(),
      ),
    );
  }
}

