// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:school_app/constant/app_colors.dart';
import 'package:school_app/constant/app_text.dart';

import 'custom_row_text.dart';
import 'custom_text.dart';

class CustomClassActivitiesContainer extends StatelessWidget {
  final image;
  final String bookName,
      monthName,
      dateName,
      typeName,
      chapterName,
      opinionName;
  const CustomClassActivitiesContainer({
    super.key,
    required this.image,
    required this.bookName,
    required this.monthName,
    required this.dateName,
    required this.typeName,
    required this.chapterName,
    required this.opinionName,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200.h,
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
              SizedBox(width: 10.w),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    bookName,
                    style: TextStyle(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w700,
                      color: selectedColor,
                    ),
                  ),
                  SizedBox(height: 4.h),
                  Row(
                    children: [
                      Icon(
                        Icons.calendar_month,
                        color: Color(0xFF27A7CF),
                        size: 15.h,
                      ),
                      SizedBox(width: 4.w),
                      CustomText(text: monthName)
                    ],
                  ),
                ],
              ),
              Spacer(),
              CustomText(text: date)
            ],
          ),
          SizedBox(height: 8.h),
          SizedBox(
            width: 303.w,
            child: Divider(),
          ),
          SizedBox(height: 8.h),
          CustomTextRow(title1: type, title2: typeName),
          SizedBox(height: 8.h),
          CustomTextRow(title1: chapter, title2: chapterName),
          SizedBox(height: 8.h),
          CustomTextRow(title1: opinion, title2: opinionName),
        ],
      ),
    );
  }
}
