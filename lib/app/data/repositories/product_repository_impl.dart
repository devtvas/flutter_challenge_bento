import 'package:dartz/dartz.dart';
import 'package:flutter_challenge_bento/app/shared/dependencies/app_instance.dart';

import '../../domain/repositories/product_repository.dart';
import '../sources/product_source.dart';

class ProductsRepositoryImpl implements ProductsRepository {
  @override
  Future<Either> getProducts() async {
    return await instances<ProductSource>().getProducts();
  }
}
