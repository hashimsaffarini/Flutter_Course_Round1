import 'package:ecommerce_app/logic/home/home_cubit.dart';
import 'package:ecommerce_app/views/auth/logic/signin/signin_cubit.dart';
import 'package:ecommerce_app/views/auth/logic/signup/signup_cubit.dart';
import 'package:ecommerce_app/views/auth/screens/signin_screen.dart';
import 'package:ecommerce_app/views/auth/screens/signup_screen.dart';
import 'package:ecommerce_app/views/home/screens/home_screen.dart';
import 'package:ecommerce_app/views/on_boarding/on_boarding_screen.dart';
import 'package:ecommerce_app/views/splash/splash_screen.dart';
import 'package:ecommerce_app/views/welcome/welcome_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppRouter {
  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case SigninScreen.routeName:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => SigninCubit(),
            child: const SigninScreen(),
          ),
        );
      case SignupScreen.routeName:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => SignupCubit(),
            child: const SignupScreen(),
          ),
        );

      case SplashScreen.routeName:
        return MaterialPageRoute(
          builder: (_) => const SplashScreen(),
        );
      case WelcomeScreen.routeName:
        return MaterialPageRoute(
          builder: (_) => const WelcomeScreen(),
        );
      case OnBoardingScreen.routeName:
        return MaterialPageRoute(
          builder: (_) => const OnBoardingScreen(),
        );
      case HomeScreen.routeName:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => HomeCubit()..fetchHomeData()..fetchDataWhenOpenApp(),
            child: const HomeScreen(),
          ),
        );
      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(
              child: Text('No route defined for ${settings.name}'),
            ),
          ),
        );
    }
  }
}
