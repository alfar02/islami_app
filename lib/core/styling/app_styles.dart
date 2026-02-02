
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:islami/core/styling/app_color.dart';

class AppStyles {
  static TextStyle primaryHeadLinesStyle = TextStyle(
    fontSize: 30.sp,
    fontWeight: FontWeight.bold,
    color: AppColor.primaryColor,
  );

  static TextStyle subTitelStyle = TextStyle(
    fontSize: 16.sp,
    fontWeight: FontWeight.w500,
    color: AppColor.secondaryColor,
  );

  static TextStyle black16w500Style = TextStyle(
    fontSize: 16.sp,
    fontWeight: FontWeight.w600,
    color: AppColor.blackColor,
  );
  static TextStyle gray12MediumStyle = TextStyle(
    fontSize: 12.sp,
    fontWeight: FontWeight.w600,
    color: AppColor.grayColor,
  );
  
}
