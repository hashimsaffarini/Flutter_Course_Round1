import 'package:ecommerce_app/core/utils/constants.dart';
import 'package:ecommerce_app/views/auth/logic/signin/signin_cubit.dart';
import 'package:ecommerce_app/views/auth/logic/signin/signin_state.dart';
import 'package:ecommerce_app/views/auth/widgets/signin_screen_body.dart';
import 'package:ecommerce_app/views/welcome/welcome_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';

class SigninScreen extends StatelessWidget {
  const SigninScreen({super.key});
  static const String routeName = 'signin';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocConsumer<SigninCubit, SigninState>(
        listener: (context, state) {
          if (state is SigninFailure) {
            buildError(context, state.message);
          } else if (state is SigninSuccess) {
            Navigator.pushReplacementNamed(context, WelcomeScreen.routeName);
          }
        },
        builder: (context, state) {
          return ModalProgressHUD(
            inAsyncCall: state is SigninLoading,
            child: const SafeArea(
              child: SigninScreenBody(),
            ),
          );
        },
      ),
    );
  }
}
