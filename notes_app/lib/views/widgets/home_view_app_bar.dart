import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:notes_app/views/widgets/custom_text_field.dart';

class HomeViewAppBar extends StatelessWidget {
  const HomeViewAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        SizedBox(width: 20),
        Expanded(
          child: CustomTextField(),
        ),
        SizedBox(width: 18),
        Badge(
          backgroundColor: Color(0xff2AFF8C),
          smallSize: 9,
          child: Icon(
            Iconsax.notification,
            color: Color(0xff000000),
            size: 24,
          ),
        ),
        SizedBox(width: 26),
      ],
    );
  }
}
