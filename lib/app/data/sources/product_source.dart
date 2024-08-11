import 'dart:convert';

import 'package:dartz/dartz.dart';
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

    if (response.statusCode == 200) {
      final jsonResponse = jsonDecode(response.body);
      return jsonResponse.map((json) => ProductModel.fromJson(json)).toList();
    } else {
      throw Exception('Failed to load products');
    }
  }
}
