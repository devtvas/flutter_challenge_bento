import 'package:flutter_challenge_bento/app/domain/entities/product_entity.dart';

class ProductModel {
  String? id;
  String? name;
  String? description;
  String? category;
  String? image;
  String? price;
  String? material;
  String? department;

  ProductModel({
    required this.id,
    required this.name,
    required this.description,
    required this.category,
    required this.image,
    required this.price,
    required this.material,
    required this.department,
  });

  ProductModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['nome'];
    description = json['descricao'];
    category = json['categoria'];
    image = json['imagem'];
    price = json['preco'];
    material = json['material'];
    department = json['departamento'];
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
      material: material!,
      department: department!,
    );
  }
}
