// ignore_for_file: use_full_hex_values_for_flutter_colors, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:school_app/constant/app_text.dart';
import 'package:school_app/constant/list.dart';
import 'package:school_app/views/screens/dashboard_screen/widgets/custom_card.dart';
import 'package:school_app/views/screens/dashboard_screen/widgets/custom_row.dart';

class CoursesList extends StatelessWidget {
  const CoursesList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomRow(title: courses),
        SizedBox(height: 18.h),
        SizedBox(
          height: 108.h,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            physics: BouncingScrollPhysics(),
            itemCount: courseImageList.length,
            itemBuilder: (contex, index) {
              return CustomCard(
                image: courseImageList[index],
                title: courseTextList[index],
              );
            },
          ),
        ),
      ],
    );
  }
}
