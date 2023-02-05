import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sinu_guide/constants/app_colors.dart';
import 'package:sinu_guide/constants/app_constants.dart';
import 'package:sinu_guide/constants/app_icons.dart';

class BottomSheetWidget extends StatelessWidget {
  const BottomSheetWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Container(
        height: MediaQuery.of(context).size.height * 0.7,
        padding: EdgeInsets.symmetric(
            horizontal: AppConstants.horizontalPadding, vertical: 14.h),
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.sp),
                    gradient: AppConstants.purpleGradient),
                child: Column(
                  children: [
                    ActionWidget(),
                    ActionWidget(),
                    ActionWidget(),
                    ActionWidget(),
                  ],
                ),
              ),
              SizedBox(height: 14.h),
              Text(
                'اعرف المزيد',
                style: TextStyle(
                    color: AppColors.secondary,
                    fontSize: 18.sp,
                    fontWeight: FontWeight.w900),
              ),
              SizedBox(height: 14.h),
              QuestionTile(),
              QuestionTile(),
              QuestionTile(),
              QuestionTile(),
            ],
          ),
        ),
      ),
    );
  }
}

class QuestionTile extends StatelessWidget {
  const QuestionTile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(20.sp),
        boxShadow: [
          BoxShadow(
              color: Colors.grey.shade300,
              blurRadius: 4,
              spreadRadius: 0.5,
              offset: Offset(1, 2))
        ],
      ),
      padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 25.h),
      child: Text(
        'ضع عنوانا مناسبا للصورة',
        textAlign: TextAlign.center,
        style: TextStyle(
            color: AppColors.secondary,
            fontSize: 20.sp,
            fontWeight: FontWeight.w500),
      ),
      margin: EdgeInsets.only(bottom: 20.h),
    );
  }
}

class ActionWidget extends StatelessWidget {
  const ActionWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 5.h),
      child: Row(
        children: [
          CircleAvatar(
            radius: 10.sp,
            child: SvgPicture.asset(AppIcons.exclamation),
          ),
          SizedBox(width: 7.w),
          Text(
            'اضبط منبها بمواعيد جرعاتك اليوم',
            style: TextStyle(
                fontSize: 16.sp,
                fontWeight: FontWeight.bold,
                color: AppColors.white),
          )
        ],
      ),
    );
  }
}
