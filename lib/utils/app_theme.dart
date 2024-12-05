import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:selling_houses/gen/colors.gen.dart';
import 'package:flutter/material.dart';
import 'package:selling_houses/gen/fonts.gen.dart';
import 'package:selling_houses/utils/app_text_style.dart';

final ThemeData appTheme = ThemeData(
  fontFamily: FontFamily.manrope,
  colorScheme: ThemeData().colorScheme.copyWith(
        primary: ColorName.blueNewCar,
        inversePrimary: ColorName.lotion,
        secondary: ColorName.lotion,
        onPrimary: ColorName.lotion,
        surface: ColorName.blueNewCar,
        surfaceTint: ColorName.blueNewCar,
      ),
  pageTransitionsTheme: const PageTransitionsTheme(
    builders: {
      TargetPlatform.android: CupertinoPageTransitionsBuilder(),
      TargetPlatform.iOS: CupertinoPageTransitionsBuilder(),
    },
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      backgroundColor: ColorName.blueNewCar,
      foregroundColor: ColorName.lotion,
      textStyle: AppTextStyles.w600s12,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.r),
      ),
      padding: EdgeInsets.symmetric(
        vertical: 8.h,
        horizontal: 15.w,
      ),
      elevation: 0,
      minimumSize: Size(0, 32.h),
    ),
  ),
  outlinedButtonTheme: OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      backgroundColor: ColorName.lotion,
      foregroundColor: ColorName.black,
      textStyle: AppTextStyles.w500s12,
      side: const BorderSide(
        color: ColorName.gray,
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.r),
      ),
      padding: EdgeInsets.symmetric(
        vertical: 8.h,
        horizontal: 15.w,
      ),
      elevation: 0,
      minimumSize: Size(0, 32.h),
    ),
  ),
  inputDecorationTheme: InputDecorationTheme(
    hintStyle: AppTextStyles.w500s14.copyWith(
      color: ColorName.silverAmerican,
    ),
    contentPadding: EdgeInsets.symmetric(
      vertical: 10.h,
      horizontal: 10.h,
    ),
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(10.r),
      borderSide: const BorderSide(
        color: ColorName.gray,
      ),
    ),
    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(10.r),
      borderSide: const BorderSide(
        color: ColorName.gray,
      ),
    ),
  ),
  useMaterial3: true,
);
