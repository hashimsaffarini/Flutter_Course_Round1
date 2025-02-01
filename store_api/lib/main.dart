import 'package:flutter/material.dart';
import 'package:store_api/utils/app_router.dart';
import 'package:store_api/views/home_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      onGenerateRoute: AppRouter.onGenerateRoute,
      initialRoute: HomeView.routeName,
      debugShowCheckedModeBanner: false,
      title: 'Store API',
      home: HomeView(),
    );
  }
}
