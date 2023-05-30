// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:workout_tracker/pages/details/widgets/dates.dart';
import 'package:workout_tracker/pages/details/widgets/graph.dart';
import 'package:workout_tracker/pages/details/widgets/info.dart';
import 'package:workout_tracker/pages/details/widgets/stats.dart';
import 'package:workout_tracker/pages/details/widgets/steps.dart';
import 'package:workout_tracker/widgets/bottom_navigation.dart';

class DetailsPage extends StatelessWidget {
  const DetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
            size: 16,
          ),
        ),
        title: Text(
          'Activity',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 14,
          ),
        ),
        centerTitle: true,
        actions: [
          TextButton(
            onPressed: () {},
            child: Icon(
              Icons.notifications,
              size: 16,
            ),
            style: ElevatedButton.styleFrom(
                padding: EdgeInsets.all(5),
                maximumSize: Size(30, 30),
                minimumSize: Size(30, 30),
                shape: CircleBorder(),
                backgroundColor: Color(0xffffe6da),
                foregroundColor: Color(0xfffa7a3b)),
          ),
        ],
      ),
      body: Column(
        children: [
          Dates(),
          Steps(),
          Graph(),
          Info(),
          Stats(),
          BottomNavigation(),
        ],
      ),
    );
  }
}
