import 'package:flutter/material.dart';
import 'package:food_app/utils/app_colors.dart';
import 'package:food_app/utils/app_styles.dart';
import 'package:food_app/views/screens/home_screen.dart';
import 'package:food_app/views/screens/cart_screen.dart';
import 'package:food_app/views/screens/favorite_screen.dart';
import 'package:iconsax/iconsax.dart';

class NavBar extends StatefulWidget {
  const NavBar({super.key});

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  int selectedIndex = 0;
  List<Widget> screens = const [
    HomeScreen(),
    FavoriteScreen(),
    CartScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: ,
      body: screens[selectedIndex],
      backgroundColor: Colors.white,
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
              blurRadius: 15,
              offset: const Offset(0, -3),
            ),
          ],
        ),
        child: ClipRRect(
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(24),
            topRight: Radius.circular(24),
          ),
          child: NavigationBarTheme(
            data: NavigationBarThemeData(
              labelTextStyle: WidgetStateProperty.all(
                AppStyles.roboto12Medium,
              ),
            ),
            child: NavigationBar(
              overlayColor: WidgetStateProperty.all(
                AppColors.primaryColor.withOpacity(0.5),
              ),
              height: MediaQuery.of(context).size.height * 0.08,
              indicatorColor: AppColors.primaryColor,
              backgroundColor: Colors.white,
              labelBehavior:
                  NavigationDestinationLabelBehavior.onlyShowSelected,
              shadowColor: Colors.transparent,
              selectedIndex: selectedIndex,
              onDestinationSelected: (int index) {
                setState(() {
                  selectedIndex = index;
                });
              },
              destinations: const [
                NavigationDestination(
                  label: 'Home',
                  icon: Icon(
                    Iconsax.home,
                  ),
                ),
                NavigationDestination(
                  label: 'Favorite',
                  icon: Icon(Iconsax.heart),
                ),
                NavigationDestination(
                  label: 'Cart',
                  icon: Icon(Iconsax.shopping_cart),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
