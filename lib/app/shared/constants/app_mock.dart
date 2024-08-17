import 'package:flutter_challenge_bento/app/shared/constants/app_icons.dart';
import 'package:flutter_challenge_bento/app/shared/constants/app_images.dart';

class AppMock {
  AppMock._();
  static const orderAgain = [
    AppImages.orderAgain1,
    AppImages.orderAgain2,
    AppImages.orderAgain3,
  ];

  static const localShop = [
    AppImages.localShop1,
    AppImages.localShop2,
    AppImages.localShop3,
  ];

  static const categories = [
    {"name": "Vegan", "icon": AppIcons.vegan},
    {"name": "Meat", "icon": AppIcons.meat},
    {"name": "Fruits", "icon": AppIcons.fruits},
    {"name": "Milk", "icon": AppIcons.milk},
    {"name": "Fish", "icon": AppIcons.fish}
  ];

  static const products = [
    {
      "id": "1",
      "name": "Special Onion",
      "description": "Fresh and crispy orange",
      "category": "Fruits",
      "image": "https://example.com/apple.jpg",
      "price": 5.99,
      "color": "orange"
    },
    {
      "id": "2",
      "name": "Green Cabbage",
      "description": "Whole long-life cabbage",
      "category": "Dairy",
      "image": "https://example.com/milk.jpg",
      "price": 6.90,
      "color": "green"
    },
    {
      "id": "3",
      "name": "Red Berry",
      "description": "Whole long-life berry",
      "category": "Fruits",
      "image": "https://example.com/milk.jpg",
      "price": 6.85,
      "color": "red"
    },
    {
      "id": "4",
      "name": "Organic Lemon",
      "description": "Fresh and crispy lemon",
      "category": "Fruits",
      "image": "https://example.com/chicken.jpg",
      "price": 7.99,
      "color": "yellow"
    }
  ];
}
