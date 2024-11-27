import 'package:ecommerce_app/core/utils/constants.dart';
import 'package:ecommerce_app/views/auth/logic/signup/signup_cubit.dart';
import 'package:ecommerce_app/views/auth/logic/signup/signup_state.dart';
import 'package:ecommerce_app/views/auth/widgets/signup_screen_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});
  static const String routeName = 'signup';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocConsumer<SignupCubit, SignupState>(
        listener: (context, state) {
          if (state is SignupFailure) {
            buildError(context, state.message);
          } else if (state is SignupSuccess) {
            // Navigator.pushNamed(context, 'home');
          }
        },
        builder: (context, state) {
          return ModalProgressHUD(
            inAsyncCall: state is SignupLoading,
            child: const SafeArea(
              child: SignupScreenBody(),
            ),
          );
        },
      ),
    );
  }
}
