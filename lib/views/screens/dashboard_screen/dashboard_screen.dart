// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:school_app/views/screens/dashboard_screen/components/courses_list.dart';

import 'components/appbar_container.dart';
import 'components/class_activities.dart';
import 'components/exam_sction.dart';
import 'components/other_sction.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF5F5F5),
      body: SingleChildScrollView(
        child: Column(
          children: [
            AppBarContainer(),
            SizedBox(height: 30.h),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15.w),
              child: Column(
                children: [
                  //course section
                  CoursesList(),
                  SizedBox(height: 30.h),
                  Divider(),
                  SizedBox(height: 30.h),

                  //other course section
                  OtherSection(),
                  SizedBox(height: 30.h),

                  //exam section
                  ExamSection(),
                  SizedBox(height: 30.h),
                  Divider(),
                  SizedBox(height: 30.h),

                  //class activities
                  ClassActivities(),
                  SizedBox(height: 30.h),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
