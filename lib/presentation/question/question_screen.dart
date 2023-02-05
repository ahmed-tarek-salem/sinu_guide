import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sinu_guide/constants/app_colors.dart';
import 'package:sinu_guide/constants/app_constants.dart';
import 'package:sinu_guide/constants/app_icons.dart';
import 'package:sinu_guide/models/question_model.dart';

class QuestionScreen extends StatelessWidget {
  final int index;
  const QuestionScreen(this.index, {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Directionality(
        textDirection: TextDirection.rtl,
        child: ListView(
          physics: const BouncingScrollPhysics(),
          padding: EdgeInsets.symmetric(
              horizontal: AppConstants.horizontalPadding, vertical: 20.h),
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const SizedBox.shrink(),
                SvgPicture.asset('assets/images/sinu.svg'),
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: SvgPicture.asset(AppIcons.arrowLeft),
                ),
              ],
            ),
            SizedBox(height: 35.h),
            Text(
              questions[index].question,
              textAlign: TextAlign.right,
              style: TextStyle(
                  color: AppColors.secondary,
                  fontSize: 20.sp,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8.sp),
            Text(
              questions[index].answer,
              textAlign: TextAlign.right,
              style: TextStyle(
                  color: AppColors.grey,
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w500),
            )
          ],
        ),
      )),
    );
  }
}
