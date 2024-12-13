import 'package:ecommerce_app/views/home/widgets/build_home_app_bar.dart';
import 'package:ecommerce_app/views/home/widgets/home_screen_body.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  static const String routeName = 'home';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildHomeAppBar(),
      body: const HomeScreenBody(),
    );
  }
}
