import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:provider/provider.dart';
import 'package:sinu_guide/constants/app_colors.dart';
import 'package:sinu_guide/constants/app_constants.dart';
import 'package:sinu_guide/constants/app_icons.dart';
import 'package:sinu_guide/presentation/home/widgets/animated_balls.dart';
import 'package:sinu_guide/providers/home_provider.dart';
import 'package:sinu_guide/presentation/home/widgets/advice_container.dart';
import 'package:sinu_guide/presentation/home/widgets/bottom_sheet_widget.dart';
import 'package:sinu_guide/presentation/home/widgets/custom_progress_indicator.dart';
import 'package:sinu_guide/presentation/home/widgets/weather_info_list.dart';
import 'package:sinu_guide/presentation/home/widgets/weather_info_tile.dart';
import 'package:sinu_guide/presentation/home/widgets/weather_title_and_icon.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    Provider.of<HomeProvider>(context, listen: false).getHomeData();

    super.initState();
  }

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
          const AnimatedBalls(),
          Consumer<HomeProvider>(builder: (context, provider, child) {
            if (provider.isLoading) {
              return const CustomProgressIndicator();
            }
            return Column(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: AppConstants.horizontalPadding),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SafeArea(
                          child: Padding(
                        padding: EdgeInsets.only(top: 20.h),
                        child: SvgPicture.asset('assets/images/sinu.svg'),
                      )),
                      SizedBox(height: 35.h),
                      const WeatherTitleAndIcon(),
                      const WeatherInfoList(),
                      SizedBox(height: 38.h),
                      const AdviceContainer(),
                    ],
                  ),
                ),
                const Spacer(),
                Text(
                  'إذا خرجت اتبع الإجراءات الآتية',
                  style: TextStyle(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w800,
                    color: AppColors.secondary,
                  ),
                ),
                SizedBox(height: 16.h),
                GestureDetector(
                  onTap: () {
                    showModalBottomSheet(
                        isScrollControlled: true,
                        isDismissible: true,
                        context: context,
                        enableDrag: true,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(20.sp),
                              topRight: Radius.circular(20.sp)),
                        ),
                        builder: (context) {
                          return BottomSheetWidget();
                        });
                  },
                  child: SvgPicture.asset(
                    AppIcons.arrowUp,
                    height: 20,
                    color: AppColors.secondary,
                  ),
                ),
                SizedBox(height: 32.h),
              ],
            );
          }),
        ],
      ),
    );
  }
}
