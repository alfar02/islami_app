import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:islami/core/router/navigation_extensions.dart';
import '../data/onboarding_data.dart';
import '../widgets/onboarding_page.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff202020),
      body: IntroductionScreen(
        globalBackgroundColor: const Color(0xff202020),
        pages: onboardingItems.map(buildOnBoardingPage).toList(),
        showBackButton: true,
        back: Text(
          "Back",
          style: TextStyle(fontSize: 18.sp, color: Colors.amber),
        ),
        next: Icon(Icons.arrow_forward, size: 32.sp, color: Colors.amber),
        done: Text(
          "Start",
          style: TextStyle(fontSize: 18.sp, color: Colors.amber),
        ),
        dotsDecorator: const DotsDecorator(
          activeColor: Colors.amber,
          color: Colors.grey,
          size: Size(8, 8),
          activeSize: Size(22, 8),
          activeShape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(25)),
          ),
        ),
        onDone: () => context.pushReplace('/quranScreen'),
      ),
    );
  }
}
