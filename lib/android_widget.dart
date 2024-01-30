import 'package:assignment8/content_list.dart';
import 'package:flutter/material.dart';

class AndroidCourse extends StatelessWidget {
  static const String routeName = "android_screen";

  AndroidCourse({super.key});

  TextStyle textStyle = const TextStyle(
    color: Colors.white,
    fontSize: 20,
    fontWeight: FontWeight.w600,
  );

  List<String> introContent = [
    "Overview",
    "Compiler and JVM",
    "Project Structure",
    "Hello World Application",
    "Variables and Data types",
    "Operators",
    "Conditional statements "
        "( IF - Switch)",
    "Loops"
        " ( For - While - Do While)"
  ];
  List<String> basicsContent = [
    "nested loops",
    "Strings",
    "Arrays",
    "functions",
  ];
  List<String> oopContent = [
    " Classes and Objects",
    "Encapsulation and data hiding",
    "Inheritance",
    "Polymorphism",
    " Abstraction (Abstract classes - Interfaces)"
  ];
  List<String> collectionContent = [
    "Sets, Lists",
    "Threading",
    "Generics Class and Method",
  ];
  List<String> introAndroid = [
    "Android OS",
    "Android Versions",
    "OS Architecture",
    "Application Component",
    "Android Studio and Gradle",
    "Creating Hello World"
  ];
  List<String> uiComponents = [
    "Layouts(Constraints Layout- Linear Layout )",
    "Using resources ( drawables, Strings colors, and Styles ) "
  ];
  List<String> uiComponent = [
    "Menu",
    "Support Localization",
    " Support Orientation",
  ];
  List<String> intents = ["Intents", "Intent Filters"];
  List<String> fragments = [
    "what is fragments",
    "Fragment manager and transaction",
    "tablelayout, NavigationDrawer, BottomNavigation"
  ];
  List<String> dialogs = [
    "Alert Dialog",
    "Display dialog with items",
    "Custom dialogs (Dialog Fragment)"
  ];
  List<String> data = [
    "Shared Preference",
    "Room (Database Library) - from google Arch Components"
  ];
  List<String> threading = ["Threading", "Service and Intent Service"];
  List<String> apis = [
    "what is JSON ?",
    "how to make network calls and APIs",
    " Consuming Web APIs",
    "Using Retrofit and Gson Libraries",
    "how to cache Apis",
    "using Room and Retrofit Together",
    "what is Repository Pattern?"
  ];
  List<String> fireBase = ["how to deal with Realtime Database"];
  List<String> notifications = [
    "Simple Notification",
    "firebase to push Notifications",
    "one signal push notifications SDK"
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
        // height: MediaQuery.sizeOf(context).height,
        // width: MediaQuery.sizeOf(context).width,
        decoration: const BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.cover, image: AssetImage("assets/images/Bg.jpg")),
        ),
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset("assets/images/Android.jpeg"),
              const SizedBox(height: 10),
              Text(
                "Part 1 (Java SE)",
                style: textStyle,
              ),
              const SizedBox(height: 4),
              ContentList(
                  title: " Introduction to Java Programming",
                  content: introContent,
                  height: MediaQuery.sizeOf(context).height * 0.3),
              ContentList(
                  title: "2. Basics",
                  content: basicsContent,
                  height: MediaQuery.sizeOf(context).height * 0.15),
              ContentList(
                title: "3. Object Oriented Programming",
                content: oopContent,
                height: MediaQuery.sizeOf(context).height * 0.22,
              ),
              ContentList(
                  title: "4. Collections and Generics",
                  content: collectionContent,
                  height: MediaQuery.sizeOf(context).height * 0.12),
              Text("Part 2 (Android Development)", style: textStyle),
              const SizedBox(height: 8),
              ContentList(
                  title: "1. Introduction to Android",
                  content: introAndroid,
                  height: MediaQuery.sizeOf(context).height * 0.25),
              ContentList(
                  title: "2. UI Components",
                  content: uiComponents,
                  height: MediaQuery.sizeOf(context).height * 0.14),
              ContentList(
                  title: "3. UI Components II",
                  content: uiComponent,
                  height: MediaQuery.sizeOf(context).height * 0.12),
              ContentList(
                  title: "4. Intents and Activities",
                  content: intents,
                  height: MediaQuery.sizeOf(context).height * 0.10),
              ContentList(
                  title: "5. Fragments",
                  content: fragments,
                  height: MediaQuery.sizeOf(context).height * 0.15),
              ContentList(
                  title: "6. Dialogs",
                  content: dialogs,
                  height: MediaQuery.sizeOf(context).height * 0.12),
              ContentList(
                  title: "7. Data Storage",
                  content: data,
                  height: MediaQuery.sizeOf(context).height * 0.12),
              ContentList(
                  title: "8. Threading and Services",
                  content: threading,
                  height: MediaQuery.sizeOf(context).height * 0.10),
              ContentList(
                  title: "9. Web services and APIs",
                  content: apis,
                  height: MediaQuery.sizeOf(context).height * 0.28),
              ContentList(
                  title: "10. FireBase RealTime Database",
                  content: fireBase,
                  height: MediaQuery.sizeOf(context).height * 0.10),
              ContentList(
                  title: "11. Notifications",
                  content: notifications,
                  height: MediaQuery.sizeOf(context).height * 0.12),
            ],
          ),
        ),
      ),
    );
  }
}
