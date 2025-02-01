import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:store_api/controllers/home_cubit.dart';
import 'package:store_api/views/home_view.dart';

class AppRouter {
  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case HomeView.routeName:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => HomeCubit(),
            child: const HomeView(),
          ),
        );

      // case CartView.routeName:
      //   return MaterialPageRoute(
      //     builder: (_) => BlocProvider.value(
      //       value: settings.arguments as HomeCubit,
      //       child: const CartView(),
      //     ),
      //   );
      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(
              child: Text('No route defined for ${settings.name}'),
            ),
          ),
        );
    }
  }
}

// class CartView extends StatelessWidget {
//   const CartView({super.key});
//   static const String routeName = 'cart';
//   @override
//   Widget build(BuildContext context) {
//     return const Placeholder();
//   }
// }
