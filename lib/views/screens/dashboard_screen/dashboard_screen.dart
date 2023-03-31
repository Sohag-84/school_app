// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import 'components/appbar_container.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            AppBarContainer(),
          ],
        ),
      ),
    );
  }
}

