// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:udemy/constants/colors.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Account",
                  style: TextStyle(
                      color: defaultColor,
                      fontWeight: FontWeight.bold,
                      fontSize: 18),
                ),
                IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.shopping_cart_outlined,
                      color: defaultColor,
                    ))
              ],
            ),
          ),
          Expanded(
              child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 300,
                  color: defaultColor,
                ),
                headLabel(context, label: "video preferences"),
                buildTile(label: "Download option"),
                buildTile(label: "Video playback option"),
                headLabel(context, label: "Account settings"),
                buildTile(label: "Account security"),
                buildTile(label: "Email notification preferences"),
                buildTile(label: "Learning reminders"),
                headLabel(context, label: "Help and support"),
                buildTile(label: "About Udemy"),
                buildTile(label: "About Udemy Business"),
                buildTile(label: "Frequently asked questions"),
                buildTile(label: "Share the Udemy app"),
                headLabel(context, label: "Diagnostics"),
                buildTile(label: "Status"),
                Center(
                    child: Text("Sign out",
                        style: TextStyle(
                            color: secondaryColor,
                            fontSize: 22,
                            fontWeight: FontWeight.bold))),
                SizedBox(height: 15),
                Center(
                  child: Text(
                    "udemy v8.8.0",
                    style: TextStyle(color: unSelectedColor),
                  ),
                ),
                SizedBox(height: 100)
              ],
            ),
          ))
        ],
      ),
    );
  }

  Padding headLabel(BuildContext context, {required String label}) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Text(
        label,
        style: Theme.of(context)
            .textTheme
            .subtitle1!
            .copyWith(color: unSelectedColor, fontWeight: FontWeight.bold),
      ),
    );
  }

  ListTile buildTile({required String label}) {
    return ListTile(
      title: Text(label, style: TextStyle(color: defaultColor, fontSize: 18)),
      trailing: Icon(Icons.arrow_forward_ios_outlined, color: unSelectedColor),
    );
  }
}
