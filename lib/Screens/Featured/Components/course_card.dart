import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:udemy/Screens/detailed_page.dart';
import 'package:udemy/constants/colors.dart';

class CourseCard extends StatelessWidget {
  const CourseCard({
    Key? key,
    required this.image,
    required this.description,
    required this.authorName,
    required this.rate,
    required this.numberOfRate,
    required this.price,
  }) : super(key: key);

  final String description, authorName, rate, numberOfRate, price;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(
        height: 250,
        width: 190,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const DetailedPage()));
              },
              child: CachedNetworkImage(imageUrl: image),
            ),
            Text(
              description,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: const TextStyle(
                  color: defaultColor, fontWeight: FontWeight.bold),
            ),
            Text(
              authorName,
              style: const TextStyle(color: unSelectedColor),
            ),
            Row(
              children: [
                Text(rate, style: const TextStyle(color: Colors.orange)),
                Row(
                  children: List.generate(
                    5,
                    (index) => const Icon(
                      Icons.star,
                      color: Colors.orange,
                      size: 18,
                    ),
                  ),
                ),
                Text(
                  numberOfRate,
                  style: const TextStyle(color: unSelectedColor),
                ),
              ],
            ),
            Text("GHS $price", style: const TextStyle(color: defaultColor)),
          ],
        ),
      ),
    );
  }
}
