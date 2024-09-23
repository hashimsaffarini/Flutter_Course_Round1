import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red,
      child: Center(
        child: Text(
          'Home Screen',
          style: GoogleFonts.dmSans(
            fontSize: 24,
          ),
        ),
      ),
    );
  }
}
