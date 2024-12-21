import 'package:ecommerce_app/models/product_item_model.dart';
import 'package:ecommerce_app/views/home/widgets/list_view_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ListViewItems extends StatelessWidget {
  const ListViewItems({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300.h,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: products.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.only(
              left: index == 0 ? 16.w : 0,
              right: 16.w,
            ),
            child: ListViewItem(
              product: products[index],
            ),
          );
        },
      ),
    );
  }
}
