import 'package:assignment8/android_widget.dart';
import 'package:assignment8/course_widget.dart';
import 'package:assignment8/fullStack_screen.dart';
import 'package:assignment8/ios_course.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  static const String routeName = "home_screen";

  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 0, 31, 131),
        title: const Text(
          "RouteAppOne",
          style: TextStyle(
            fontSize: 18,
            color: Colors.white,
          ),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            children: [
              const Padding(padding: EdgeInsets.all(8)),
              Row(
                children: [
                  CourseWidget(
                      routeName: AndroidCourse.routeName,
                      nameCourse: "ANDROID COURSE",
                      pathName: "assets/images/Android.jpeg")
                ],
              ),
              const SizedBox(height: 2),
              Row(
                children: [
                  CourseWidget(
                      routeName: IosCourse.routeName,
                      nameCourse: "IOS COURSE",
                      pathName: "assets/images/IOS.jpeg")
                ],
              ),
              const SizedBox(height: 2),
              Row(
                children: [
                  CourseWidget(
                      routeName: FullStack.routeName,
                      nameCourse: "FULL STACK",
                      pathName: "assets/images/fullStack.jpeg")
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
