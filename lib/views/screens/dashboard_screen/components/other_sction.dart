import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:school_app/constant/app_colors.dart';
import 'package:school_app/constant/app_text.dart';
import 'package:school_app/constant/list.dart';
import 'package:school_app/views/screens/dashboard_screen/widgets/custom_card.dart';

class OtherSection extends StatelessWidget {
  const OtherSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          other,
          style: TextStyle(
            fontSize: 22.sp,
            color: selectedColor,
            fontWeight: FontWeight.w700,
          ),
        ),
        SizedBox(height: 18.h),
         SizedBox(
          height: 108.h,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: otherImageList.length,
            itemBuilder: (contex, index) {
              return CustomCard(
                image: otherImageList[index],
                title: otherTextList[index],
              );
            },
          ),
        ),
      
      ],
    );
  }
}
