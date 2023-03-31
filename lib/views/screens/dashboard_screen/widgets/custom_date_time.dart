import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:school_app/constant/app_colors.dart';

class CustomDateTime extends StatelessWidget {
  final String day;
  final String date;
  final bool isSelected;
  const CustomDateTime({
    super.key,
    required this.day,
    required this.date,
    this.isSelected = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 47.h,
      width: 33.w,
      margin: EdgeInsets.symmetric(horizontal: 7.w),
      decoration: BoxDecoration(
        color: isSelected == true ? Colors.white : Colors.transparent,
        borderRadius: BorderRadius.circular(8.r),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            day,
            style: TextStyle(
              color:
                  isSelected == true ? selectedColor : const Color(0xFFFFFFFF),
              fontSize: 10.sp,
              fontWeight: FontWeight.w400,
            ),
          ),
          SizedBox(height: 4.h),
          Text(
            date,
            style: TextStyle(
              color:
                  isSelected == true ? selectedColor : const Color(0xFFFFFFFF),
              fontSize: 12.sp,
              fontWeight: FontWeight.w700,
            ),
          ),
        ],
      ),
    );
  }
}
