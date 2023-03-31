import 'package:flutter/material.dart';
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
const List dateList = ["12", "13", "13", "14", "15", "16", "17"];
