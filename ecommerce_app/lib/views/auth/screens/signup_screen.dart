import 'package:ecommerce_app/views/auth/widgets/signup_screen_body.dart';
import 'package:flutter/material.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});
  static const String routeName = 'signup';
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: SignupScreenBody(),
      ),
    );
  }
}
