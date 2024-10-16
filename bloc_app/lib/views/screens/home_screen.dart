import 'package:bloc_app/logic/counter_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'سبحان الله',
              style: TextStyle(fontSize: 48),
            ),
            const SizedBox(height: 16),
            BlocConsumer<CounterCubit, int>(
              listener: (context, state) {
                if (state % 2 == 0) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text('سبحان الله'),
                      duration: Duration(milliseconds: 500),
                    ),
                  );
                }
              },
              builder: (context, state) {
                return Text(
                  '$state',
                  style: const TextStyle(fontSize: 48),
                );
              },
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          context.read<CounterCubit>().increment();
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
