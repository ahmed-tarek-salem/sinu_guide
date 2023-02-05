import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sinu_guide/constants/app_constants.dart';

class WeatherTitleAndIcon extends StatelessWidget {
  final String? weatherTitle;
  const WeatherTitleAndIcon({
    required this.weatherTitle,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          padding: EdgeInsets.fromLTRB(14.w, 15.h, 14.w, 15.h),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20.sp),
              gradient: AppConstants.purpleGradient),
          child: Column(
            children: [
              const Text(
                'الطقس اليوم',
                style: TextStyle(color: Colors.white),
              ),
              Text(
                weatherTitle ?? 'غير محدد',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 16.sp,
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
        Image.asset('assets/images/state.png'),
      ],
    );
  }
}
