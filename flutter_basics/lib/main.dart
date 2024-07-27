import 'package:flutter/material.dart';
import 'package:flutter_basics/views/pages/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.amber,
        ),
        useMaterial3: true,
      ),
      home: const HomePage(),
    );
  }
}
//home_page_sss.dart