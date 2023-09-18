import 'package:flutter/material.dart';

import '../utils/size_config.dart';
import 'colors.dart';

class AppTheme {
  final ThemeData primaryTheme = ThemeData(
    textTheme: TextTheme(
      displaySmall: TextStyle(
          color: AppColors.textPrimaryClr,
          fontWeight: FontWeight.w400,
          fontSize: SizeConfig.textMultiplier * 1.28),
      bodySmall: TextStyle(
          color: AppColors.textPrimaryClr,
          fontWeight: FontWeight.w400,
          fontSize: SizeConfig.textMultiplier * 1.4),
      bodyMedium: TextStyle(
          color: AppColors.textPrimaryClr,
          fontWeight: FontWeight.w400,
          fontSize: SizeConfig.textMultiplier * 1.6),
      bodyLarge: TextStyle(
          color: AppColors.textPrimaryClr,
          fontWeight: FontWeight.w400,
          fontSize: SizeConfig.textMultiplier * 1.8),
      displayLarge: TextStyle(
          color: AppColors.textPrimaryClr,
          fontWeight: FontWeight.w400,
          fontSize: SizeConfig.textMultiplier * 2),
      headlineSmall: TextStyle(
          color: AppColors.textPrimaryClr,
          fontWeight: FontWeight.w600,
          fontSize: SizeConfig.textMultiplier * 2.2),
      headlineMedium: TextStyle(
          color: AppColors.textPrimaryClr,
          fontWeight: FontWeight.w600,
          fontSize: SizeConfig.textMultiplier * 2.5),
      headlineLarge: TextStyle(
          color: AppColors.textPrimaryClr,
          fontWeight: FontWeight.w600,
          fontSize: SizeConfig.textMultiplier * 2.8),
    ),
    fontFamily: 'PlusJakartaSans',
    colorScheme: ColorScheme.light(primary: AppColors.primaryClr),
    scaffoldBackgroundColor: Colors.black,
  );
  getTheme() {
    return primaryTheme;
  }
}
