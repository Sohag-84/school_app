// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:school_app/constant/app_text.dart';
import 'package:school_app/constant/image_path.dart';
import 'package:school_app/views/screens/dashboard_screen/widgets/custom_exam_container.dart';
import 'package:school_app/views/screens/dashboard_screen/widgets/custom_row.dart';


class ExamSection extends StatelessWidget {
  const ExamSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomRow(title: exam),
        SizedBox(height: 18.h),
        CustomExamContainer(subject: generalMath,image: icMath),
        SizedBox(height: 18.h),
        CustomExamContainer(subject: biology,image: icBiology),
      ],
    );
  }
}

