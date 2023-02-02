import 'package:flutter/material.dart';
import 'package:sinu_guide/constants/app_colors.dart';

class AppConstants {
  static const purpleGradient = LinearGradient(
    colors: [
      AppColors.purple,
      AppColors.lightPurple,
    ],
    begin: Alignment.centerRight,
    end: Alignment.centerLeft,
  );
  static const whiteGradient = LinearGradient(
    colors: [
      AppColors.primary,
      AppColors.white,
    ],
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
  );
}
