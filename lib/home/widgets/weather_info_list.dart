import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sinu_guide/constants/app_icons.dart';
import 'package:sinu_guide/home/widgets/weather_info_tile.dart';

class WeatherInfoList extends StatelessWidget {
  const WeatherInfoList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const WeatherInfoTile(
              title: 'سرعة الرياح',
              value: 15,
              iconPath: AppIcons.windSpeed,
            ),
            SizedBox(width: 10.w),
            const WeatherInfoTile(
              title: 'الحرارة',
              value: 15,
              iconPath: AppIcons.temp,
            ),
            SizedBox(width: 10.w),
            const WeatherInfoTile(
              title: 'الرطوبة',
              value: 15,
              iconPath: AppIcons.humidity,
            )
          ],
        ),
        SizedBox(height: 16.h),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const WeatherInfoTile(
              title: 'ضغط الجيوب الأنفية',
              value: 15,
              iconPath: AppIcons.nose,
            ),
            const WeatherInfoTile(
              title: 'الغبار',
              value: 15,
              iconPath: AppIcons.dust,
            ),
          ],
        )
      ],
    );
  }
}
