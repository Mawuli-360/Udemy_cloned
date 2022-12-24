// ignore_for_file: prefer_const_constructors

import 'package:udemy/Screens/Featured/Components/course_card.dart';

class CardList {
  List<CourseCard> cards = [
    CourseCard(
      image: "asset/images/forex.jpg",
      description: "Intraday trading Forex",
      authorName: "Mr. Zigah",
      rate: "4.1",
      numberOfRate: "6,261",
      price: "100.00",
    ),
    CourseCard(
      image: "asset/images/react.png",
      description: "Intensive react learning",
      authorName: "Mohmad Jacob",
      rate: "4.0",
      numberOfRate: "66,261",
      price: "400.00",
    ),
    CourseCard(
      image: "asset/images/angular.png",
      description: "Learn Angular (Depth)",
      authorName: "Ghajani",
      rate: "4.8",
      numberOfRate: "46,261",
      price: "450.90",
    ),
    CourseCard(
      image: "asset/images/seo.jpg",
      description: "Development SEO",
      authorName: "Fargo Sanju",
      rate: "4.8",
      numberOfRate: "6,261",
      price: "310.00",
    ),
    CourseCard(
      image: "asset/images/node_js.png",
      description: "Backend Development with Node Js",
      authorName: "Raj",
      rate: "5.0",
      numberOfRate: "106,261",
      price: "530.70",
    ),
    CourseCard(
      image: "asset/images/mern.jpg",
      description: "MERN development (Complete Project)",
      authorName: "Dr. Kofi",
      rate: "4.9",
      numberOfRate: "88,361",
      price: "800.00",
    ),
    CourseCard(
      image: "asset/images/dart.png",
      description: "The Complete Mobile Development Bootcamp with Dart",
      authorName: "Nacho Pablo",
      rate: "4.8",
      numberOfRate: "66,261",
      price: "180.00",
    ),
  ];
}
