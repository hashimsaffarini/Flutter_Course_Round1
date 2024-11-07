import 'package:ecommerce_app/views/on_boarding/widgets/on_boarding_screen_body.dart';
import 'package:flutter/material.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});
  static const String routeName = 'on-boarding-screen';
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: OnBoardingScreenBody(),
    );
  }
}
