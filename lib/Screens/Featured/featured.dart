// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:udemy/Screens/Featured/Components/body.dart';
import 'package:udemy/constants/colors.dart';

class Featured extends StatelessWidget {
  static String routeName = "/feature";

  const Featured({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      body: Body(),
    );
  }
}
