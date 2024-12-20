import 'package:ecommerce_app/core/services/auth.dart';
import 'package:ecommerce_app/core/utils/app_images.dart';
import 'package:ecommerce_app/core/utils/app_styles.dart';
import 'package:ecommerce_app/core/utils/constants.dart';
import 'package:ecommerce_app/core/utils/shared_pref.dart';
import 'package:ecommerce_app/views/auth/screens/signin_screen.dart';
import 'package:ecommerce_app/views/home/screens/home_screen.dart';
import 'package:ecommerce_app/views/on_boarding/on_boarding_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SplashScreenBody extends StatefulWidget {
  const SplashScreenBody({super.key});

  @override
  State<SplashScreenBody> createState() => _SplashScreenBodyState();
}

class _SplashScreenBodyState extends State<SplashScreenBody>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _imageAnimation;
  late Animation<Offset> _textAnimation;
  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(seconds: 2),
      vsync: this,
    );
    _textAnimation = Tween<Offset>(
      begin: const Offset(0, 5),
      end: Offset.zero,
    ).animate(
      CurvedAnimation(
        parent: _controller,
        curve: Curves.easeInOut,
      ),
    );
    _imageAnimation = Tween<double>(
      begin: 0,
      end: 1,
    ).animate(
      CurvedAnimation(
        parent: _controller,
        curve: Curves.easeInOut,
      ),
    );
    _controller.forward();

    navigatorToOnBoardingScreen();
  }

  navigatorToOnBoardingScreen() async {
    bool isAppOpened = SharedPref.getBool(isUserOpenedApp);
    bool isLoggedIn = await AuthImpl().isCurrentUserLoggedIn();
    return Future.delayed(
      const Duration(seconds: 3),
      () {
        if (mounted) {
          return Navigator.pushReplacementNamed(
            context,
            isAppOpened
                ? (isLoggedIn ?HomeScreen .routeName : SigninScreen.routeName)
                : OnBoardingScreen.routeName,
          );
        }
      },
    );
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          AnimatedBuilder(
            animation: _imageAnimation,
            builder: (context, child) {
              return Transform.scale(
                scale: _imageAnimation.value,
                child: child,
              );
            },
            child: Image.asset(
              Assets.splashIcon,
            ),
          ),
          SizedBox(width: 10.w),
          SlideTransition(
            position: _textAnimation,
            child: Text(
              'Stylish',
              style: AppStyles.libreCaslonText40Bold,
            ),
          )
        ],
      ),
    );
  }
}
