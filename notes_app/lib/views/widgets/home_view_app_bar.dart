import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:notes_app/utils/app_styles.dart';

class HomeViewAppBar extends StatelessWidget {
  const HomeViewAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const SizedBox(width: 20),
        Expanded(
          child: TextField(
            cursorColor: Colors.black,
            decoration: InputDecoration(
              filled: true,
              fillColor: const Color(0xffF0F0F0),
              hintText: 'Search for notes',
              hintStyle: AppStyles.regular14.copyWith(
                color: const Color(0xff7C7C7C),
              ),
              prefixIcon: const Icon(
                Iconsax.search_normal_1,
                color: Color(0xff7C7C7C),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
                borderSide: BorderSide.none,
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
                borderSide: BorderSide.none,
              ),
            ),
          ),
        ),
        const SizedBox(width: 18),
        const Badge(
          backgroundColor: Color(0xff2AFF8C),
          smallSize: 9,
          child: Icon(
            Iconsax.notification,
            color: Color(0xff000000),
            size: 24,
          ),
        ),
        const SizedBox(width: 26),
      ],
    );
  }
}
