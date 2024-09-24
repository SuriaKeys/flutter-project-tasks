import 'package:flutter/material.dart';
import 'package:flutter_application_1/onboarding_screen.dart';
import 'package:flutter_application_1/splash_screen.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: GoogleFonts.manrope().fontFamily),
      home: OnboardingScreen()
    );
  }
}
