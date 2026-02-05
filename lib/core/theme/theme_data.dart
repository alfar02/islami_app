import 'package:flutter/material.dart';
import 'package:islami/core/styling/app_color.dart';
import 'package:islami/core/styling/app_fonts.dart';
import 'package:islami/core/theme/app_styles.dart';

class AppThemes {
  static final lightTheme = ThemeData(
    primaryColor: AppColor.primaryColor,
    scaffoldBackgroundColor: AppColor.backgroundColor,
    fontFamily: AppFonts.mainFontName,
    textTheme: TextTheme(
      titleLarge: AppStyles.primaryHeadLinesStyle,
      titleMedium: AppStyles.subTitelStyle,
    ),
    buttonTheme: ButtonThemeData(
      buttonColor: AppColor.primaryColor,
      disabledColor: AppColor.backgroundColor,
    ),
  );
}
