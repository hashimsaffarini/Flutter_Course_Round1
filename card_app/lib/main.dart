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
    return Scaffold(
      backgroundColor: const Color(0xff2C495E),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // ClipRRect(
            //   borderRadius: BorderRadius.circular(999),
            //   child: Image.asset(
            //     'assets/images/hashim.png',
            //   ),
            // ),
            const CircleAvatar(
              radius: 154,
              backgroundColor: Colors.white,
              child: CircleAvatar(
                radius: 150,
                backgroundImage: AssetImage(
                  'assets/images/hashim.png',
                ),
              ),
            ),
            const SizedBox(height: 8),
            //*name
            const Text(
              'Hashim Saffarini',
              style: TextStyle(
                color: Colors.white,
                fontSize: 28,
                fontFamily: 'Pacifico',
              ),
            ),
            const SizedBox(height: 4),
            const Text(
              'Flutter Developer',
              style: TextStyle(
                color: Color(0xff6C8090),
                fontWeight: FontWeight.w400,
                fontSize: 18,
              ),
            ),
            const Divider(
              height: 32,
              endIndent: 32,
              indent: 32,
              color: Colors.white,
              thickness: 3,
            ),
            const SizedBox(height: 8),
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
              ),
              margin: const EdgeInsets.symmetric(horizontal: 16),
              height: 54,
              child: const Row(
                children: [
                  SizedBox(width: 52),
                  Icon(
                    Icons.phone,
                    size: 32,
                    color: Color(0xff2C495E),
                  ),
                  SizedBox(width: 20),
                  Text(
                    '+962 77 777 7777',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w500,
                    ),
                  )
                ],
              ),
            ),

            const SizedBox(height: 24),
            const Card(
              margin: EdgeInsets.symmetric(horizontal: 16),
              elevation: 30,
              child: ListTile(
                leading: Icon(
                  Icons.email,
                  size: 32,
                  color: Color(0xff2C495E),
                ),
                title: Text(
                  'hashim@hotmail.com',
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 70),
          ],
        ),
      ),
    );
  }
}
