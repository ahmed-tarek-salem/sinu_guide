import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sinu_guide/constants/app_colors.dart';
import 'package:sinu_guide/constants/app_constants.dart';

class AdviceContainer extends StatelessWidget {
  const AdviceContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(vertical: 22.h),
      decoration: BoxDecoration(
          gradient: AppConstants.purpleGradient,
          borderRadius: BorderRadius.circular(15.sp)),
      child: Center(
        child: Text(
          'من الأفضل أن تبقى في المنزل اليوم',
          textAlign: TextAlign.center,
          style: TextStyle(
              color: AppColors.white,
              fontWeight: FontWeight.w900,
              fontSize: 20.sp),
        ),
      ),
    );
  }
}
