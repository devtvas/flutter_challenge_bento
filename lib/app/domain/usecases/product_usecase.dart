import 'package:dartz/dartz.dart';
import 'package:flutter_challenge_bento/app/domain/repositories/product_repository.dart';
import 'package:flutter_challenge_bento/app/shared/dependencies/dependencies.dart';
import 'package:flutter_challenge_bento/app/shared/usecase/usecase.dart';

class ProductUseCase implements UseCase<Either, dynamic> {
  @override
  Future<Either> call({params}) async {
    return dependencies<ProductsRepository>().getProducts();
  }
}
