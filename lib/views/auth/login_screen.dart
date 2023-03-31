// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:school_app/constant/app_text.dart';
import 'package:school_app/views/screens/bottom_navigation.dart';

import '../../constant/image_path.dart';
import 'components/custom_text_field.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(30.w),
            child: Column(
              children: [
                Image.asset(imgLogin),
                SizedBox(height: 40.h),
                Text(
                  signin,
                  style: TextStyle(
                    fontSize: 40.sp,
                    color: Color(0xFF3BBBE3),
                    fontWeight: FontWeight.w700,
                  ),
                ),
                SizedBox(height: 32.h),
                CustomTextField(hintText: phone),
                SizedBox(height: 14.h),
                CustomTextField(hintText: password),
                SizedBox(height: 14.h),
                Row(
                  children: [
                    Text(
                      forgorPassword,
                      style: TextStyle(
                        color: Color(0xFF223E4B).withOpacity(.50),
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Text(
                      clickHere,
                      style: TextStyle(
                        color: Color(0xFF3BBBE3),
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 40.h),
                InkWell(
                  onTap: () {
                    Get.to(()=>BottomNavigatonScreen());
                  },
                  child: Container(
                    height: 46.h,
                    width: 240.w,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.r),
                        gradient: LinearGradient(
                          begin: Alignment.bottomRight,
                          end: Alignment.topRight,
                          colors: [
                            Color(0xFF27A7CF),
                            Color(0xFF176E9E),
                          ],
                        ),),
                    child: Center(
                      child: Text(
                        loginBtn,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 30.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      newAccount,
                      style: TextStyle(
                        color: Color(0xFF223E4B).withOpacity(.50),
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Text(
                      clickHere,
                      style: TextStyle(
                        color: Color(0xFF3BBBE3),
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
