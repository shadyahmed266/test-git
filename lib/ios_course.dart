import 'package:assignment8/content_list.dart';
import 'package:flutter/material.dart';

class IosCourse extends StatelessWidget {
  static const String routeName = "ios_screen";

  TextStyle textStyle = const TextStyle(
    color: Colors.white,
    fontSize: 20,
    fontWeight: FontWeight.w600,
  );

  List<String> intro = [
    " a. Installing OS X virtual machine",
    " b. Installing Xcode and the iOS SDK",
    " c. A guided tour of Xcode",
    " d. An Introduction to Xcode playgrounds"
  ];
  List<String> swift = [
    " a. Swift Data Types, Constants, and Variables",
    " b. Swift Operators and Expressions",
    " c. Swift Flow Control",
    " d. The Swift Switch Statement",
    " e. An Overview of Swift Functions",
    " f. The Basics of Object Oriented Programming in Swift",
    " g. An Introduction to Swift Subclassing and Extensions",
    " h. Working with Array and Dictionary Collections in Swift",
    " i. Understanding Error Handling in Swift"
  ];
  List<String> view = [
    " a. Learning different types of Xcode projects",
    " b. Creating first application",
    " c. Introduction to application file structure.",
    " d. Using Storyboards in Xcode",
    " e. Introduction to basic UI Components.",
    " f. Creating basic UI Components using Storyboard",
    " g. Creating basic UI Components programmatically",
    " h. Customizing UI Components.",
    " i. An Introduction to Auto Layout in iOS",
    " j. Working with iOS Auto Layout Constraints in Interface Builder",
    " k. Creating Navigation controller and learning its flow",
    " l. Creating tab-based application",
    " m. Adding custom fonts",
    " n. Creating table view",
    " o. Example about gestures",
    " p. Creating custom cells for tables",
    " q. Animations",
    " r. Examples about subclass",
  ];
  List<String> localData = [
    " a. Working with UserDefaults",
    " b. Introduction to CoreData",
    " c. Introduction to Realm",
    " d. Creating data models",
    " e. Saving retrieving data",
  ];
  List<String> todo = [
    " a. Implement the interface",
    " b. Create realm models",
    " c. restore ToDo lists"
  ];

  List<String> cocoaPods = [
    " a. Introduction to Cocoapods",
    " b. Installing sample pods",
    " c. Learning how to use pods in project",
    " d. How to look for a useful pod",
    " e. Example using Realm database thirdparty",
  ];

  List<String> networking = [
    " a. Working with Alamofire pod",
    " b. Installing and configuring Alamofire",
    " c. Learning how to send GET",
    " d. Learning how to parse JSON responses using ObjectMapper pod",
    " e. Creating sample login screen with POST",
    " f. Creating sample table view displays data from JSON object"
  ];

  List<String> animator = [
    " a. Deal with physics engine",
    " b. Apply Gravity field to dynamic objects",
    " c. Apply collision field to dynamic objects",
    " d. Apply other physics fields to dynamic objects"
  ];

  List<String> maps = [
    " a. Introduction to maps",
    " b. Showing current user location",
    " c. Adding pins"
  ];

  List<String> design = [
    " a. Creational: Singleton.",
    " b. Structural: MVC, Decorator, Adapter, Facade.",
    " c. Behavioral: Observer"
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
              Image.asset("assets/images/IOS.jpeg"),
              const SizedBox(height: 10),
              Text(
                "OOP refreshment",
                style: textStyle,
              ),
              const SizedBox(height: 4),
              ContentList(
                  title: " Introduction",
                  content: intro,
                  height: MediaQuery.sizeOf(context).height * 0.2),
              ContentList(
                  title: " Swift Programming Language",
                  content: swift,
                  height: MediaQuery.sizeOf(context).height * 0.47),
              ContentList(
                  title: " Views, Layouts, and Storyboards.",
                  content: view,
                  height: MediaQuery.sizeOf(context).height * 0.85),
              ContentList(
                  title: " Working with local data",
                  content: localData,
                  height: MediaQuery.sizeOf(context).height * 0.20),
              ContentList(
                  title: " ToDo app project",
                  content: todo,
                  height: MediaQuery.sizeOf(context).height * 0.13),
              ContentList(
                  title: " CocoaPods",
                  content: cocoaPods,
                  height: MediaQuery.sizeOf(context).height * 0.23),
              ContentList(
                  title: " Networking",
                  content: networking,
                  height: MediaQuery.sizeOf(context).height * 0.32),
              ContentList(
                  title: " Dynamic animator",
                  content: animator,
                  height: MediaQuery.sizeOf(context).height * 0.23),
              ContentList(
                  title: " Working with Maps",
                  content: maps,
                  height: MediaQuery.sizeOf(context).height * 0.13),
              ContentList(
                  title: " Apply some design patterns",
                  content: design,
                  height: MediaQuery.sizeOf(context).height * 0.15),
              Text("Creating final project depends on attendees needs",
                  style: textStyle),
            ],
          ),
        ),
      ),
    );
  }
}
