import 'package:dartz/dartz.dart';
import 'package:flutter_challenge_bento/app/data/sources/products_mock.dart';
import 'package:flutter_challenge_bento/app/domain/entities/product_entity.dart';

import '../models/product_model.dart';

abstract class ProductSource {
  Future<Either> getProducts();
}

// getProducts
class ProductSourceImpl extends ProductSource {
  @override
  Future<Either> getProducts() async {
    List list = products;
    List<ProductEntity> productEntity = [];

    for (final product in list) {
      var productModel = ProductModel.fromJson(product);
      productEntity.add(productModel.toEntity());
    }
    return Right(productEntity);
  }

  // @override
  // Future<Either> getProducts() async {
  //   String baseUrl = dotenv.env['BASE_URL']!;
  //   String endpoint = '/products';
  //   String url = '$baseUrl$endpoint';

  //   final response = await http.get(Uri.parse(url.toString()));

  //   if (response.statusCode == 200) {
  //     final jsonResponse = jsonDecode(response.body);
  //     List<ProductEntity> productEntity = [];

  //     for (final product in jsonResponse) {
  //       var productModel = ProductModel.fromJson(product);
  //       productEntity.add(productModel.toEntity());
  //     }
  //     return Right(productEntity);
  //   } else {
  //     throw Exception('Failed to load products');
  //   }
  // }
}
