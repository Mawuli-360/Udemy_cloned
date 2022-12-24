// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import '../../../constants/colors.dart';

class BrowseCard extends StatelessWidget {
  const BrowseCard({
    Key? key,  required this.label, required this.listCourses,
  }) : super(key: key);

  final String label;
  final List listCourses;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        RichText(
            text: TextSpan(children: [
          TextSpan(
            text: "Top courses in ",
            style: TextStyle(
                color: defaultColor, fontSize: 24, fontWeight: FontWeight.bold),
          ),
          TextSpan(
            text: label,
            style: TextStyle(
                color: secondaryColor,
                fontSize: 24,
                fontWeight: FontWeight.bold),
          ),
        ])),
        SizedBox(
          height: 255,
          child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: listCourses.length,
              itemBuilder: ((context, index) {
                return listCourses[index];
              })),
        )
      ],
    );
  }
}
