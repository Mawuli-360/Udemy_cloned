import 'package:flutter/material.dart';
import 'package:udemy/Screens/Account/account.dart';
import 'package:udemy/Screens/Featured/featured.dart';
import 'package:udemy/Screens/My_Learning/my_learning.dart';
import 'package:udemy/Screens/Search/search_page.dart';
import 'package:udemy/Screens/Wishlist/wishlist.dart';
import 'package:udemy/constants/colors.dart';

class MainPage extends StatefulWidget {
  static String routeName = "/mainpage";
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  List<Widget> pages = [
    const Featured(),
    const Search(),
    const MyLearning(),
    const WishList(),
    const Account()
  ];

  int currentPage = 0;

  void _changedPage(int index) {
    setState(() {
      currentPage = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    final List<BottomNavigationBarItem> items = [
      BottomNavigationBarItem(
          icon: currentPage == 0
              ? const Icon(Icons.star)
              : const Icon(Icons.star_border_outlined),
          label: "Featured"),
      BottomNavigationBarItem(
          icon: currentPage == 1
              ? const Icon(Icons.search)
              : const Icon(Icons.search_outlined),
          label: "Search"),
      BottomNavigationBarItem(
          icon: currentPage == 2
              ? const Icon(Icons.play_circle_fill)
              : const Icon(Icons.play_circle_outline),
          label: "My Learning"),
      BottomNavigationBarItem(
          icon: currentPage == 3
              ? const Icon(Icons.favorite)
              : const Icon(Icons.favorite_border_outlined),
          label: "Wishlist"),
      BottomNavigationBarItem(
          icon: currentPage == 4
              ? const Icon(Icons.person)
              : const Icon(Icons.person_outline_rounded),
          label: "Account"),
    ];

    return Scaffold(
      body: pages[currentPage],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentPage,
        selectedItemColor: defaultColor,
        type: BottomNavigationBarType.fixed,
        unselectedItemColor: unSelectedColor,
        backgroundColor: bgColor,
        items: items,
        onTap: _changedPage,
      ),
    );
  }
}
