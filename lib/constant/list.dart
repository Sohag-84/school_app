import 'package:flutter/material.dart';
import 'package:school_app/constant/image_path.dart';
import 'package:school_app/views/screens/dashboard_screen/dashboard_screen.dart';

import 'app_text.dart';

const List pageList = [
  Center(
    child: Text(menu),
  ),
  Center(
    child: Text(inbox),
  ),
  DashboardScreen(),
  Center(
    child: Text(profile),
  ),
];

//date list
const List daysList = [sat, sun, mon, tue, wed, thur, fri];
const List dateList = ["12", "13", "14", "15", "16", "17", "18"];

//course list
const List courseImageList = [icScience, icMath, icBusiness, icScience, icMath];
const List courseTextList = [science, math, business, science, math];

//others section list
const List otherImageList = [icClass, icGrade, icRoutine];
const List otherTextList = [classText, grade, routine];
