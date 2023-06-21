import 'package:car_rent_app/core/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

ThemeData getThemeData() {
  return ThemeData(
    backgroundColor: backgroundColor,
    textTheme: TextTheme(
      titleLarge: TextStyle(
          fontSize: 30.sp, color: myWhite, fontWeight: FontWeight.bold),
      labelLarge: TextStyle(
          fontSize: 22.sp, fontWeight: FontWeight.w600, color: myWhite),
      labelMedium: TextStyle(
          fontSize: 20.sp, fontWeight: FontWeight.bold, color: myWhite),
      displayLarge: TextStyle(
          fontSize: 30.sp, fontWeight: FontWeight.bold, color: myBlack),
      bodyLarge: TextStyle(fontSize: 16.sp, fontWeight: FontWeight.w600),
      bodyMedium: TextStyle(fontSize: 14.sp, fontWeight: FontWeight.w400),
      bodySmall:
          TextStyle(fontSize: 12.sp, fontWeight: FontWeight.w400, color: grey),
    ),
  );
}
