import 'package:flutter/material.dart';

class HomePageBody extends StatelessWidget {
  const HomePageBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 60),
          ClipRRect(
            borderRadius: BorderRadius.circular(16),
            child: Image.asset('assets/images/head.png'),
          ),
          const SizedBox(height: 27),
          const Text(
            'Question 2 of 20',
            style: TextStyle(
              color: Colors.white,
              fontSize: 18,
            ),
          )
        ],
      ),
    );
  }
}
