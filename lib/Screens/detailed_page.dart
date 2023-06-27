// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:udemy/constants/colors.dart';

class DetailedPage extends StatelessWidget {
  const DetailedPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: Padding(
            padding: const EdgeInsets.all(8.0),
            child: IconButton(
              icon: const Icon(
                Icons.arrow_back,
                color: defaultColor,
                size: 25,
              ),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ),
          actions: [
            IconButton(
              icon: const Icon(Icons.share, color: defaultColor),
              onPressed: () {},
            ),
            IconButton(
              icon:
                  const Icon(Icons.shopping_cart_outlined, color: defaultColor),
              onPressed: () {},
            ),
          ]),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        child: Container(
          color: Colors.red,
          width: double.infinity,
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Container(
              width: double.infinity,
              height: 230,
              color: defaultColor,
            ),
            Text("Dart & Flutter | The Complete Flutter Development Course"),
            Text(
                "2022 Complete Guide To Flutter Development-Build 7 Native Cross-Platform iOS and Android Apps Using Flutter."),
            Text("4.5 ⭐⭐⭐⭐⭐"),
            Text("(521 ratings) 14,909 students"),
            ListTile(
              leading: Icon(Icons.info),
              title: Text("Last updated 4/2022"),
            ),
            ListTile(
              leading: Icon(Icons.public),
              title: Text("English"),
            ),
            Text("GHC 14.70"),
            GestureDetector(
              onTap: () {},
              child: Container(
                height: 60,
                width: double.infinity,
                color: Colors.purple,
                child: Center(child: Text("Buy now")),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    width: 190,
                    height: 60,
                    color: Colors.purple,
                    child: Center(child: Text("Buy now")),
                  ),
                ),
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    width: 190,
                    height: 60,
                    color: Colors.purple,
                    child: Center(child: Text("Buy now")),
                  ),
                ),
              ],
            )
          ]),
        ),
      ),
    );
  }
}
