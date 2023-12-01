import 'package:flutter/material.dart';

class Activity {
  String name;
  String description;
  String imageAsset;
  bool isChecked;
  Color backgroundColor;

  Activity({
    required this.name,
    required this.description,
    required this.imageAsset,
    required this.isChecked,
    required this.backgroundColor,
  });
}

var activityList = [
  Activity(
      name: "Water",
      description: "Drink the amount of water your body needs every day",
      imageAsset: "icons/water-bottle.png",
      isChecked: false,
      backgroundColor: const Color.fromRGBO(239, 177, 239, 1)),
  Activity(
      name: "Sport",
      description: "Exercise to maintain daily physical activity",
      imageAsset: "icons/sport.png",
      isChecked: false,
      backgroundColor: const Color.fromRGBO(157, 222, 242, 1)),
  Activity(
      name: "Steps",
      description: "Take your normal steps to maintain daily physical",
      imageAsset: "icons/footprints.png",
      isChecked: false,
      backgroundColor: const Color.fromRGBO(244, 243, 121, 1)),
  Activity(
      name: "Reading",
      description: "Books are windows of knowledge ",
      imageAsset: "icons/book.png",
      isChecked: false,
      backgroundColor: const Color.fromRGBO(239, 177, 239, 1)),
];
