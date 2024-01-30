import 'package:assignment8/android_widget.dart';
import 'package:assignment8/fullStack_screen.dart';
import 'package:assignment8/ios_course.dart';
import 'package:assignment8/splash_screen.dart';
import 'package:flutter/material.dart';

import 'home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: SplashScreen.routeName,
      routes: {
        SplashScreen.routeName: (context) => const SplashScreen(),
        HomeScreen.routeName: (context) => const HomeScreen(),
        AndroidCourse.routeName: (context) => AndroidCourse(),
        IosCourse.routeName: (context) => IosCourse(),
        FullStack.routeName: (context) => FullStack(),
      },
    );
  }
}
