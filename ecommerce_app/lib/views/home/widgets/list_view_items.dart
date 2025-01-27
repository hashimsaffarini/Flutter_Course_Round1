import 'package:ecommerce_app/logic/home/home_cubit.dart';
import 'package:ecommerce_app/logic/home/home_state.dart';
import 'package:ecommerce_app/models/product_item_model.dart';
import 'package:ecommerce_app/views/home/widgets/list_view_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:skeletonizer/skeletonizer.dart';

class ListViewItems extends StatelessWidget {
  const ListViewItems({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
      buildWhen: (previous, current) =>
          current is HomeDataSuccsess ||
          current is HomeDataFailure ||
          current is HomeDataLoading,
      builder: (context, state) {
        if (state is HomeDataLoading) {
          return Skeletonizer(
            enabled: true,
            child: SizedBox(
              height: 300.h,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 5,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: EdgeInsets.only(
                      left: index == 0 ? 16.w : 0,
                      right: 16.w,
                    ),
                    child: ListViewItem(
                      product: products[0],
                    ),
                  );
                },
              ),
            ),
          );
        } else if (state is HomeDataFailure) {
          return Center(
            child: Text(state.message),
          );
        } else if (state is HomeDataSuccsess) {
          var data = state.products;
          return SizedBox(
            height: 260.h,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: data.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: EdgeInsets.only(
                    left: index == 0 ? 16.w : 0,
                    right: 16.w,
                  ),
                  child: ListViewItem(
                    product: data[index],
                  ),
                );
              },
            ),
          );
        }
        return const Text('No Data');
      },
    );
  }
}
