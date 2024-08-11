class ProductModel {
  final String id;
  final String name;
  final String description;
  final String category;
  final String image;
  final String price;
  final String material;
  final String department;

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

  factory ProductModel.fromJson(Map<String, dynamic> json) {
    return ProductModel(
      id: json['id'] as String,
      name: json['name'] as String,
      description: json['description'] as String,
      category: json['category'] as String,
      image: json['image'] as String,
      price: json['price'] as String,
      material: json['material'] as String,
      department: json['department'] as String,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'description': description,
      'category': category,
      'image': image,
      'price': price,
      'material': material,
      'department': department,
    };
  }
}
