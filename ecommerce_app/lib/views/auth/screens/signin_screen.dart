import 'package:ecommerce_app/views/auth/widgets/signin_screen_body.dart';
import 'package:flutter/material.dart';

class SigninScreen extends StatelessWidget {
  const SigninScreen({super.key});
  static const String routeName = 'signin';
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: SigninScreenBody(),
      ),
    );
  }
}
