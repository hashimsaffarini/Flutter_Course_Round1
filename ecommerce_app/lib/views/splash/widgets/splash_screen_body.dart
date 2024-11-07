import 'package:ecommerce_app/utils/app_styles.dart';
import 'package:ecommerce_app/views/on_boarding/on_boarding_screen.dart';
import 'package:flutter/material.dart';

class SplashScreenBody extends StatefulWidget {
  const SplashScreenBody({super.key});

  @override
  State<SplashScreenBody> createState() => _SplashScreenBodyState();
}

class _SplashScreenBodyState extends State<SplashScreenBody>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<Offset> _titleAnimation;
  late Animation<Offset> _subtitleAnimation;
  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(seconds: 2),
      vsync: this,
    );
    _titleAnimation = Tween<Offset>(
      begin: const Offset(0, 10),
      end: Offset.zero,
    ).animate(
      CurvedAnimation(
        parent: _controller,
        curve: Curves.easeInOut,
      ),
    );
    _subtitleAnimation = Tween<Offset>(
      begin: const Offset(0, -5),
      end: Offset.zero,
    ).animate(
      CurvedAnimation(
        parent: _controller,
        curve: Curves.easeInOut,
      ),
    );
    _controller.forward();

    navigatorToOnBoardingScreen();
  }

  navigatorToOnBoardingScreen() {
    return Future.delayed(
      const Duration(seconds: 3),
      () {
        if (mounted) {
          return Navigator.pushReplacementNamed(
            context,
            OnBoardingScreen.routeName,
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
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SlideTransition(
            position: _titleAnimation,
            child: Text(
              'Kutuku',
              style: AppStyles.roboto42Regular.copyWith(
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const SizedBox(
            height: 2,
          ),
          SlideTransition(
            position: _subtitleAnimation,
            child: Text(
              'Any Shopping just from your here',
              style: AppStyles.roboto42Regular.copyWith(
                fontSize: 14,
                color: const Color(0xFFe1e4e9),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
