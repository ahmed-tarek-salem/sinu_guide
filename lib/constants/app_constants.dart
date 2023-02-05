import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sinu_guide/constants/app_colors.dart';

class AppConstants {
  static final horizontalPadding = 14.w;
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
    begin: Alignment.bottomCenter,
    end: Alignment.topCenter,
  );
}
