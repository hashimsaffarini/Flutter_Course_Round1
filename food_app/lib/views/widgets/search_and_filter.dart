import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:food_app/utils/app_colors.dart';
import 'package:food_app/utils/app_styles.dart';
import 'package:food_app/utils/font_wieght_helper.dart';
import 'package:iconsax/iconsax.dart';

class SearchAndFilter extends StatelessWidget {
  const SearchAndFilter({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(
                color: const Color(0xffE6E6E6),
              ),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.25),
                  blurRadius: 4,
                  offset: const Offset(0, 4),
                )
              ],
            ),
            child: TextField(
              cursorColor: AppColors.primaryColor,
              decoration: InputDecoration(
                contentPadding: const EdgeInsets.symmetric(vertical: 16),
                hintText: 'Search',
                hintStyle: AppStyles.roboto14Medium.copyWith(
                  fontSize: 18,
                  fontWeight: FontWieghtHelper.regular,
                  color: const Color(0xffCCCCCC),
                ),
                prefixIcon: const Icon(
                  Iconsax.search_normal_14,
                  color: Colors.black,
                ),
                border: const OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(10),
                  ),
                ),
                focusedBorder: const OutlineInputBorder(
                  borderSide: BorderSide(
                    color: AppColors.primaryColor,
                  ),
                  borderRadius: BorderRadius.all(
                    Radius.circular(10),
                  ),
                ),
                enabledBorder: const OutlineInputBorder(
                  borderSide: BorderSide(
                    color: AppColors.grey,
                  ),
                  borderRadius: BorderRadius.all(
                    Radius.circular(10),
                  ),
                ),
              ),
            ),
          ),
        ),
        const SizedBox(width: 16),
        Container(
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: Border.all(
              color: AppColors.primaryColor,
            ),
          ),
          child: SvgPicture.asset(
            'assets/svgs/Filter.svg',
            height: 26,
          ),
        ),
      ],
    );
  }
}
