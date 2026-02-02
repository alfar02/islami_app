import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:islami/features/onboarding/data/models/onboarding_item.dart';

PageViewModel buildOnBoardingPage(OnBoardingItem item) {
  return PageViewModel(
    useScrollView: false,
    titleWidget: Image.asset(
      "assets/images/intro_screen_top.png",
      height: 171.h,
      width: 291.w,
      fit: BoxFit.contain,
    ),
    bodyWidget: Column(
      children: [
        Image.asset(item.image, height: 350.h),
        SizedBox(height: 40.h),
        Text(
          item.title,
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.amber,
            fontSize: 24.sp,
            fontWeight: FontWeight.bold,
          ),
        ),
        if (item.subtitle != null) ...[
          SizedBox(height: 24.h),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 28.w),
            child: Text(
              item.subtitle!,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.amber,
                fontSize: 20.sp,
                height: 1.5,
              ),
            ),
          ),
        ],
      ],
    ),
  );
}
