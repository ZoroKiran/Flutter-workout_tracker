// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:workout_tracker/pages/home/widgets/activity.dart';
import 'package:workout_tracker/pages/home/widgets/current.dart';
import 'package:workout_tracker/pages/home/widgets/header.dart';
import 'package:workout_tracker/widgets/bottom_navigation.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    //instead of container, we will use column. Column takes children.
    return Scaffold(
      body: Column(
        children: [
          AppHeader(),
          CurrentPrograms(),
          RecentActivities(),
          BottomNavigation(),
        ],
      ),
    );
  }
}
