import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:store_api/controllers/home_cubit.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
      builder: (context, state) {
        if (state is HomeLoading) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        } else if (state is HomeError) {
          return Center(
            child: Text(state.error),
          );
        } else if (state is HomeLoaded) {
          final products = state.products;
          return SingleChildScrollView(
            child: Column(
              children: [
                GridView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 0.7,
                  ),
                  itemCount: products.length,
                  itemBuilder: (context, index) {
                    final product = products[index];
                    return Card(
                      child: Column(
                        children: [
                          Image.network(
                            product.image,
                            height: 100,
                            width: 100,
                            fit: BoxFit.cover,
                          ),
                          Text(product.title),
                          Text(product.price.toString()),
                        ],
                      ),
                    );
                  },
                ),
              ],
            ),
          );
        }
        return const SizedBox();
      },
    );
  }
}
