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
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "My courses",
                  style: TextStyle(
                      fontSize: 18,
                      color: defaultColor,
                      fontWeight: FontWeight.bold),
                ),
                Row(
                  children: [
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.search,
                          color: defaultColor,
                        )),
                    const SizedBox(width: 3),
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.shopping_cart_outlined,
                          color: defaultColor,
                        ))
                  ],
                ),
              ],
            ),
          ),
          SizedBox(
            height: 140,
            child: Padding(
              padding: const EdgeInsets.only(left: 8.0, top: 15.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                      width: 90,
                      height: 60,
                      color: defaultColor,
                      child: CachedNetworkImage(
                        imageUrl:
                            "https://img-c.udemycdn.com/course/750x422/4152490_1047_6.jpg",
                      )),
                  const SizedBox(width: 10),
                  const Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Flutter 2.2 & Firebase, build a complete app from scratch",
                          softWrap: true,
                          maxLines: 2,
                          style: TextStyle(
                              color: defaultColor,
                              fontSize: 18,
                              fontWeight: FontWeight.bold),
                          overflow: TextOverflow.ellipsis,
                        ),
                        SizedBox(height: 8),
                        Text(
                          "Hadi Kachmar",
                          maxLines: 2,
                          style: TextStyle(color: defaultColor),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          "Start course",
                          style: TextStyle(
                              color: secondaryColor,
                              fontWeight: FontWeight.bold,
                              fontSize: 19),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
