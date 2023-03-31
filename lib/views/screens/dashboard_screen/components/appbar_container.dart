// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:school_app/constant/app_text.dart';
import 'package:school_app/constant/image_path.dart';
import 'package:school_app/constant/list.dart';
import 'package:school_app/views/screens/dashboard_screen/widgets/custom_date_time.dart';

class AppBarContainer extends StatelessWidget {
  const AppBarContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 222.h,
      padding: EdgeInsets.symmetric(horizontal: 20.h),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: const [
            Color(0xFF27A7CF),
            Color(0xFF176E9E),
          ],
        ),
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(24.r),
          bottomRight: Radius.circular(24.r),
        ),
      ),
      child: Column(
        children: [
          SizedBox(height: 70.h),
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        goodMorning,
                        style: TextStyle(
                          color: Color(0xFFFAFAFA).withOpacity(.90),
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      Text(
                        name,
                        style: TextStyle(
                          color: Color(0xFFFAFAFA),
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 5),
                  Row(
                    children: [
                      Text(
                        school,
                        style: TextStyle(
                          color: Color(0xFFFAFAFA),
                          fontSize: 18.sp,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      Text(
                        welcomeText,
                        style: TextStyle(
                          color: Color(0xFFFAFAFA).withOpacity(.90),
                          fontSize: 18.sp,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Expanded(child: Container()),
              Center(
                child: CircleAvatar(
                  backgroundImage: AssetImage(imgProfile),
                ),
              ),
            ],
          ),
          SizedBox(height: 20.h),
          SizedBox(
            height: 48.h,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: dateList.length,
              itemBuilder: (context, index) {
                return CustomDateTime(
                  day: daysList[index],
                  date: dateList[index],
                  isSelected: index == 5 ? true : false,
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
