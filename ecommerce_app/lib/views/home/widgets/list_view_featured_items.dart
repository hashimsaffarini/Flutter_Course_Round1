import 'package:ecommerce_app/models/featured_item_model.dart';
import 'package:ecommerce_app/views/home/widgets/featured_list_view_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ListViewFeaturedItems extends StatelessWidget {
  const ListViewFeaturedItems({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 87.h,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: featuredItems.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.only(
              left: index == 0 ? 8.w : 0,
              right: 16.w,
            ),
            child: FeaturedListViewItem(
              image: featuredItems[index].image,
              title: featuredItems[index].title,
            ),
          );
        },
      ),
    );
  }
}
