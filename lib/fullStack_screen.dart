import 'package:assignment8/content_list.dart';
import 'package:flutter/material.dart';

class FullStack extends StatelessWidget {
  static const String routeName = "full_stack";
  TextStyle textStyle = const TextStyle(
    color: Colors.white,
    fontSize: 20,
    fontWeight: FontWeight.w600,
  );

  List<String> fullStack = [
    "HTML",
    "HTML 5",
    "CSS",
    "CSS3",
    "SASS",
    "Bootstrap 4",
    "JavaScript"
        "Regular expressions",
    "ECMAScript 6",
    "JQuery",
    "angular 7",
    "fabric.js",
    "AJAX",
    "JSON",
    "Hosting and domains",
    "Freelancing tips and tricks",
    "PHP",
    "MYSQL",
    "MYSQL advanced queries and triggers",
  ];

  List<String> fullStackPart = [
    "Design Patterns",
    "MVC",
    "laravel",
    "build Api , Api authentication",
    "connect wordpress with laravel",
    "build wordpress web service",
    "agile",
    "Scrum",
    "Software development process"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 0, 31, 131),
        title: const Text(
          "RouteAppOne",
          style: TextStyle(fontSize: 18, color: Colors.white),
        ),
      ),
      body: Container(
        height: MediaQuery.sizeOf(context).height,
        width: MediaQuery.sizeOf(context).width,
        decoration: const BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.cover, image: AssetImage("assets/images/Bg.jpg")),
        ),
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset("assets/images/fullStack.jpeg"),
              const SizedBox(height: 8),
              ContentList(
                  title: "",
                  content: fullStack,
                  height: MediaQuery.sizeOf(context).height * 0.64),
              ContentList(
                  title: "• OOP ",
                  content: fullStackPart,
                  height: MediaQuery.sizeOf(context).height * 0.33)
            ],
          ),
        ),
      ),
    );
  }
}
