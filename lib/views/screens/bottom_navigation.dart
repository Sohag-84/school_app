import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:school_app/constant/app_colors.dart';
import 'package:school_app/constant/app_text.dart';
import 'package:school_app/constant/image_path.dart';
import 'package:school_app/constant/list.dart';
import 'package:school_app/controllers/bottom_nav_controller.dart';

class BottomNavigatonScreen extends StatelessWidget {
  BottomNavigatonScreen({Key? key}) : super(key: key);

  final controller = Get.put(BottomNavController());

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          currentIndex: controller.pageIndex.value,
          onTap: (value) {
            controller.pageIndex.value = value;
          },
          selectedItemColor: selectedColor,
          unselectedItemColor: unSelectedColor,
          backgroundColor: Colors.white,
          items: [
            BottomNavigationBarItem(
              icon: Image.asset(
                icMenu,
                width: 19.w,
                height: 20.h,
                color: controller.pageIndex.value == 0
                    ? selectedColor
                    : unSelectedColor,
              ),
              label: menu,
            ),
            BottomNavigationBarItem(
              icon: Image.asset(
                icInbox,
                width: 19.w,
                height: 20.h,
                color: controller.pageIndex.value == 1
                    ? selectedColor
                    : unSelectedColor,
              ),
              label: inbox,
            ),
            BottomNavigationBarItem(
              icon: Image.asset(
                icDashboard,
                width: 19.w,
                height: 20.h,
                color: controller.pageIndex.value == 2
                    ? selectedColor
                    : unSelectedColor,
              ),
              label: dashboard,
            ),
            BottomNavigationBarItem(
              icon: Image.asset(
                icProfile,
                width: 19.w,
                height: 20.h,
                color: controller.pageIndex.value == 3
                    ? selectedColor
                    : unSelectedColor,
              ),
              label: profile,
            ),
          ],
        ),
        body: pageList[controller.pageIndex.value],
      );
    });
  }
}
