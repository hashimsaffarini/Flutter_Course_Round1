import 'package:ecommerce_app/core/services/auth.dart';
import 'package:ecommerce_app/views/auth/logic/signin/signin_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SigninCubit extends Cubit<SigninState> {
  SigninCubit() : super(SigninInitial());

  TextEditingController emailController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  AuthImpl auth = AuthImpl();
  void signin() async {
    emit(SigninLoading());
    try {
      await auth.signInWithEmailAndPassword(
        email: emailController.text,
        password: passwordController.text,
      );
      emit(SigninSuccess());
    } catch (e) {
      emit(SigninFailure(message: e.toString()));
    }
  }
}
