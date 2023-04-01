// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomTextRow extends StatelessWidget {
  final String title1, title2;
  const CustomTextRow({
    super.key,
    required this.title1,
    required this.title2,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 50.w),
      child: Row(
        children: [
          Text(
            title1,
            style: TextStyle(
              color: Color(0xFF27A7B8),
              fontSize: 14.sp,
              fontWeight: FontWeight.w500,
            ),
          ),
          Text(
            title2,
            style: TextStyle(
              color: Color(0xFF223E4B).withOpacity(.80),
              fontSize: 14.sp,
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    );
  }
}
