import 'package:basic_notes_app/views/widgets/custom_float_action_button.dart';
import 'package:basic_notes_app/views/widgets/home_screen_body.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text('Basic Notes App'),
      ),
      body: const HomeScreenBody(),
      floatingActionButton: const CustomFloatActionButton(),
    );
  }
}
