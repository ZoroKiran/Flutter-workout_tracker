// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:workout_tracker/pages/details/details.dart';
import 'package:workout_tracker/pages/home/home.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);

  runApp(const MyApp());
}

//put back stateless widget
//stl
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    //remove the original container/placeholder and replace it with material app, which contains theming data around the materil design specification
    return MaterialApp(
      title: 'Workout Tracker',
      theme: ThemeData(),
      //to get right of the debug banner on the top right hand side in the app.
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => HomePage(),
        '/details': (context) => DetailsPage(),
      },
      initialRoute: '/',
    );
  }
}
