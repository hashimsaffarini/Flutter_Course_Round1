// import 'package:ecommerce_app/logic/home/home_cubit.dart';
import 'package:ecommerce_app/views/home/widgets/build_home_app_bar.dart';
import 'package:ecommerce_app/views/home/widgets/home_screen_body.dart';
import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});
  static const String routeName = 'home';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    super.initState();
    // context.read<HomeCubit>().fetchDataWhenOpenApp();
    // uploadProducts();
  }

  // void uploadProducts() {
  //   FirestoreService firestoreService = FirestoreService.instance;

  //   for (int i = 0; i < products.length; i++) {
  //     firestoreService.setData(
  //       path: ApiEndpoints.products(products[i].id),
  //       data: products[i].toMap(),
  //     );
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildHomeAppBar(),
      body: const HomeScreenBody(),
    );
  }
}
