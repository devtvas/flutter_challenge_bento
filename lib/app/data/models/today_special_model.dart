import 'package:flutter/widgets.dart';

class TodaySpecialOffer {
  final String image;
  final String name;
  final String description;
  final double price;
  final double rating;
  final Color? color;

  TodaySpecialOffer({
    required this.name,
    required this.image,
    required this.rating,
    required this.description,
    required this.price,
    required this.color,
  });
}
