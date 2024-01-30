import 'package:flutter/material.dart';

class CourseWidget extends StatelessWidget {
  String nameCourse;

  String pathName;

  String routeName;

  CourseWidget(
      {super.key,
      required this.pathName,
      required this.nameCourse,
      required this.routeName});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
          Image.asset(pathName),
          Container(height: 2),
          ElevatedButton(
            style: ButtonStyle(
              shape: MaterialStatePropertyAll(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              padding: const MaterialStatePropertyAll(EdgeInsets.all(6)),
              backgroundColor: const MaterialStatePropertyAll(
                Color.fromARGB(
                  255,
                  0,
                  31,
                  131,
                ),
              ),
            ),
            onPressed: () {
              Navigator.of(context).pushNamed(routeName);
            },
            child: Center(
              child: Padding(
                padding: const EdgeInsets.all(8),
                child: Text(nameCourse),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
