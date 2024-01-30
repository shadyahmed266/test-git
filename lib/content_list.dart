import 'package:flutter/material.dart';

class ContentList extends StatelessWidget {
  String title;
  List<String> content;
  double height;

  TextStyle textStyle = const TextStyle(
    color: Colors.white,
    fontSize: 20,
    fontWeight: FontWeight.w600,
  );

  ContentList(
      {super.key,
      required this.title,
      required this.content,
      required this.height});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(title, style: textStyle),
        SizedBox(
          height: height,
          child: ListView.separated(
              itemCount: content.length,
              physics: const NeverScrollableScrollPhysics(),
              separatorBuilder: (context, index) => const SizedBox(height: 5),
              itemBuilder: (context, index) {
                return Text("\u2022 ${content[index]}", style: textStyle);
              }),
        ),
      ],
    );
  }
}
