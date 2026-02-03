import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:islami/core/router/app_router.dart';
import 'package:islami/core/router/router_generation_config.dart';
import 'package:islami/features/onboarding/screens/onboarding_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(430, 932),
      builder: (context, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Islamic App',
          theme: ThemeData(primarySwatch: Colors.green, useMaterial3: true),
          onGenerateRoute: RouterGenerationConfig.generateRoute,
          initialRoute: AppRoutes.onBoardingScreen,
        );
      },
    );
  }
}
