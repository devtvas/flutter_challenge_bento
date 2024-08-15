import 'package:flutter_challenge_bento/app/domain/entities/product_entity.dart';

class ProductModel {
  String? id;
  String? name;
  String? description;
  String? category;
  String? image;
  String? price;

  ProductModel({
    required this.id,
    required this.name,
    required this.description,
    required this.category,
    required this.image,
    required this.price,
  });

  ProductModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    description = json['description'];
    category = json['category'];
    image = json['image'];
    price = json['price'];
  }
}

extension ProductModelX on ProductModel {
  ProductEntity toEntity() {
    return ProductEntity(
      id: id!,
      name: name!,
      description: description!,
      category: category!,
      image: image!,
      price: price!,
    );
  }
}
