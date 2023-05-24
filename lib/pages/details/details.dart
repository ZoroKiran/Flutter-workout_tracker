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
