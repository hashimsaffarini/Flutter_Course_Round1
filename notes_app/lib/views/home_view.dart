import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/home_view_app_bar.dart';
import 'package:notes_app/views/widgets/home_view_body.dart';

import 'widgets/bottom_sheet_widget.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(61),
        ),
        backgroundColor: const Color(0xff070707),
        child: const Icon(
          color: Colors.white,
          size: 30,
          Icons.add,
        ),
        onPressed: () {
          showModalBottomSheet(
            context: context,
            builder: (context) => const BottomSheetWidget(),
          );
        },
      ),
      backgroundColor: Colors.white,
      body: const SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 20),
              HomeViewAppBar(),
              SizedBox(height: 22),
              HomeViewBody(),
            ],
          ),
        ),
      ),
    );
  }
}


