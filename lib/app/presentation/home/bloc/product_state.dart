import 'package:flutter_challenge_bento/app/domain/entities/product_entity.dart';

abstract class ProductState {}

class ProductLoading extends ProductState {}

class ProductLoaded extends ProductState {
  final List<ProductEntity> products;
  ProductLoaded({required this.products});
}

class ProductLoadFailure extends ProductState {}
