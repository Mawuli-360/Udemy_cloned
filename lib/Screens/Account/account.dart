// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:udemy/Screens/Account/Components/body.dart';
import 'package:udemy/constants/colors.dart';

class Account extends StatelessWidget {
  const Account({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: bgColor,
        body:  Body(),
      ),
    );
  }
}
