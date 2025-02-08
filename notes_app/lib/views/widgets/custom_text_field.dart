import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:notes_app/utils/app_styles.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    this.icon,
    this.title = "Search for notes",
    this.controller,
  });
  final Widget? icon;
  final String title;
  final TextEditingController? controller;
  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      cursorColor: Colors.black,
      decoration: InputDecoration(
        filled: true,
        fillColor: const Color(0xffF0F0F0),
        hintText: title,
        hintStyle: AppStyles.regular14.copyWith(
          color: const Color(0xff7C7C7C),
        ),
        prefixIcon: icon ??
            const Icon(
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
    );
  }
}
