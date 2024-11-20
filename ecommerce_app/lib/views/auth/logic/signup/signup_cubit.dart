import 'package:ecommerce_app/services/auth.dart';
import 'package:ecommerce_app/views/auth/logic/signup/signup_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignupCubit extends Cubit<SignupState> {
  SignupCubit() : super(SignupInitial());

  TextEditingController emailController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  TextEditingController confirmPasswordController = TextEditingController();

  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;

  AuthImpl auth = AuthImpl();
  void signup() async {
    emit(SignupLoading());
    try {
      await auth.signUpWithEmailAndPassword(
        email: emailController.text,
        password: passwordController.text,
      );
      emit(SignupSuccess());
    } catch (e) {
      emit(SignupFailure(message: e.toString()));
    }
  }
}
