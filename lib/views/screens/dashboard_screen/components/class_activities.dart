// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:school_app/constant/app_text.dart';
import 'package:school_app/constant/image_path.dart';
import 'package:school_app/views/screens/dashboard_screen/widgets/class_activity_container.dart';
import 'package:school_app/views/screens/dashboard_screen/widgets/custom_row.dart';

import '../../../../constant/app_colors.dart';
import '../widgets/custom_row_text.dart';
import '../widgets/custom_text.dart';

class ClassActivities extends StatelessWidget {
  const ClassActivities({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomRow(title: classActivities),
        SizedBox(height: 18.h),
        CustomClassActivitiesContainer(
          image: icBiology,
          bookName: biology,
          monthName: month,
          dateName: date,
          typeName: homeWork,
          chapterName: chapterName,
          opinionName: question,
        ),
        SizedBox(height: 18.h),
        CustomClassActivitiesContainer(
          image: icScience,
          bookName: physics,
          monthName: "৮ই আগষ্ট",
          dateName: date,
          typeName: assignment,
          chapterName: chapterName2,
          opinionName: question,
        ),
      ],
    );
  }
}
