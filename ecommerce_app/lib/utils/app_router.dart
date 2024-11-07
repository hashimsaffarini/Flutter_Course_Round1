import 'package:ecommerce_app/views/auth/screens/signin_screen.dart';
import 'package:ecommerce_app/views/auth/screens/signup_screen.dart';
import 'package:ecommerce_app/views/on_boarding/on_boarding_screen.dart';
import 'package:ecommerce_app/views/splash/splash_screen.dart';
import 'package:flutter/material.dart';

class AppRouter {
  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case SigninScreen.routeName:
        return MaterialPageRoute(
          builder: (_) => const SigninScreen(),
        );
      case SignupScreen.routeName:
        return MaterialPageRoute(
          builder: (_) => const SignupScreen(),
        );

      case SplashScreen.routeName:
        return MaterialPageRoute(
          builder: (_) => const SplashScreen(),
        );
      case OnBoardingScreen.routeName:
        return MaterialPageRoute(
          builder: (_) => const OnBoardingScreen(),
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
