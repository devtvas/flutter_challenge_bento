import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:flutter_challenge_bento/app/domain/entities/product_entity.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:http/http.dart' as http;

import '../models/product_model.dart';

abstract class ProductSource {
  Future<Either> getProducts();
}

class ProductSourceImpl extends ProductSource {
  @override
  Future<Either> getProducts() async {
    final url = dotenv.env['BASE_URL'];
    final response = await http.get(Uri.parse(url.toString()));
    List<ProductEntity> productEntity = [];

    if (response.statusCode == 200) {
      final jsonResponse = jsonDecode(response.body);
      for (final product in jsonResponse) {
        var productModel = ProductModel.fromJson(product);
        productEntity.add(productModel.toEntity());
      }
      return Right(productEntity);
    } else {
      throw Exception('Failed to load products');
    }
  }
}
