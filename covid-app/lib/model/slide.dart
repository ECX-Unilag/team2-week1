import 'package:flutter/material.dart';

class Slide{
  final String imageUrl;
  final String title;

  Slide({
    @required this.imageUrl,
    @required this.title,
  });
}

final slideList = [
  Slide(imageUrl: "images/facemask.png", title: "wear your face masks"),
  Slide(imageUrl: "images/stay.jpg", title: "Stay at home"),
  Slide(imageUrl: "images/wash.jpg", title: "Wash your hands"),
];