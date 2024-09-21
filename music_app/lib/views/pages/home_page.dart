import 'package:flutter/material.dart';
import 'package:music_app/views/widgets/home_page_body.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    // double heightOfScreen = MediaQuery.of(context).size.height;
    // double heightOfAppBar = AppBar().preferredSize.height;
    // double heightOfStatusBar = MediaQuery.of(context).padding.top;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey[900],
        title: const Text(
          'Music Player App',
          style: TextStyle(
            color: Colors.white,
            fontSize: 24,
            fontWeight: FontWeight.w400,
          ),
        ),
      ),
      body: const HomePageBody(),
    );
  }
}
