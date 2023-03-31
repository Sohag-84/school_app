// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:school_app/constant/app_colors.dart';
import 'package:school_app/constant/app_text.dart';

class CustomRow extends StatelessWidget {
  final String title;
  const CustomRow({
    super.key,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          title,
          style: TextStyle(
            fontSize: 22.sp,
            color: selectedColor,
            fontWeight: FontWeight.w700,
          ),
        ),
        Spacer(),
        Text(
          seeAll,
          style: TextStyle(
              fontSize: 12.sp,
              color: selectedColor,
              fontWeight: FontWeight.w700),
        ),
        Icon(
          Icons.arrow_forward,
          color: Color(0xFF27A7B8),
        ),
      ],
    );
  }
}
