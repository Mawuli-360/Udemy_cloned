// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:udemy/constants/colors.dart';
import 'search_appbar.dart';
import 'searches_chip.dart';

class Body extends StatelessWidget {
  Body({super.key});

  final List<String> _searches = [
    "python",
    "java",
    "excel",
    "sql",
    "javascript",
    "aws",
    "power bi",
    "digital marketing",
    "react",
    "c#",
    "photoshop",
    "sap"
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        children: [
          SearchAppBar(),
          Expanded(
              child: SizedBox(
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 10.0, bottom: 6),
                  child: Text(
                    "Top Searches",
                    style: Theme.of(context).textTheme.headline5!.copyWith(
                        color: defaultColor, fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: SizedBox(
                    height: 200,
                    child: Wrap(
                      spacing: 1.5,
                      runSpacing: 4,
                      children: List.generate(_searches.length,
                          (index) => TopSearches(label: _searches[index])),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text(
                    "Browse categories",
                    style: Theme.of(context).textTheme.headline5!.copyWith(
                        color: defaultColor, fontWeight: FontWeight.bold),
                  ),
                ),
                ListTile(
                  leading: Icon(Icons.computer, color: defaultColor),
                  title: Text("IT & Software",
                      style: TextStyle(color: defaultColor)),
                  trailing: Icon(Icons.arrow_forward_ios_outlined,
                      color: defaultColor),
                )
              ],
            ),
          ))
        ],
      ),
    );
  }
}
