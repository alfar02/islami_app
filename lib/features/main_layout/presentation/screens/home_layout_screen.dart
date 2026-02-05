import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:islami/features/main_layout/presentation/screens/bottom_nav_bar.dart';
import 'package:islami/features/quran/presentation/hadith/screens/hadith_tab.dart';
import 'package:islami/features/quran/presentation/screens/quran_screen.dart';
import 'package:islami/features/radio/screens/radio_tab.dart';
import 'package:islami/features/settings/screens/settings_tab.dart';
import 'package:islami/features/tasbeeh/presentation/tasbeeh_tab.dart';

class HomeLayout extends StatefulWidget {
  const HomeLayout({super.key});

  @override
  State<HomeLayout> createState() => _HomeLayoutState();
}

class _HomeLayoutState extends State<HomeLayout> {
  int currentIndex = 0;

  final pages = const [
    QuranScreen(),
    HadithScreen(),
    TasbeehScreen(),
    RadioScreen(),
    SettingsScreen(),
  ];

  final backgrounds = [
    "assets/images/hadith_bg.png",
    "assets/images/background.png",
    "assets/images/sebha_bg.png",
    "assets/images/radio_bg.png",
    "assets/images/more_bg.png",
  ];

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned.fill(
          child: Image.asset(backgrounds[currentIndex], fit: BoxFit.fill),
        ),

        Positioned.fill(
          child: Container(
            color: Colors.black.withOpacity(0.90), 
          ),
        ),

        Scaffold(
          backgroundColor: Colors.transparent,
          body: Stack(
            alignment: Alignment.center,
            children: [
              Positioned(
                top: 20,
                child: SizedBox(
                  height: 170.h,
                  child: Image.asset('assets/images/intro_screen_top.png'),
                ),
              ),
              pages[currentIndex],
            ],
          ),
          bottomNavigationBar: BottomNavBar(
            currentIndex: currentIndex,
            onTap: (index) {
              setState(() {
                currentIndex = index;
              });
            },
          ),
        ),
      ],
    );
  }
}
