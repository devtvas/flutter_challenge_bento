import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_challenge_bento/app/domain/usecases/product_usecase.dart';
import 'package:flutter_challenge_bento/app/presentation/home/bloc/product_state.dart';

import '../../../shared/dependencies/dependencies.dart';

class ProductCubit extends Cubit<ProductState> {
  ProductCubit() : super(ProductLoading());

  Future<void> getProducts() async {
    var returnProducts = await dependencies<ProductUseCase>().call();
    returnProducts.fold(
      (l) {
        emit(ProductLoadFailure());
      },
      (data) {
        emit(ProductLoaded(products: data));
      },
    );
  }
}
