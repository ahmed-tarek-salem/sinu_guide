import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sinu_guide/constants/app_colors.dart';
import 'package:sinu_guide/constants/app_constants.dart';
import 'package:sinu_guide/constants/app_icons.dart';

class WeatherInfoTile extends StatelessWidget {
  final num value;
  final String title;
  final String iconPath;
  const WeatherInfoTile({
    required this.title,
    required this.value,
    required this.iconPath,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          title,
          style: TextStyle(
              color: AppColors.secondary,
              fontSize: 14.sp,
              fontWeight: FontWeight.w500),
        ),
        SizedBox(
          height: 5.h,
        ),
        Container(
          padding:
              EdgeInsets.only(right: 18.w, left: 3.w, bottom: 2.h, top: 2.h),
          decoration: BoxDecoration(boxShadow: const [
            BoxShadow(
                offset: Offset(0, 1),
                blurRadius: 10,
                spreadRadius: 3,
                color: Colors.black12)
          ], color: Colors.white, borderRadius: BorderRadius.circular(30.sp)),
          child: Row(
            children: [
              Text(
                value.toString(),
                style: TextStyle(
                    color: AppColors.secondary,
                    fontSize: 20.sp,
                    fontWeight: FontWeight.w500),
              ),
              SizedBox(
                width: 10.w,
              ),
              Container(
                height: 35.sp,
                width: 35.sp,
                child: Center(
                  child: SvgPicture.asset(
                    iconPath,
                    color: Colors.white,
                    height: 25.h,
                  ),
                ),
                decoration: BoxDecoration(
                    gradient: AppConstants.purpleGradient,
                    borderRadius: BorderRadius.circular(50.sp)),
              )
            ],
          ),
        )
      ],
    );
  }
}
