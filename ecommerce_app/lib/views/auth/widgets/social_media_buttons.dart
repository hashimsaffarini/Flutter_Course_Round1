import 'package:ecommerce_app/core/utils/app_images.dart';
import 'package:ecommerce_app/views/auth/widgets/social_media_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SocialMediaButtons extends StatelessWidget {
  const SocialMediaButtons({super.key});
  final List<String> images = const [
    Assets.googleIcon,
    Assets.apple,
    Assets.facebook,
  ];
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(3, (index) {
        return Padding(
          padding: EdgeInsets.symmetric(horizontal: 10.w),
          child: SocialMediaButton(
            image: images[index],
            onPressed: () {},
          ),
        );
      }),
    );
  }
}
