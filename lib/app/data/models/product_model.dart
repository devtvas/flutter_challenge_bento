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
      name: json['nome'] as String,
      description: json['descricao'] as String,
      category: json['categoria'] as String,
      image: json['imagem'] as String,
      price: json['preco'] as String,
      material: json['material'] as String,
      department: json['departamento'] as String,
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
