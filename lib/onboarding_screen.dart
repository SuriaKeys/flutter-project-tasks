import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class OnboardingScreen extends StatelessWidget {
  OnboardingScreen({super.key});

  static const titles = [
    "Diary with lock"
  ];



  static const description = [
    "Store your memories in a safe and secure way!"
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(32),
        child: Column(
          children: [
            Expanded(
              child: PageView.builder(
                controller: controller,
                itemCount: 4,
                itemBuilder: (context, index) {
                 return Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                   children: [
                    SvgPicture.asset('assets/images/logo.svg'),                                                                                
                     SvgPicture.asset('assets/images/onboarding_${index+1}.svg'),
                     Text(titles[index], style: TextStyle(fontSize: 34, fontWeight: FontWeight.bold)),
                     Text(description[index], style: TextStyle(fontSize: 18),
                     
                     )
                   ],
                 );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}