// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:udemy/Screens/Search/Components/body.dart';
import 'package:udemy/constants/colors.dart';

class Search extends StatelessWidget {
  const Search({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: bgColor,
        body: Body(),
      ),
    );
  }
}
