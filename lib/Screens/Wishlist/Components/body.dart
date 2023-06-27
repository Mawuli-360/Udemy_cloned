// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:cached_network_image/cached_network_image.dart';
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
                  "Wishlist",
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
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 300,
                  color: defaultColor,
                  child: CachedNetworkImage(
                    imageUrl:
                        "https://s.udemycdn.com/browse_components/flyout/empty-shopping-cart-v2.jpg",
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
          )
        ],
      ),
    );
  }
}
