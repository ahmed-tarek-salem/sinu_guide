import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:sinu_guide/constants/app_constants.dart';
import 'package:sinu_guide/presentation/shared_widgets/custom_cached_image.dart';
import 'package:sinu_guide/providers/home_provider.dart';

class WeatherTitleAndIcon extends StatelessWidget {
  const WeatherTitleAndIcon({
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
              Consumer<HomeProvider>(builder: (context, provider, child) {
                return Text(
                  provider.weatherResponseModel?.weather[0].description ??
                      'غير محدد',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 16.sp,
                      fontWeight: FontWeight.bold),
                );
              }),
            ],
          ),
        ),
        SizedBox(width: 30.w),
        Consumer<HomeProvider>(builder: (context, provider, child) {
          return CustomCachedImage(
            imageUrl: provider.icon!,
          );
          Image.network(
            provider.icon!,
            fit: BoxFit.fill,
            width: 100.w,
          );
        }),
      ],
    );
  }
}
