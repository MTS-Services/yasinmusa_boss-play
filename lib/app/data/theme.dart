import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'app_colors.dart';
import 'app_text_styles.dart';

ThemeData themeData() {
  return ThemeData(
    // fontFamily: 'Poppins',
    scaffoldBackgroundColor: AppColors.blackColor,
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: AppColors.whiteColor,
      elevation: 0,
      selectedLabelStyle: AppTextStyles.medium12,
      unselectedLabelStyle: AppTextStyles.medium12,
      selectedItemColor: AppColors.primaryColor,
    ),
    appBarTheme: AppBarTheme(
      backgroundColor: AppColors.blackColor,
      iconTheme: IconThemeData(color: AppColors.whiteColor),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4.r)),
        padding: EdgeInsets.symmetric(vertical: 14.h, horizontal: 4.w),
        textStyle: AppTextStyles.medium16.copyWith(
          overflow: TextOverflow.ellipsis,
        ),
        alignment: Alignment.center,
      ),
    ),
    outlinedButtonTheme: OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
        padding: EdgeInsets.symmetric(vertical: 14.h, horizontal: 4.w),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4.r)),
        textStyle: AppTextStyles.medium16,
      ),
    ),
    inputDecorationTheme: InputDecorationTheme(
      filled: true,
      fillColor: AppColors.whiteColor,
      contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
      ),
    ),
  );
}
