import 'package:flutter/material.dart';
import 'package:food_app/models/product_model.dart';
import 'package:food_app/utils/app_styles.dart';
import 'package:food_app/views/screens/product_details_screen.dart';
import 'package:food_app/views/widgets/favorite_list_view_item.dart';
import 'package:food_app/views/widgets/favorite_screen_header.dart';

class FavoriteScreen extends StatefulWidget {
  const FavoriteScreen({super.key});

  @override
  State<FavoriteScreen> createState() => _FavoriteScreenState();
}

class _FavoriteScreenState extends State<FavoriteScreen> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const FavoriteScreenHeader(),
          const SizedBox(
            height: 60,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Favorite Items',
                  style: AppStyles.dmSans18Bold.copyWith(
                    fontSize: 26,
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                favoriteList.isNotEmpty
                    ? ListView.builder(
                        padding: EdgeInsets.zero,
                        itemCount: favoriteList.length,
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        itemBuilder: (context, index) {
                          return InkWell(
                            borderRadius: BorderRadius.circular(16),
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) {
                                    return ProductDetailsScreen(
                                      product: favoriteList[index],
                                    );
                                  },
                                ),
                              ).then((value) {
                                setState(() {});
                              });
                            },
                            child: FavoriteListViewItem(
                              product: favoriteList[index],
                              isChanged: (isChanged) {
                                setState(() {});
                              },
                            ),
                          );
                        },
                      )
                    : Column(
                        children: [
                          const SizedBox(
                            height: 100,
                          ),
                          Center(
                            child: Text(
                              'Add your favorite items',
                              style: AppStyles.dmSans12Medium.copyWith(
                                fontSize: 28,
                                color: Colors.grey,
                              ),
                            ),
                          ),
                        ],
                      )
              ],
            ),
          )
        ],
      ),
    );
  }
}
