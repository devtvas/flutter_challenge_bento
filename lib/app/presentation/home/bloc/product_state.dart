import 'package:flutter_challenge_bento/app/data/models/product_model.dart';

abstract class ProductState {}

class ProductLoading extends ProductState {}

class ProductLoaded extends ProductState {
  final List<ProductModel> products;
  ProductLoaded({required this.products});
}

class ProductLoadFailure extends ProductState {}
