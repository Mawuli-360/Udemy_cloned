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

  final List<BottomNavigationBarItem> _items = [
    const BottomNavigationBarItem(
        icon: Icon(Icons.star_border_outlined), label: "Featured"),
    const BottomNavigationBarItem(
        icon: Icon(Icons.search_outlined), label: "Search"),
    const BottomNavigationBarItem(
        icon: Icon(Icons.play_circle_outline), label: "My Learning"),
    const BottomNavigationBarItem(
        icon: Icon(Icons.favorite_border_outlined), label: "Wishlist"),
    const BottomNavigationBarItem(
        icon: Icon(Icons.person_outline_rounded), label: "Account"),
  ];
  int currentPage = 0;

  void _changedPage(int index) {
    setState(() {
      currentPage = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentPage],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentPage,
        selectedItemColor: defaultColor,
        type: BottomNavigationBarType.fixed,
        unselectedItemColor: unSelectedColor,
        backgroundColor: bgColor,
        items: _items,
        onTap: _changedPage,
      ),
    );
  }
}
