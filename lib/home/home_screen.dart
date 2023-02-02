import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sinu_guide/constants/app_colors.dart';
import 'package:sinu_guide/constants/app_constants.dart';
import 'package:sinu_guide/constants/app_icons.dart';
import 'package:sinu_guide/home/widgets/advice_container.dart';
import 'package:sinu_guide/home/widgets/weather_info_list.dart';
import 'package:sinu_guide/home/widgets/weather_info_tile.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          Container(
            height: double.infinity,
            width: double.infinity,
            decoration:
                const BoxDecoration(gradient: AppConstants.whiteGradient),
          ),
          Image.asset(
            'assets/images/balls.png',
            fit: BoxFit.fill,
            height: double.infinity,
            width: double.infinity,
          )
              .animate(
                onComplete: (controller) => controller.repeat(reverse: true),
              )
              .slideY(
                  duration: Duration(seconds: 10),
                  begin: -0.5,
                  end: 0,
                  curve: Curves.decelerate),
          Column(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 14.w),
                child: Column(
                  children: [
                    SafeArea(child: SvgPicture.asset('assets/images/sinu.svg')),
                    SizedBox(height: 35.h),
                    Row(
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
                                'غائم محمل بالأتربة',
                                style: TextStyle(
                                    fontFamily: 'Changa',
                                    color: Colors.white,
                                    fontSize: 16.sp,
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ),
                        Image.asset('assets/images/state.png'),
                      ],
                    ),
                    const WeatherInfoList(),
                    SizedBox(height: 38.h),
                    const AdviceContainer(),
                    SizedBox(height: 16.h),
                    Text(
                      'إذا خرجت اتبع الإجراءات الآتية',
                      style: TextStyle(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w800,
                        color: AppColors.secondary,
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                  child: Container(
                width: double.infinity,
                color: Colors.white,
              ))
            ],
          ),
        ],
      ),
    );
  }
}
