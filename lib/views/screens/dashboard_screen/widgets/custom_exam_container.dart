// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:school_app/constant/app_colors.dart';
import 'package:school_app/views/screens/dashboard_screen/widgets/custom_row_text.dart';

import '../../../../constant/app_text.dart';
import 'custom_text.dart';

class CustomExamContainer extends StatelessWidget {
  final String subject;
  final image;
  const CustomExamContainer({
    super.key,
    required this.subject,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 178.h,
      width: 335.w,
      padding: EdgeInsets.all(16.w),
      decoration: BoxDecoration(
        color: Color(0xFFFAFBFC),
        borderRadius: BorderRadius.circular(12.r),
      ),
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 50.h,
                width: 50.w,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(8.r),
                ),
                child: Center(
                  child: Image.asset(image, height: 30.h, width: 30.w),
                ),
              ),
              SizedBox(width: 14.w),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    subject,
                    style: TextStyle(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w700,
                      color: selectedColor,
                    ),
                  ),
                  SizedBox(height: 5.h),
                  Row(
                    children: [
                      Icon(
                        Icons.alarm,
                        color: Color(0xFF27A7CF),
                        size: 15.h,
                      ),
                      SizedBox(width: 2.w),
                      CustomText(text: time1),
                      CustomText(text: "-"),
                      CustomText(text: time2),
                      SizedBox(width: 15.w),
                      Icon(
                        Icons.calendar_month,
                        color: Color(0xFF27A7CF),
                        size: 15.h,
                      ),
                      SizedBox(width: 4.w),
                      CustomText(text: month)
                    ],
                  ),
                ],
              ),
              Spacer(),
              CustomText(text: date)
            ],
          ),
          SizedBox(height: 10.h),
          SizedBox(
            width: 303.w,
            child: Divider(color: Color(0xFFEDF3F5)),
          ),
          SizedBox(height: 10.h),
          CustomTextRow(title1: chapter, title2: mathNumber),
          SizedBox(height: 10.h),
          CustomTextRow(title1: fullMark, title2: mark),
        ],
      ),
    );
  }
}
