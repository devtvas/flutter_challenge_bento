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
    AppImages.orderShop1,
    AppImages.orderShop2,
    AppImages.orderShop3,
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
      "name": "Apple",
      "description": "Fresh and crispy apple",
      "category": "Fruits",
      "image": "https://example.com/apple.jpg",
      "price": 2.99
    },
    {
      "id": "2",
      "name": "Milk",
      "description": "Whole long-life milk",
      "category": "Dairy",
      "image": "https://example.com/milk.jpg",
      "price": 4.50
    }
  ];
}
