import 'package:ecommerce_app/views/auth/widgets/signup_screen_body.dart';
import 'package:flutter/material.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});
  static const String routeName = 'signup-screen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: const SignupScreenBody(),
    );
  }
}
