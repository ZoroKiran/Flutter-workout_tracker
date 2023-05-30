import 'package:flutter/material.dart';

enum ProgramType {
  cardio,
  chest,
}

class FitnessProgram {
  final AssetImage image;
  final String name;
  final String cals;
  final String time;
  final ProgramType type;

  FitnessProgram({
    required this.image,
    required this.name,
    required this.cals,
    required this.time,
    required this.type,
  });
}

final List<FitnessProgram> fitnessPrograms = [
  FitnessProgram(
    image: AssetImage('assets/running_get_ready.jpg'),
    name: 'Cardio',
    cals: '220kCal',
    time: '20min',
    type: ProgramType.cardio,
  ),
  FitnessProgram(
    image: AssetImage('assets/chest_flies.jpg'),
    name: 'Chest Dumbell Flies',
    cals: '220kCal',
    time: '10min',
    type: ProgramType.chest,
  ),
];
