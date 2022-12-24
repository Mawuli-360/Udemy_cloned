import 'package:flutter/material.dart';

import 'colors.dart';

var inputDecoration = const InputDecoration(
    prefixIcon: Icon(Icons.search, color: defaultColor),
    prefixIconColor: defaultColor,
    hintStyle: TextStyle(
        color: defaultColor, fontSize: 20, fontWeight: FontWeight.bold),
    hintText: "Search",
    focusColor: Colors.grey,
    focusedBorder: InputBorder.none);
