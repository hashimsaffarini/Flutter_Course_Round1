import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/home_view_app_bar.dart';
import 'package:notes_app/views/widgets/home_view_body.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 20),
              HomeViewAppBar(),
              SizedBox(height: 22),
              HomeViewBody(),
            ],
          ),
        ),
      ),
    );
  }
}
