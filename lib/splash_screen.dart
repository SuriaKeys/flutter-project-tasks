import 'package:flutter/material.dart';
import 'package:flutter_application_1/onboarding_screen.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(seconds: 5), () {
    Navigator.of(context).pushReplacement(
     MaterialPageRoute(builder: (context) => OnboardingScreen()) 
    );
    });

    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(child: SvgPicture.asset('assets/images/logo.svg')));
  }
}