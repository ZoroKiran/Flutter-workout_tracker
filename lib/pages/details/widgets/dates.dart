// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

import '../../../helpers.dart';

class Dates extends StatelessWidget {
  const Dates({super.key});

  @override
  Widget build(BuildContext context) {
    List<DateBox> dateBoxes = [];

    DateTime today = DateTime.now();
    DateTime monday = today.subtract(Duration(days: today.weekday - 1));

    for (int i = 0; i < 7; i++) {
      dateBoxes.add(DateBox(
        date: monday,
        active: today == monday ? true : false,
      ));
      monday = monday.add(Duration(days: 1));
    }

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: dateBoxes,
        ),
      ),
    );
  }
}

class DateBox extends StatelessWidget {
  final bool active;
  final DateTime date;

  const DateBox({super.key, this.active = false, required this.date});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50,
      height: 70,
      decoration: BoxDecoration(
        gradient: active
            ? LinearGradient(colors: [
                Color(0xff92e2ff),
                Color(0xff1ebdf8),
              ], begin: Alignment.topCenter)
            : null,
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          color: Color(0xffe1e1e1),
        ),
      ),
      child: DefaultTextStyle.merge(
        style: active ? TextStyle(color: Colors.white) : null,
        child: Column(
          children: [
            Text(
              daysOfWeek[date.weekday]!,
              style: TextStyle(
                fontSize: 10,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 8,
            ),
            Text(
              date.day.toString().padLeft(2, '0'),
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
