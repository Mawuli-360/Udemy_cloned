import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:udemy/Screens/Featured/Components/browse_card.dart';
import 'package:udemy/Screens/Featured/Components/list_of_coursecard.dart';
import 'package:udemy/constants/colors.dart';

class Body extends StatelessWidget {
  Body({super.key});

  final List<String> category1 = [
    "Development",
    "IT & Development",
    "Office Productivity",
    "Design",
    "Lifestyle",
    "Health & Fitness",
    "Music"
  ];

  final List<String> category2 = [
    "Business",
    "Finance & Accounting",
    "Personal Development",
    "Marketing",
    "Photography & Video",
    "Teaching & Academics",
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                // CHANGE TO CONTAINER
                child: Align(
                  alignment: Alignment.centerRight,
                  child: IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.shopping_cart_outlined,
                        color: defaultColor,
                      )),
                ),
              ),
              CachedNetworkImage(
                  imageUrl:
                      "https://thelogicalindian.com/h-upload/2021/07/05/198685-untitled-design-53.jpg"),
              const SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Learning that fits",
                      // style: GoogleFonts.adamina(
                      //     textStyle: const TextStyle(
                      //         color: defaultColor,
                      //         fontSize: 32,
                      //         fontWeight: FontWeight.w600)),
                    ),
                    const Text(
                      "Skills for your present (and future)",
                      style: TextStyle(color: defaultColor, fontSize: 16),
                    ),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            "Catogeries",
                            style: TextStyle(
                                fontSize: 20,
                                color: defaultColor,
                                fontWeight: FontWeight.bold),
                          ),
                          TextButton(
                              onPressed: () {},
                              child: const Text(
                                "see all",
                                style: TextStyle(color: secondaryColor),
                              ))
                        ]),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              for (var i in category1)
                                Padding(
                                  padding: const EdgeInsets.only(left: 4.0),
                                  child: Chip(
                                    side: const BorderSide(color: defaultColor),
                                    backgroundColor: bgColor,
                                    label: Text(
                                      i,
                                      style: const TextStyle(color: defaultColor),
                                    ),
                                  ),
                                )
                            ],
                          ),
                          Row(
                            children: [
                              for (var i in category2)
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 4.0),
                                  child: Chip(
                                    side: const BorderSide(color: defaultColor),
                                    backgroundColor: bgColor,
                                    label: Text(
                                      i,
                                      style: const TextStyle(color: defaultColor),
                                    ),
                                  ),
                                )
                            ],
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 10),
                    BrowseCard(
                      label: "Design",
                      listCourses: CardList().cards,
                    ),
                    BrowseCard(
                      label: "Business",
                      listCourses: CardList().cards,
                    ),
                    BrowseCard(
                      label: "Development",
                      listCourses: CardList().cards,
                    ),
                    Container(
                      width: double.infinity,
                      height: 180,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          border: Border.all(color: unSelectedColor)),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const Text("Top companies trust udemy",
                              // style: GoogleFonts.playfairDisplay(
                              //     textStyle: const TextStyle(
                              //         color: defaultColor,
                              //         fontSize: 26,
                              //         fontWeight: FontWeight.bold))
                                      ),
                          Image.asset(
                            "asset/images/companies.jpg",
                            width: 500,
                          ),
                          const Text(
                            "Try Udemy Business",
                            style: TextStyle(color: secondaryColor),
                          )
                        ],
                      ),
                    ),
                    const SizedBox(height: 30),
                    BrowseCard(
                      label: "IT & Software",
                      listCourses: CardList().cards,
                    ),
                    BrowseCard(
                      label: "Personal Development",
                      listCourses: CardList().cards,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
