import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:sinu_guide/constants/app_icons.dart';
import 'package:sinu_guide/presentation/home/widgets/weather_info_tile.dart';
import 'package:sinu_guide/models/weather_response_model.dart';
import 'package:sinu_guide/providers/home_provider.dart';

class WeatherInfoList extends StatelessWidget {
  const WeatherInfoList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Consumer<HomeProvider>(builder: (context, provider, child) {
      return Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              WeatherInfoTile(
                title: 'سرعة الرياح',
                value:
                    provider.weatherResponseModel?.wind?.speed?.toDouble() ?? 0,
                iconPath: AppIcons.windSpeed,
              ),
              SizedBox(width: 5.w),
              WeatherInfoTile(
                title: 'الحرارة',
                value:
                    provider.weatherResponseModel?.main?.temp?.toDouble() ?? 0,
                iconPath: AppIcons.temp,
              ),
              SizedBox(width: 5.w),
              WeatherInfoTile(
                title: 'الرطوبة',
                value:
                    provider.weatherResponseModel?.main?.humidity?.toDouble() ??
                        0,
                iconPath: AppIcons.humidity,
              )
            ],
          ),
          SizedBox(height: 16.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              WeatherInfoTile(
                title: 'ضغط الجيوب الأنفية',
                value:
                    provider.weatherResponseModel?.main?.pressure?.toDouble() ??
                        0,
                iconPath: AppIcons.nose,
              ),
              SizedBox(width: 10.w),
              const WeatherInfoTile(
                title: 'الغبار',
                value: 15,
                iconPath: AppIcons.dust,
              ),
            ],
          )
        ],
      );
    });
  }
}
