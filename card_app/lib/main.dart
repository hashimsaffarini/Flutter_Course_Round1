import 'package:flutter/material.dart';

void main() {
  runApp(const CardApp());
}

class CardApp extends StatelessWidget {
  const CardApp({super.key});

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
    return const Scaffold(
      backgroundColor: Color(0xff2C495E),
      body: SafeArea(
        child: Column(
          children: [
            // ClipRRect(
            //   borderRadius: BorderRadius.circular(999),
            //   child: Image.asset(
            //     'assets/images/hashim.png',
            //   ),
            // ),
            CircleAvatar(
              radius: 154,
              backgroundColor: Colors.white,
              child: CircleAvatar(
                radius: 150,
                backgroundImage: AssetImage(
                  'assets/images/hashim.png',
                ),
              ),
            ),
            SizedBox(height: 8),
            //*name
            Text(
              'Hashim Saffarini',
              style: TextStyle(
                color: Colors.white,
                fontSize: 28,
                fontFamily: 'Pacifico',
              ),
            )
          ],
        ),
      ),
    );
  }
}
