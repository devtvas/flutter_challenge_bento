class ProductModel {
  final String name;

  ProductModel({required this.name});

  static fromJson(json) {
    return ProductModel(
      name: json['name'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'name': name,
    };
  }
}
