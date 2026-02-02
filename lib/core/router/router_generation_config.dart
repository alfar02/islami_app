import 'package:flutter/material.dart';
import 'package:islami/core/router/app_router.dart';
import 'package:islami/features/onboarding/screens/onboarding_screen.dart';
import 'package:islami/features/quran/presentation/screens/quran_screen.dart';

class RouterGenerationConfig {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case AppRoutes.onBoardingScreen:
        return MaterialPageRoute(builder: (_) => const OnBoardingScreen());
      case AppRoutes.quranScreen:
        return MaterialPageRoute(builder: (_) => const QuranScreen());

      default:
        return MaterialPageRoute(
          builder: (_) =>
              const Scaffold(body: Center(child: Text('No Route Found'))),
        );
    }
  }
}
